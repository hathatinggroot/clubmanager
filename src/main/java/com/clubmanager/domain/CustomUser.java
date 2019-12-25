package com.clubmanager.domain;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import lombok.extern.log4j.Log4j;

@Getter
@Log4j
public class CustomUser extends User {

	private static final long serialVersionUID = 1L;
	
	private MemberVO member;
	
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(MemberVO vo) {
		super(vo.getUserId(), vo.getUserPw(), chType(vo.getAuth()));
		log.info("CustomUser : " + vo);
		this.member = vo;
	}
	
	static Collection<SimpleGrantedAuthority> chType(String auth){
		Collection<SimpleGrantedAuthority> authList = new ArrayList<SimpleGrantedAuthority>();
		authList.add(new SimpleGrantedAuthority(auth));
		return authList;
	}

	

	
}
