package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage/")
public class MypageController {

	@GetMapping("/notification")
	public void goToNotification() {
		log.info("notification.jsp");
	}
	@GetMapping("/recruit_status")
	public void goToRecruitStatus() {
		log.info("recruit_status.jsp");
	}
	@GetMapping("/record_status")
	public void goToRecordStatus() {
		log.info("record_status.jsp");
	}
	@GetMapping("/club_owner_main")
	public void goToClubOwnerMain() {
		log.info("club_owner_main.jsp");
	}
}
