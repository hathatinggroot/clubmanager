package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/poll")
public class PollController {
	@GetMapping("/participate_list")
	public void goToParticipateList() {
		log.info("participate_list.jsp");
	}
	@GetMapping("/mom")
	public void goToMoM() {
		log.info("mom.jsp");
	}
}
