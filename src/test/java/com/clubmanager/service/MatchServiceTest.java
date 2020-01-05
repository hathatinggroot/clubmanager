package com.clubmanager.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.clubmanager.config.RootConfig;
import com.clubmanager.config.SecurityConfig;
import com.clubmanager.domain.MatchVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {RootConfig.class, SecurityConfig.class})
@Log4j
public class MatchServiceTest {
	@Setter(onMethod_= @Autowired)
	private MatchService matchService;
	
//	@Test
//	public void registerTest() {
//		MatchVO mvo = new MatchVO();
//		
//		mvo.setClubCode("A");
//		mvo.setApposingTeam("test");
//		mvo.set
//	}
	
	@Test
	public void getPlannedListTest() {
		log.info("getPlannedListTest..........");
		List<MatchVO> matchList = matchService.getPlannedList("A");
		
		log.info("matchList : " +matchList);
	}
}
