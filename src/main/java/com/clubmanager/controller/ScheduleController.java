package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/schedule")
public class ScheduleController {
	
	
	
	@GetMapping("/list")
	public void goToList() {
		log.info("list.jsp");
	}
	
	@GetMapping("/view")
	public void goToView() {
		log.info("view.jsp");
	}
}
