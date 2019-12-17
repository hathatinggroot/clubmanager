package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/tactics")
public class TacticsController {
	
	
	
	@GetMapping("/liveboard_list")
	public void goToLiveBoardList() {
		log.info("liveboard_list.jsp");
	}
	@GetMapping("/liveboard_write")
	public void goToLiveBoardWrite() {
		log.info("liveboard_write.jsp");
	}
	@GetMapping("/lineup_list")
	public void goToLineupList() {
		log.info("lineup_list.jsp");
	}
	@GetMapping("/lineup_write")
	public void goToLineupWrite() {
		log.info("lineup_write.jsp");
	}
	
}
