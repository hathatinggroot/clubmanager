package com.clubmanager.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ClubVO {

	private String clubName;
	private String clubCode;
	private Date clubDate;
	private String ownerId;
	
}
