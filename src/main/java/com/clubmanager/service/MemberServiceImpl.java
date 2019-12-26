package com.clubmanager.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.MemberVO;
import com.clubmanager.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_= {@Autowired})
	private MemberMapper memberMapper;
	
	@Override
	public List<MemberVO> getClubMembers(String clubCode) {
		List<MemberVO> memberList = new ArrayList<>();
		memberList = memberMapper.getClubMembers(clubCode);
		return memberList;
	}

	@Override
	public int modifyAuth(MemberVO memberVO) {
		return memberMapper.modifyAuth(memberVO);
		
	}
	
	@Override
	public int dismiss(String userId) {
		return memberMapper.dismiss(userId);
	}
}
