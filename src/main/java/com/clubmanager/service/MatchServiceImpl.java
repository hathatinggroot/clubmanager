package com.clubmanager.service;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.MatchVO;
import com.clubmanager.mapper.MatchMapper;

import lombok.Setter;

@Service
public class MatchServiceImpl implements MatchService {
	
	@Setter(onMethod_=@Autowired)
	private MatchMapper matchMapper;
	
	@Override
	public boolean register(MatchVO matchVO) {
		int result = matchMapper.insert(matchVO);
		
		if(result==1) {
			return true;
		}
		return false;
	}
	
	@Override
	public List<MatchVO> getPlannedList(String clubCode) {
		List<MatchVO> matchList = new ArrayList<MatchVO>();
		
//		matchList = matchMapper.getList(clubCode);
		
		matchList = matchMapper.getList(clubCode).stream()
				 .filter(attach -> attach.getMatchStatus()>0)
				 .collect(Collectors.toList());
		
		return matchList;
	}
}
