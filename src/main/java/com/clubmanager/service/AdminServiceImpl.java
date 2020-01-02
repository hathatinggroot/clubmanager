package com.clubmanager.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.AnnVO;
import com.clubmanager.domain.Criteria;
import com.clubmanager.mapper.AnnMapper;

import lombok.Setter;

@Service
public class AdminServiceImpl implements AdminService {

	@Setter(onMethod_ = @Autowired)
	private AnnMapper annMapper;

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
}
