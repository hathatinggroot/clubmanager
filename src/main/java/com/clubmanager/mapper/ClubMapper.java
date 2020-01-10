package com.clubmanager.mapper;

import java.util.List;

import com.clubmanager.domain.ClubVO;
import com.clubmanager.domain.Criteria;

public interface ClubMapper {
	public ClubVO get(String clubCode);
	
	public int insert(ClubVO clubVO);
	
	public int modify(ClubVO clubVo);
	
	public int chOwner(ClubVO clubVO);
	
	public List<ClubVO> getClubList(Criteria cri);
	
	public int getTotalNum(Criteria cri);
	
	public int delClub(String clubCode);
}
