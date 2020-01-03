package com.clubmanager.domain;

import java.text.DateFormat;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;

public class MemberVO {
	@Getter
	@Setter
	private String userId;
	
	@Getter
	@Setter
	private String userPw;
	
	@Getter
	@Setter
	private String userName;

	@Getter
	@Setter
	private String auth;
	
	@Getter
	@Setter
	private String social;
	
	@Getter
	@Setter
	private String clubCode;
	

	@Setter
	private Date joinDate;
	
	public String getJoinDate() {
		DateFormat format = DateFormat.getDateInstance(DateFormat.SHORT);
		return format.format(this.joinDate);
	}
	
}
