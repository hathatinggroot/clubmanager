package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/record")
public class RecordController {
	
	@GetMapping("/club_record")
	public void goToClubRecord() {
		log.info("club_record.jsp");
	}
	
	@GetMapping("/club_record_view")
	public void goToClubRecordView() {
		log.info("club_record_view.jsp");
	}
	
	@GetMapping("/personal_record")
	public void goToPersonalRecord() {
		log.info("personal_record.jsp");
	}
	
}
