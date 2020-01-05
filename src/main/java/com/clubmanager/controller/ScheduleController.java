package com.clubmanager.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clubmanager.domain.MatchVO;
import com.clubmanager.service.MatchService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/schedule")
public class ScheduleController {
	
	@Setter(onMethod_=@Autowired)
	private MatchService matchService;
	
	@GetMapping("/list")
	public void getMatchList(@Param("clubCode") String clubCode, Model model) {
		log.info("list.jsp clubCode : " + clubCode);
		
		List<MatchVO> matchList = 
		matchService.getPlannedList(clubCode);
		
		log.info(matchList);
	}
	
	@PostMapping(value = "/register", consumes="application/json", produces = {MediaType.TEXT_PLAIN_VALUE} )
	@ResponseBody
	public String register(@RequestBody MatchVO matchVO) {
		log.info("register.........matchVO : " + matchVO);
		log.info("register.........pollTime : " + matchVO.getPollTime());
		
		if(matchService.register(matchVO)) {
			return "success";
		}
		
		return "fail";
	}
	
	
	
	@GetMapping("/view")
	public void goToView() {
		log.info("view.jsp");
	}
}
