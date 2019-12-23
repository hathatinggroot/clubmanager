package com.clubmanager.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String userId;
	private String userPw;
	private String userName;
	private Date joinDate;
	private String auth;
	private String social;
	private String clubCode;
	
	
}
