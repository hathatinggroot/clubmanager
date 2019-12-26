package com.clubmanager.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.clubmanager.config.RootConfig;
import com.clubmanager.config.SecurityConfig;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes= {RootConfig.class, SecurityConfig.class})
@Log4j
public class SampleMapperTest {
	@Setter(onMethod_= {@Autowired})
	private TestMapper testMapper;
	
	@Setter(onMethod_= {@Autowired})
	private MemberMapper memberMapper;
	
//	@Test
	public void testGetTime() {
		log.info(testMapper.getTime());
		
	}
	
	@Test
	public void getClubMembersTest() {
		log.info(memberMapper.getClubMembers("A"));
	}
}
