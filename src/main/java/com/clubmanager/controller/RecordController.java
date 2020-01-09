package com.clubmanager.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clubmanager.domain.ClubStatisticDTO;
import com.clubmanager.service.StatisticService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/record")
public class RecordController {
	
	@Setter(onMethod_= @Autowired)
	private StatisticService statisticService;
	
	@GetMapping("/club_record")
	public void goToClubRecord(@Param("clubCode") String clubCode, Model model) {
		log.info("club_record.jsp clubCode : " + clubCode);
		
		ClubStatisticDTO csDTO = statisticService.getClubStatistics(clubCode);
		
		model.addAttribute("csDTO", csDTO);
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
