package com.clubmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/recruit/")
public class RecruitController {
	
	@GetMapping("/recruit_loan_list")
	public void goToLoanList() {
		log.info("noexist.jsp");
	}
	
	@GetMapping("/recruit_loan_content_view")
	public void goToLoanContentView() {
		log.info("recruit_loan_content_view.jsp");
	}
	@GetMapping("/recruit_transfer_list")
	public void goToTransferList() {
		log.info("recruit_transfer_list.jsp");
	}
	@GetMapping("/recruit_transfer_content_view")
	public void goToTransferContentView() {
		log.info("recruit_transfer_content_view.jsp");
	}
}
