package com.clubmanager.controller;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clubmanager.domain.AnnVO;
import com.clubmanager.domain.ClubVO;
import com.clubmanager.domain.MemberVO;
import com.clubmanager.mapper.AnnMapper;
import com.clubmanager.service.CommonService;
import com.clubmanager.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {

	@Setter(onMethod_ = { @Autowired })
	private CommonService commonService;
	
	@Setter(onMethod_ = { @Autowired })
	private MemberService memberService;
	
	@Setter(onMethod_ = { @Autowired })
	private AnnMapper annMapper;
	
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

	@GetMapping(value = "/club_exist_check/{clubCode}", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ClubVO clubExistCheck(@PathVariable("clubCode") String clubCode) {
		log.info("club exit Check clubCode : " + clubCode);
		
		ClubVO vo = commonService.getClub(clubCode);
		
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
		log.info("regClub");
		log.info("REG CLUB vo : " + clubVo);
		int result = commonService.regClub(clubVo);
		
		if (result == 1) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/modifyPInfo", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	@ResponseBody
	public String modifyPInfo(@RequestBody Map<String, Object> params) {
		MemberVO memberVo = new MemberVO();
		ClubVO clubVo = new ClubVO();
		memberVo.setUserId(params.get("userId").toString());
		memberVo.setUserName(params.get("userName").toString());
		clubVo.setClubCode(params.get("clubCode").toString());
		clubVo.setClubName(params.get("clubName").toString());
		log.info("MODIFY memberVo : " + memberVo);
		log.info("MODIFY clubVo : " + clubVo);
		int result = commonService.modify(memberVo, clubVo);
		
		log.info(result==1);
		if (result == 1) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	
	
	@PreAuthorize("isAnonymous()")
	@GetMapping("/customlogin")
	public String loginInput(Model model) {
		model.addAttribute("loginModal", "true");
		return "intro";
	}
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/club_members")
	public void clubMembers(@Param("clubCode") String clubCode, Model model) {
		log.info("clubCode : " + clubCode);
		List<MemberVO> memberList = memberService.getClubMembers(clubCode);
		log.info("memberList ......." + memberList);
		ClubVO clubVO = commonService.getClub(clubCode);
		log.info("clubVO : " + clubVO);
		model.addAttribute("memberList", memberList);
		model.addAttribute("clubVO", clubVO);
	}
	
	
	@PreAuthorize("hasAnyRole('ROLE_OWNER', 'ROLE_ADMIN')")
	@PostMapping(value = "/modify_auth", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	@ResponseBody
	public String modifyAuth(@RequestBody Map<String, Object> params) {
		MemberVO memberVo = new MemberVO();
		memberVo.setUserId(params.get("userId").toString());
		memberVo.setAuth(params.get("auth").toString());
		log.info("MODIFY AUTH memberVo : " + memberVo);

		if(memberVo.getAuth().equals("ROLE_OWNER")) {
			ClubVO clubVO = new ClubVO();
			clubVO.setClubCode(params.get("clubCode").toString());
			clubVO.setOwnerId(memberVo.getUserId());
			commonService.chOwner(clubVO);
		}
		
		int result = memberService.modifyAuth(memberVo);
		
		log.info(result==1);
		if (result == 1) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	@PreAuthorize("hasAnyRole('ROLE_OWNER', 'ROLE_ADMIN')")
	@PostMapping(value = "/dismiss/{userId}", produces = MediaType.TEXT_PLAIN_VALUE)
	@ResponseBody
	public String dismiss(@PathVariable("userId") String userId) {
		log.info("Dismiss userId : " + userId);

		int result = memberService.dismiss(userId);
		
		log.info(result==1);
		if (result == 1) {
			return "success";
		} else {
			return "fail";
		}
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
	public String goToInitPage(Model model) {
		log.info("intro.jsp");
		
		List<AnnVO> popupList = annMapper.getAnnPopupList();
		log.info("popupList : " + popupList);
		model.addAttribute("popupList", popupList);
		
		return "intro";
	}
	
	@GetMapping("/loginFailure")
	public void loginFailure() {
		log.info("loginfailure.jsp");
	}

	@GetMapping("/accessdenied")
	public void accessDenied() {
		log.info("accessdenied.jsp");
	}

	@PreAuthorize("isAnonymous()")
	@GetMapping("/test")
	public void test() {
		log.info("test.jsp");
	}
	
}
