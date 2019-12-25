package com.clubmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clubmanager.domain.ClubVO;
import com.clubmanager.domain.MemberVO;
import com.clubmanager.service.CommonService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {

	@Setter(onMethod_ = { @Autowired })
	private CommonService commonService;

	@PostMapping(value = "/id_dupl_check", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	@ResponseBody
	public String idDuplCheck(@RequestBody MemberVO memberVo) {
		log.info("id Dupl Check vo : " + memberVo);
		MemberVO vo = commonService.getMember(memberVo.getUserId());
		if (vo != null) {
			return "impossible";
		} else {
			return "possible";
		}
	}

	@PostMapping(value = "/club_exist_check", consumes = "application/json", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ClubVO clubExistCheck(@RequestBody ClubVO clubVo) {

		log.info("club exit Check vo : " + clubVo);
		ClubVO vo = commonService.getClub(clubVo.getClubCode());
		
		if(vo==null) {
			vo =new ClubVO();
			vo.setClubName("");
			return vo;
		}
		log.info(vo.getClubName());
		return vo;
	}
	
	
	@PostMapping(value = "/join", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	@ResponseBody
	public String join(@RequestBody MemberVO memberVo) {
		log.info("JOIN vo : " + memberVo);
		int result = commonService.join(memberVo);
		if (result == 1) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	@PostMapping(value = "/reg_club", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	@ResponseBody
	public String regClub(@RequestBody ClubVO clubVo) {

		log.info("REG CLUB vo : " + clubVo);
		int result = commonService.regClub(clubVo);
		
		if (result == 1) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	
	
	@GetMapping("/customlogin")
	public String loginInput(String error, String logout, Model model) {
		log.info("error : " + error);
		log.info("logout : " + logout);

//		if(error!=null) {
//			model.addAttribute("error", "Login Error Check Your Account");
//		}
//		if(logout!=null) {
//			model.addAttribute("logout", "Logout........!");
//		}
		model.addAttribute("loginModal", "true");

		return "intro";
	}
	
	
	
	
	
	
	
	

	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("access Denied : " + auth);

		model.addAttribute("msg", "Access Denied");
	}



	@GetMapping("/main")
	public void goToMain() {
		log.info("main.jsp");
	}

	@GetMapping("/intro")
	public void goToIntro() {
		log.info("intro.jsp");
	}
	@GetMapping("/")
	public String goToInitPage() {
		log.info("intro.jsp");
		return "intro";
	}
	
	@GetMapping("/club_members")
	public void goToClubMembers() {
		log.info("club_members.jsp");
	}

	@GetMapping("/loginfailure")
	public void loginFailure() {
		log.info("loginfailure.jsp");
	}

	@GetMapping("/accessdenied")
	public void accessDenied() {
		log.info("accessdenied.jsp");
	}

//	@GetMapping("/home")
//	public void goToHome() {
//		log.info("home.jsp");
//	}
}
