package com.clubmanager.securiy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.clubmanager.domain.CustomUser;
import com.clubmanager.domain.MemberVO;
import com.clubmanager.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {
	
	@Setter(onMethod_= {@Autowired})
	private MemberMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		log.warn("Load User by UserName : "+ username);
		
		MemberVO memberVO = memberMapper.get(username);
		
		log.warn("queried by member mapper : " + memberVO);
		
		return memberVO ==null ? null:new CustomUser(memberVO);
	}

}
