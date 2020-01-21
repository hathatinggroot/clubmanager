package com.clubmanager.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clubmanager.domain.MatchVO;
import com.clubmanager.domain.PersonalRecordDTO;
import com.clubmanager.service.MatchService;
import com.clubmanager.service.RecordService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/schedule")
public class ScheduleController {
	
	@Setter(onMethod_=@Autowired)
	private MatchService matchService;
	
	@Setter(onMethod_=@Autowired)
	private RecordService recordService;
	
	
	@GetMapping("/list")
	public void getMatchList(@Param("clubCode") String clubCode, Model model) {
		log.info("list.jsp clubCode : " + clubCode);
		
		if (clubCode==null) {
			
		}
		
		List<MatchVO> matchList = new ArrayList<>();
		List<PersonalRecordDTO> prList = new ArrayList<>();
		
		
		matchList = matchService.getPlannedList(clubCode);
		if(matchList.size()>0) {
			prList= recordService.getPRList(matchList.get(0).getMatchNo());
		}
		
		log.info(matchList);
		
		model.addAttribute("matchList", matchList);
		model.addAttribute("prList", prList);
	}
	
	@PostMapping(value = "/match", consumes="application/json", produces = {MediaType.TEXT_PLAIN_VALUE} )
	@ResponseBody
	public String register(@RequestBody MatchVO matchVO) {
		log.info("register.........matchVO : " + matchVO);
		log.info("register.........pollTime : " + matchVO.getPollTime());
		
		if(matchService.register(matchVO)) {
			return "success";
		}
		
		return "fail";
	}
	
	@PutMapping(value = "/match", consumes="application/json", produces = {MediaType.TEXT_PLAIN_VALUE} )
	@ResponseBody
	public String modify(@RequestBody MatchVO matchVO) {
		log.info("modify.........matchVO : " + matchVO);
		
		if(matchService.modify(matchVO)) {
			return "success";
		}
		
		return "fail";
	}
	
	@DeleteMapping(value="/match/{matchNo}", produces= {MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String delete(@PathVariable("matchNo") int matchNo) {
		log.info("delete.........matchNo : " + matchNo);
		if(matchService.delete(matchNo)) {
			return "success";
		}
		
		
		return "fail";
	}
	
	
	@GetMapping("/view")
	public void goToView() {
		log.info("view.jsp");
	}
}
