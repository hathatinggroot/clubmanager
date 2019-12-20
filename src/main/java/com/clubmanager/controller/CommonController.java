package com.clubmanager.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("access Denied : " + auth);
		
		model.addAttribute("msg", "Access Denied");
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
	
	@GetMapping("/main")
	public void goToMain() {
		log.info("main.jsp");
	}
	@GetMapping("/intro")
	public void goToIntro() {
		log.info("intro.jsp");
	}
	@GetMapping("/club_members")
	public void goToClubMembers() {
		log.info("club_members.jsp");
	}
	
	

	@GetMapping("/home")
	public void goToHome() {
		log.info("home.jsp");
	}
}
