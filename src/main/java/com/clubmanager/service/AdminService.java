package com.clubmanager.service;

import java.util.List;

import com.clubmanager.domain.AnnVO;
import com.clubmanager.domain.ClubVO;
import com.clubmanager.domain.Criteria;
import com.clubmanager.domain.pageDTO;

public interface AdminService {
	public List<AnnVO> getAnnList(Criteria cri);
	
	public int getAnnTotalNum(Criteria cri);

	public int insert(AnnVO annVO);
	
	public int modify(AnnVO annVO);
	
	public int delete(AnnVO annVO);
	
	public List<AnnVO> getAnnPopupList();
	
	public List<ClubVO> getClubList(Criteria cri);
	
	public pageDTO getClubPaginator(Criteria cri);
	
	public boolean clubIn(String clubCode);
	
	public boolean clubOut();
	
	public boolean delClub(String clubCode);
}
