package com.clubmanager.domain;

import java.util.Arrays;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CustomUser extends User {

	private static final long serialVersionUID = 1L;
	
	private MemberVO memberVO;
	
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(MemberVO vo) {
		super(vo.getUserId(), vo.getUserPw(), Arrays.asList(new SimpleGrantedAuthority(vo.getAuth())));
		
		this.memberVO = vo;
	}

	

	
}
