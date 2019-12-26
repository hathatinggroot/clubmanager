package com.clubmanager.service;

import java.util.List;

import com.clubmanager.domain.MemberVO;

public interface MemberService {
	public List<MemberVO> getClubMembers(String clubCode);
	
	public int modifyAuth(MemberVO memberVO);
	
	public int dismiss(String userId);
}
