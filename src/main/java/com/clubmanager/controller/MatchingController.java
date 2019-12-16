package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/matching/")
public class MatchingController {
	
	@GetMapping("/matching_list")
	public void goToMatchingList() {
		log.info("matching_list.jsp");
	}
	@GetMapping("/matching_content_view")
	public void goToMatchingContentView() {
		log.info("matching_content_view.jsp");
	}
}
