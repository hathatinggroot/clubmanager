package com.clubmanager.controller;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clubmanager.domain.ClubStatisticDTO;
import com.clubmanager.domain.Criteria;
import com.clubmanager.domain.MatchVO;
import com.clubmanager.domain.MemberVO;
import com.clubmanager.domain.PersonalStatisticsDTO;
import com.clubmanager.domain.pageDTO;
import com.clubmanager.service.MatchService;
import com.clubmanager.service.MemberService;
import com.clubmanager.service.RecordService;
import com.clubmanager.service.StatisticService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/record")
@PreAuthorize("isAuthenticated()")
public class RecordController {
	
	@Setter(onMethod_= @Autowired)
	private StatisticService statisticService;
	
	@Setter(onMethod_= @Autowired)
	private RecordService recordService;
	
	@Setter(onMethod_= @Autowired)
	private MatchService matchService;
	
	@Setter(onMethod_= @Autowired)
	private MemberService memberService;
	
	@GetMapping("/club_record")
	public void goToClubRecord(Criteria cri, Model model) {
		log.info("club_record.jsp cri : " + cri);
		
		ClubStatisticDTO csDTO = statisticService.getClubStatistics(cri.getClubCode());
		
		model.addAttribute("csDTO", csDTO);
		model.addAttribute("cri", cri);
	}
	
	@PostMapping(value = "/getMatchList", consumes="application/json", produces= {MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public List<MatchVO> getMatchList(@RequestBody Criteria cri) {
		log.info("getMRList cri : " + cri);
		
		
		List<MatchVO> matchList = matchService.getEndedList(cri);
		
		return matchList;
	}
	
	@PostMapping(value = "/getPaginator", consumes="application/json", produces= {MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public pageDTO getPaginator(@RequestBody Criteria cri) {
		log.info("getPaginator cri : " + cri);
		
		
		pageDTO pDTO = new pageDTO(statisticService.getClubStatistics(cri.getClubCode()).getMatchNums(), cri);
		
		return pDTO;
	}
	
	
	@GetMapping("/club_record_view")
	public void goToClubRecordView(@Param("matchNo") int matchNo, Model model) {
		log.info("club_record_view.jsp");
		
		MatchVO matchVO = matchService.get(matchNo);
		matchVO.setMrVO(recordService.getMR(matchNo));
		
		model.addAttribute("matchVO", matchVO);
		
	}
	
	@GetMapping("/personal_record")
	public void goToPersonalRecord(@Param("clubCode") String clubCode, Model model) {
		log.info("personal_record.jsp clubCode : " + clubCode);
		
		HashMap<String, List<PersonalStatisticsDTO>> rankerMap = statisticService.getRanker(clubCode);
		
		model.addAttribute("rankerMap", rankerMap);
	}
	
}
