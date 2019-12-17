package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/freeboard")
public class FreeBoardController {

	@GetMapping("/list")
	public void goToList() {
		log.info("list.jsp");
	}
	@GetMapping("/write")
	public void goToWrite() {
		log.info("write.jsp");
	}
	@GetMapping("/view")
	public void goToView() {
		log.info("view.jsp");
	}
	@GetMapping("/modify")
	public void goToModify() {
		log.info("modify.jsp");
	}
}
