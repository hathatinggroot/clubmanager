package com.clubmanager.securiy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub
		log.warn("Login Success");

		// 로그인한 사용자 권한 확인
		List<String> authNames = new ArrayList<>();
		authentication.getAuthorities().forEach(auth -> authNames.add(auth.getAuthority()));

		log.warn("Logined User's Auth : " + authNames);

		// 관리자 : 공지사항 관리 페이지로 이동
		if (authNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/admin/announcements_list");
			return;
		}

		// 구단주,매니져,멤버 : 구단 경기 일정 페이지로 이동
		if (authNames.contains("ROLE_MEMBER")) {

			// 소속 구단 정보 전달 필요
//			request.setAttribute("clubCode", "123123");

			response.sendRedirect("/schedule/list");
			return;
		}

		// 소속구단이 없는 일반 사용자 : 서비스 소개 페이지로 이동
			response.sendRedirect("/intro");
	}

}
