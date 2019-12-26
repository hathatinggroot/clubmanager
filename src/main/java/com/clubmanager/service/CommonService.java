package com.clubmanager.service;

import com.clubmanager.domain.ClubVO;
import com.clubmanager.domain.MemberVO;

public interface CommonService {
	
	public MemberVO getMember(String userId);
	
	public ClubVO getClub(String clubCode);
	
	public int join(MemberVO memberVO);
	
	public int regClub(ClubVO clubVO);
	
	public int modify(MemberVO memberVO, ClubVO clubVO);
	
	public int chOwner(ClubVO clubVO);
}
