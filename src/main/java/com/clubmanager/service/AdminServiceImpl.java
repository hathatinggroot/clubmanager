package com.clubmanager.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.AnnVO;
import com.clubmanager.domain.ClubVO;
import com.clubmanager.domain.Criteria;
import com.clubmanager.domain.pageDTO;
import com.clubmanager.mapper.AnnMapper;
import com.clubmanager.mapper.ClubMapper;
import com.clubmanager.mapper.MemberMapper;

import lombok.Setter;

@Service
public class AdminServiceImpl implements AdminService {

	@Setter(onMethod_ = @Autowired)
	private AnnMapper annMapper;
	
	@Setter(onMethod_ = @Autowired)
	private ClubMapper clubMapper;
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper memberMapper;

	@Override
	public List<AnnVO> getAnnList(Criteria cri) {

		List<AnnVO> annList = new ArrayList<>();

		annList = annMapper.getAnnList(cri);
		return annList;
	}

	@Override
	public int getAnnTotalNum(Criteria cri) {
		return annMapper.getAnnTotalNum(cri);
	}

	@Override
	public int insert(AnnVO annVO) {
		return annMapper.insert(annVO);
	}

	@Override
	public int modify(AnnVO annVO) {
		return annMapper.modify(annVO);
	}

	@Override
	public int delete(AnnVO annVO) {
		return annMapper.delete(annVO);
	}

	@Override
	public List<AnnVO> getAnnPopupList() {
		return annMapper.getAnnPopupList();
	}
	
	@Override
	public List<ClubVO> getClubList(Criteria cri) {
		List<ClubVO> clubList = clubMapper.getClubList(cri);
		
		return clubList;
	}
	
	@Override
	public pageDTO getClubPaginator(Criteria cri) {
		pageDTO paginator = new pageDTO(clubMapper.getTotalNum(cri), cri);
		return paginator;
	}
	
	@Override
	public boolean clubIn(String clubCode) {
		if(memberMapper.clubIn(clubCode)==1) {
			return true;
		}
		
		return false;
	}
	
	@Override
	public boolean clubOut() {
		if(memberMapper.clubOut()==1) {
			return true;
		}
		
		return false;
	}
	
	@Override
	public boolean delClub(String clubCode) {
		if(clubMapper.delClub(clubCode)==1) return true;
		return false;
	}
}
