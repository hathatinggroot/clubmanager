package com.clubmanager.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.clubmanager.config.RootConfig;
import com.clubmanager.config.SecurityConfig;
import com.clubmanager.config.ServletConfig;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes= {RootConfig.class, SecurityConfig.class, ServletConfig.class})
@Log4j
public class CommonControllerTest {
	
	@Setter(onMethod_= {@Autowired})
	private WebApplicationContext webApplicationContext;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
	}
	
	@Test
	public void testGetClubMembers() throws Exception{
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/club_members")
						.param("clubCode", "A"))
						.andReturn()
						.getModelAndView()
						.getModelMap()
				);
	}
	
	
	
}
