package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/club/")
public class ClubController {
	
	@GetMapping("/noexist")
	public void goToNoExist() {
		log.info("noexist.jsp");
	}
	@GetMapping("/myclubinfo")
	public void goToMyClubInfo() {
		log.info("myclubinfo.jsp");
	}
	@GetMapping("/myclub_match_choice")
	public void goToMyclubMatchChoice() {
		log.info("myclub_match_choice.jsp");
	}
	@GetMapping("/myclub_match_record")
	public void goToMyclubMatchRecord() {
		log.info("myclub_match_record.jsp");
	}
	@GetMapping("/myclub_match_record_write")
	public void goToMyclubMatchWrite() {
		log.info("myclub_match_record_write.jsp");
	}
}
