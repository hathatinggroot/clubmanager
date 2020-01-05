package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/liveboard")
public class LiveBoardController {
	
	@GetMapping("/list")
	public void goToLiveBoardList() {
		log.info("list.jsp");
	}
	@GetMapping("/write")
	public void goToLiveBoardWrite() {
		log.info("write.jsp");
	}
}
