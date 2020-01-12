package com.clubmanager.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;
@Data
@ToString
public class MemberVO {
	private String userId;
	
	private String userPw;
	
	private String userName;

	private String auth;
	
	private String social;
	
	private String clubCode;
	
	private Date joinDate;
	
}
