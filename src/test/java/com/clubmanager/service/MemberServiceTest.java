package com.clubmanager.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.clubmanager.config.RootConfig;
import com.clubmanager.config.SecurityConfig;
import com.clubmanager.config.ServletConfig;
import com.clubmanager.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {RootConfig.class, SecurityConfig.class})
@Log4j
public class MemberServiceTest {
	
	@Setter(onMethod_=@Autowired)
	private MemberService memberService;
	
//	@Test
	public void getClubMembersTest() {
		List<MemberVO> memberList = memberService.getClubMembers("A");
		
		log.info(memberList);
	}
	
	@Test
	public void modfiyAuthTest() {
		MemberVO memberVO = new MemberVO();
		memberVO.setAuth("ROLE_MANAGER");
		memberVO.setUserId("memberA3");
		
		log.info(memberService.modifyAuth(memberVO));
		
		
	}
}
