package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin")
public class AdminController {
	
	
	
	@GetMapping("/clubs_list")
	public void goToClubsList() {
		log.info("clubs_list.jsp");
	}
	
	@GetMapping("/announcements_list")
	public void goToAnnouncementsList() {
		log.info("announcements_list.jsp");
	}
}