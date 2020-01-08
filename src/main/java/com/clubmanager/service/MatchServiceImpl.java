package com.clubmanager.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.clubmanager.domain.MatchVO;
import com.clubmanager.domain.PollPartVO;
import com.clubmanager.domain.PollStatusDTO;
import com.clubmanager.mapper.MatchMapper;
import com.clubmanager.mapper.MemberMapper;
import com.clubmanager.mapper.PollMapper;
import com.clubmanager.mapper.RecordMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MatchServiceImpl implements MatchService {

	@Setter(onMethod_ = @Autowired)
	private MatchMapper matchMapper;

	@Setter(onMethod_ = @Autowired)
	private PollMapper pollMapper;
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper memberMapper;
	
	@Setter(onMethod_ = @Autowired)
	private RecordMapper recordMapper;

	@Transactional
	@Override
	public boolean register(MatchVO matchVO) {
		int result1 = matchMapper.insert(matchVO);

		PollPartVO ppVO = new PollPartVO();
		ppVO.setMatchNo(matchVO.getMatchNo());
		Long pDate = matchVO.getMatchDate().getTime() - (matchVO.getPollTime() * 1000 * 60 * 60 * 24);
		ppVO.setEndDate(new Date(pDate));
		ppVO.setClubCode(matchVO.getClubCode());
		log.warn("ppVO ............ : " + ppVO);

		int result2 = pollMapper.insertPP(ppVO);

		memberMapper.getClubMembers(matchVO.getClubCode())
					.forEach(memberVO->{
						PollStatusDTO psDTO = new PollStatusDTO();
						psDTO.setMatchNo(matchVO.getMatchNo());
						psDTO.setUserId(memberVO.getUserId());
						psDTO.setUserName(memberVO.getUserName());
						psDTO.setPollType(1);
						pollMapper.insertPS(psDTO);
					});
		
		
		if (result1 * result2 == 1) {
			return true;
		}
		return false;
	}

	@Override
	public List<MatchVO> getPlannedList(String clubCode) {
		List<MatchVO> matchList = new ArrayList<MatchVO>();

		matchList = matchMapper.getList(clubCode).stream().filter(attach -> attach.getMatchStatus() < 2)
				.collect(Collectors.toList());

		return matchList;
	}
	
	@Override
	public List<MatchVO> getConfirmedList(String clubCode) {
		List<MatchVO> matchList = new ArrayList<MatchVO>();

		matchList = matchMapper.getList(clubCode).stream().filter(attach -> attach.getMatchStatus() == 1)
				.collect(Collectors.toList());

		return matchList;
	}
	

	@Override
	public boolean modify(MatchVO matchVO) {
		int result = matchMapper.modify(matchVO);
		
		if(matchVO.getMatchStatus()==1) {
			
			recordMapper.insertMR(matchVO.getMatchNo());
		}
		
		
		if (result == 1) {
			return true;
		}
		return false;
	}

	@Transactional
	@Override
	public boolean delete(int matchNo) {
		int result1 = matchMapper.delete(matchNo);

		int result2 = pollMapper.deletePP(matchNo);

		if (result1 * result2 == 1) {
			return true;
		}
		return false;
	}
	
	@Override
	public MatchVO get(int matchNo) {
		return matchMapper.get(matchNo);
	}
}
