package com.clubmanager.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.clubmanager.config.RootConfig;
import com.clubmanager.config.SecurityConfig;
import com.clubmanager.domain.ClubVO;
import com.clubmanager.domain.MemberVO;
import com.clubmanager.mapper.ClubMapper;
import com.clubmanager.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {RootConfig.class, SecurityConfig.class})
@Log4j
public class CommonServiceTest {

	@Setter(onMethod_= {@Autowired})
	private CommonService commonService;
	
	@Setter(onMethod_= {@Autowired})
	private ClubMapper clubMapper;
	
	@Setter(onMethod_= {@Autowired})
	private MemberMapper memberMapper;
	
	
//	@Test
	public void regClubTest() {
		ClubVO cvo = new ClubVO();
		cvo.setClubName("테스트");
		cvo.setClubCode("ABCD");
		cvo.setOwnerId("test");
		
		int result = commonService.regClub(cvo);
		log.info("result : "+result);
	}
	
	@Test
	public void joinMemberTest() {
		MemberVO mvo = new MemberVO();
		mvo.setUserId("테스트");
		mvo.setUserPw("ABCD");
		mvo.setUserName("test");
		mvo.setAuth("ROLE_OWNER");
		mvo.setClubCode("ABCDEFG");
		
		int result = commonService.join(mvo);
		log.info("result : "+result);
	}
	
	
}
