package com.clubmanager.mapper;

import java.util.List;

import com.clubmanager.domain.MatchVO;

public interface MatchMapper {
	
	public int insert(MatchVO matchVO);
	
	public List<MatchVO> getList(String clubCode);
}
