package com.clubmanager.mapper;

import java.util.List;

import com.clubmanager.domain.Criteria;
import com.clubmanager.domain.MatchVO;

public interface MatchMapper {
	
	public int insert(MatchVO matchVO);
	
	public List<MatchVO> getList(String clubCode);
	
	public int modify(MatchVO matchVO);
	
	public int delete(int matchNo);
	
	public MatchVO get(int matchNo);
	
	public int chStat(MatchVO matchVO);
	
	public List<MatchVO> getListWithPaging(Criteria cri);
}
