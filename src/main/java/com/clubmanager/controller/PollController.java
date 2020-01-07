package com.clubmanager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clubmanager.domain.PollPartVO;
import com.clubmanager.domain.PollStatusDTO;
import com.clubmanager.service.MatchService;
import com.clubmanager.service.PollService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/poll")
public class PollController {
	
	@Setter(onMethod_=@Autowired)
	private MatchService matchService;
	
	@Setter(onMethod_=@Autowired)
	private PollService pollService;
	
	
	@GetMapping("/participate_list")
	public void goToParticipateList(String clubCode, Model model) {
		log.info("participate_list.jsp clubCode : " + clubCode);
		
		List<PollPartVO> ppList = pollService.getPPList(clubCode);

		ppList.forEach(ppVO->{
			ppVO.setMatchVO(matchService.get(ppVO.getMatchNo()));
			ppVO.setPsList(pollService.getPSList(ppVO));
		});
		
		
		model.addAttribute("ppList", ppList);
	}
	
	@GetMapping(value="/getPP/{clubCode}/{matchNo}", produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public PollPartVO getPP(@PathVariable("clubCode") String clubCode, @PathVariable("matchNo") Integer matchNo) {
		log.info("getPP clubCode : " + clubCode);
		log.info("getPP matchNo : " + matchNo);
		
		PollPartVO ppVO = pollService.getPP(clubCode, matchNo);
		ppVO.setMatchVO(matchService.get(ppVO.getMatchNo()));
		ppVO.setPsList(pollService.getPSList(ppVO));
		log.info("getPP ppVO : "+ppVO);
		
		return ppVO;
	}
	
	@PutMapping(value="/vote",consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String vote(@RequestBody PollStatusDTO psDTO) {
		log.info("vote psDTO : " + psDTO);
		
		if(pollService.vote(psDTO)) return "success";
		
		return "fail";
	}
	
	@PutMapping(value="/modifyPP",consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String modifyPP(@RequestBody PollPartVO ppVO) {
		log.info("modifyPP ppVO : " + ppVO);
		
		if(pollService.modifyPP(ppVO)) return "success";
		
		return "fail";
	}
	
	@GetMapping("/mom")
	public void goToMoM() {
		log.info("mom.jsp");
	}
}
