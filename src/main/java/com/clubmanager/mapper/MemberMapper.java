package com.clubmanager.mapper;

import java.util.List;

import com.clubmanager.domain.MemberVO;

public interface MemberMapper {
	public MemberVO get(String userId);
	
	public int insert(MemberVO memberVO);
	
	public int modify(MemberVO memberVO);
	
	public List<MemberVO> getClubMembers(String clubCode);
	
	public int modifyAuth(MemberVO memberVO);
	
	public int dismiss(String userId);
}
