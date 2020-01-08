package com.clubmanager.service;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.clubmanager.config.RootConfig;
import com.clubmanager.config.SecurityConfig;
import com.clubmanager.domain.PollMoMVO;
import com.clubmanager.domain.PollPartVO;
import com.clubmanager.mapper.PollMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {RootConfig.class, SecurityConfig.class})
@Log4j
public class PollServiceTest {
	@Setter(onMethod_= @Autowired)
	private PollService pollService;
	

	@Setter(onMethod_= @Autowired)
	private PollMapper pollmapper;
	
//	@Test
	public void getPPTest() {
		PollPartVO ppVO = pollmapper.getPP("A", 16);
		log.info(ppVO);
		
	}
	
	
//	@Test
	public void getPSListTest() {
		PollPartVO ppVO = pollmapper.getPP("A", 16);
		log.info(pollService.getPSList(16, 1));
	}
	
	@Test
	public void insertPMTest() {
		Date endDate = new Date();
		endDate = new Date(endDate.getTime()+(1000*60*60*24));
		log.info("endDate ........ "+ endDate );
		PollMoMVO pmVO = new PollMoMVO();
		pmVO.setClubCode("A");
		pmVO.setEndDate(endDate);
		pmVO.setMatchNo(16);
		log.info("pmVO........."+pmVO);
		pollmapper.insertPM(pmVO);
	}
}
