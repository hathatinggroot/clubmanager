package com.clubmanager.service;

import java.util.List;

import com.clubmanager.domain.AnnVO;
import com.clubmanager.domain.Criteria;

public interface AdminService {
	public List<AnnVO> getAnnList(Criteria cri);
	
	public int getAnnTotalNum(Criteria cri);

	public int insert(AnnVO annVO);
	
	public int modify(AnnVO annVO);
	
	public int delete(AnnVO annVO);
	
	public List<AnnVO> getAnnPopupList();
}
