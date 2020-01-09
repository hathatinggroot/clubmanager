package com.clubmanager.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.clubmanager.domain.MatchRecordVO;
import com.clubmanager.domain.MatchVO;
import com.clubmanager.domain.PersonalRecordDTO;
import com.clubmanager.domain.PollMoMVO;
import com.clubmanager.domain.PollStatusDTO;
import com.clubmanager.mapper.MatchMapper;
import com.clubmanager.mapper.MemberMapper;
import com.clubmanager.mapper.PollMapper;
import com.clubmanager.mapper.RecordMapper;

import lombok.Setter;

@Service
public class RecordServiceImpl implements RecordService {
	@Setter(onMethod_=@Autowired)
	private RecordMapper recordMapper;
	
	@Setter(onMethod_=@Autowired)
	private MatchMapper matchMapper;
	
	@Setter(onMethod_=@Autowired)
	private PollMapper pollMapper;
	
	@Setter(onMethod_=@Autowired)
	private MemberMapper memberMapper;
	
	@Override
	public boolean attendMatch(PersonalRecordDTO prDTO) {
		int result = recordMapper.insertPR(prDTO);
		
		if(result == 1) {
			return true;
		}
		return false;
	}
	
	@Override
	public List<PersonalRecordDTO> getPRList(int matchNo) {
		List<PersonalRecordDTO> prList = new ArrayList<>();
		
		prList = recordMapper.getPRList(matchNo);
		
		return prList;
	}
	
	@Override
	public MatchRecordVO getMR(int matchNo) {
		MatchRecordVO mrVO = new MatchRecordVO();
		
		mrVO = recordMapper.getMR(matchNo);
		mrVO.setPrDTOList(getPRList(matchNo));
		
		
		return mrVO;
	}
	
	@Override
	public boolean writeScore(PersonalRecordDTO prDTO) {
		
		if(recordMapper.modifyPR(prDTO)==1) {
			return true;
		}
		
		return false;
	}
	
	@Override
	public boolean modifyMR(MatchRecordVO mrVO) {
		MatchVO matchVO = new MatchVO();
		matchVO.setMatchStatus(1);
		matchVO.setMatchRecordStatus(1);
		matchVO.setMatchNo(mrVO.getMatchNo());
		matchMapper.chStat(matchVO);
		
		if(recordMapper.modifyMR(mrVO)==1) {
			return true;
		}
		
		return false;
	}
	
	@Transactional
	@Override
	public boolean endMatch(int matchNo, String clubCode) {
		//Part 투표 삭제
		pollMapper.deletePS(matchNo, 1);
		pollMapper.deletePP(matchNo);
		
		
		
		
		
		//MoM 투표 등록
		PollMoMVO pmVO = new PollMoMVO();
		pmVO.setMatchNo(matchNo);
		pmVO.setClubCode(clubCode);
		Date endDate = new Date(new Date().getTime()+(1000*60*60*6));
		pmVO.setEndDate(endDate);
		int result1 = pollMapper.insertPM(pmVO);
		
		recordMapper.getPRList(matchNo)
		.forEach(prVO->{
			PollStatusDTO psDTO = new PollStatusDTO();
			psDTO.setMatchNo(matchNo);
			psDTO.setUserId(prVO.getUserId());
			psDTO.setUserName(prVO.getUserName());
			psDTO.setPollType(2);
			pollMapper.insertPS(psDTO);
		});
		
		
		//매치 진행상태 변경
		MatchVO matchVO = new MatchVO();
		matchVO.setMatchNo(matchNo);
		matchVO.setMatchStatus(2);
		matchVO.setMatchRecordStatus(2);
		int result2 = matchMapper.chStat(matchVO);
		
		
		if(result1*result2==1) return true;
		
		return false;
	}
}
