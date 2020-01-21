package com.clubmanager.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clubmanager.domain.MatchRecordVO;
import com.clubmanager.domain.MatchVO;
import com.clubmanager.domain.PersonalRecordDTO;
import com.clubmanager.service.MatchService;
import com.clubmanager.service.RecordService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/liveboard")
@PreAuthorize("hasAnyRole('ROLE_OWNER', 'ROLE_ADMIN', 'ROLE_MANAGER')")
public class LiveBoardController {
	
	@Setter(onMethod_= @Autowired)
	private MatchService matchService;
	
	@Setter(onMethod_= @Autowired)
	private RecordService recordService;
	
	@GetMapping("/list")
	public void goToLiveBoardList(@Param("clubCode") String clubCode, Model model) {
		log.info("list.jsp");
		List<MatchVO> matchList = new ArrayList<>();
		matchList = matchService.getConfirmedList(clubCode);
		
		model.addAttribute("matchList", matchList);
	}
	@GetMapping("/write")
	public void goToLiveBoardWrite(@Param("matchNo") Integer matchNo,Model model) {
		log.info("write.jsp  matchNo : "+matchNo);
		
		MatchVO matchVO = matchService.get(matchNo);
		
		List<PersonalRecordDTO> prList 
			= recordService.getPRList(matchNo);
		
		model.addAttribute("matchVO", matchVO);
		model.addAttribute("prList", prList);
		
		log.info("write...... matchVO : " + matchVO);
		log.info("write...... prList : " + prList);
	}
	
	@GetMapping(value="/matchrecord/{matchNo}", produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public MatchRecordVO get(@PathVariable("matchNo") Integer matchNo) {
		log.info("get  matchNo : "+matchNo);
		
		MatchRecordVO mrVO = new MatchRecordVO();
		mrVO = recordService.getMR(matchNo);
		
		log.info("get  mrVO : "+mrVO);
		
		return mrVO;
	}
	
	@PutMapping(value="/personalrecord", produces= {MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String writeScore(@RequestBody PersonalRecordDTO prDTO) {
		log.info("writeScore  prDTO : "+prDTO);
		
		if(recordService.writeScore(prDTO)) {
			return "success";
		}
		
		return "fail";
	}
	
	@PutMapping(value="/matchrecord", produces= {MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String modifyMR(@RequestBody MatchRecordVO mrVO) {
		log.info("modifyMR  mrVO : "+mrVO);
		
		if(recordService.modifyMR(mrVO)) {
			return "success";
		}
		
		return "fail";
	}
	
	@GetMapping(value="/endMatch")
	public String endMatch(@Param("matchNo") Integer matchNo, @Param("clubCode") String clubCode) {
		log.info("endMatch  matchNo : "+matchNo);
		log.info("endMatch  clubCode : "+clubCode);
		if(recordService.endMatch(matchNo, clubCode)) {
			return "redirect:/poll/mom";
		}
		
		return "/";
	}
	
	
	
	
	
}
