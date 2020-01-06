package com.clubmanager.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.PollPartVO;
import com.clubmanager.domain.PollStatusDTO;
import com.clubmanager.mapper.PollMapper;

import lombok.Setter;


@Service
public class PollServiceImpl implements PollService {
	@Setter(onMethod_=@Autowired)
	private PollMapper pollMapper;
	
	@Override
	public List<PollPartVO> getPPList(String clubCode) {
		return pollMapper.getPPList(clubCode);
	}
	
	@Override
	public List<PollStatusDTO> getPSList(PollPartVO ppVO) {
		List<PollStatusDTO> psDTOList = new ArrayList<>();
		
		psDTOList = pollMapper.getPSList(ppVO);
		return psDTOList;
	}
	
	@Override
	public PollPartVO getPP(String clubCode, int matchNo) {
		return pollMapper.getPP(clubCode, matchNo);
	}

}
