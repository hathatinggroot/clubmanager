package com.clubmanager.securiy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetailsService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Log4j
public class CustomAuthenticationProvider implements AuthenticationProvider {
	
	@Setter(onMethod_= {@Autowired})
	private UserDetailsService customUserDetailsService;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		// TODO Auto-generated method stub
		String userId = (String) authentication.getPrincipal();
		log.warn("userId : " + userId);
		String userPw = (String) authentication.getCredentials();
		log.warn("userPw : " + userPw);
		
		String userIdOrigin = customUserDetailsService.loadUserByUsername(userId).getUsername();
		log.warn("userIdOrigin : " +userIdOrigin);
		String userPwOrigin = customUserDetailsService.loadUserByUsername(userId).getPassword();
		log.warn("userPwOrigin : " + userPwOrigin);
		
		
		return null;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		// TODO Auto-generated method stub
		return true;
	}

}
