package com.clubmanager.mapper;

import com.clubmanager.domain.MemberVO;

public interface MemberMapper {
	public MemberVO get(String userId);
	
	public int insert(MemberVO memberVO);
	
	public int modify(MemberVO memberVO);
}
