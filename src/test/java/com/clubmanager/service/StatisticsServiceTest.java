package com.clubmanager.service;

import java.util.HashMap;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.clubmanager.config.RootConfig;
import com.clubmanager.config.SecurityConfig;
import com.clubmanager.domain.PersonalStatisticsDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {RootConfig.class, SecurityConfig.class})
@Log4j
public class StatisticsServiceTest {
	@Setter(onMethod_= @Autowired)
	private StatisticService statisticService;
	
//	@Test
	public void getPersonalStatisticsTest() {
		PersonalStatisticsDTO result = new PersonalStatisticsDTO();
		
		result = statisticService.getPersonalStatistics("ownerA");
		
		log.info(result);
		
	}

	@Test
	public void getRankerTest() {
		HashMap<String, List<PersonalStatisticsDTO>> result = new HashMap<String, List<PersonalStatisticsDTO>>();
		
		
		result = statisticService.getRanker("A");
		
		log.info(result.get("total"));
		log.info(result.get("mom"));
		log.info(result.get("goal"));
		log.info(result.get("assist"));
		log.info(result.get("save"));
		
	}
	
}
