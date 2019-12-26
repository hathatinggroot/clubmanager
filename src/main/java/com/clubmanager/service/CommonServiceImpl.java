package com.clubmanager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.ClubVO;
import com.clubmanager.domain.MemberVO;
import com.clubmanager.mapper.ClubMapper;
import com.clubmanager.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CommonServiceImpl implements CommonService {

	@Setter(onMethod_= {@Autowired})
	private MemberMapper memberMapper;
	
	@Setter(onMethod_= {@Autowired})
	private ClubMapper clubMapper;
	
	@Setter(onMethod_ = { @Autowired })
	private PasswordEncoder passwordEncoder;
	
	@Override
	public MemberVO getMember(String userId) {
		log.info("getMember........"+userId);
		MemberVO memberVO = memberMapper.get(userId);
		log.info("memberVO : " + memberVO);
		return memberVO;
	}

	@Override
	public ClubVO getClub(String clubCode) {
		log.info("getClub........"+clubCode);
		ClubVO clubVO = clubMapper.get(clubCode);
		log.info("clubVO : " + clubVO);
		return clubVO;
	}
	
	@Override
	public int join(MemberVO memberVO) {
		memberVO.setUserPw(passwordEncoder.encode(memberVO.getUserPw()));
		int result = memberMapper.insert(memberVO);
		
		return result;
	}
	
	@Override
	public int regClub(ClubVO clubVO) {
		int result = clubMapper.insert(clubVO);
		
		return result;
	}
	
	@Override
	public int modify(MemberVO memberVo, ClubVO clubVo) {

		int result1 = memberMapper.modify(memberVo);
		int result2 = clubMapper.modify(clubVo);
		log.warn("result : " + result1*result2);
		return result1*result2;
	}
	
	@Override
	public int chOwner(ClubVO clubVO) {
		ClubVO cvo = getClub(clubVO.getClubCode());
		MemberVO mvo = getMember(cvo.getOwnerId());
		mvo.setAuth("ROLE_MANAGER");
		memberMapper.modifyAuth(mvo);
		
		clubMapper.chOwner(clubVO);
		return 0;
	}
}
