package com.clubmanager.securiy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomAccessDeniedHandler implements AccessDeniedHandler, AuthenticationFailureHandler{

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		// TODO Auto-generated method stub
		String redirectPage = "/home";
		log.info("Access Denied Handler");
		log.info("Redirect....to "+ redirectPage);
		
		
		response.sendRedirect(redirectPage);
	}
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		String redirectPage = "/main";
		log.warn("Access failed Handler");
		log.info("Redirect....to "+ redirectPage);
		
		
		response.sendRedirect(redirectPage);
		
	}
}
