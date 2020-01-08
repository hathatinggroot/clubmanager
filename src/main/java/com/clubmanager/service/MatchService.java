package com.clubmanager.service;

import java.util.List;

import com.clubmanager.domain.MatchVO;

public interface MatchService {
	
	public boolean register(MatchVO matchVO);
	
	public List<MatchVO> getPlannedList(String clubCode);
	
	public List<MatchVO> getConfirmedList(String clubCode);
	
	public boolean modify(MatchVO matchVO);
	
	public boolean delete(int matchNo);
	
	public MatchVO get(int matchNo);
}
