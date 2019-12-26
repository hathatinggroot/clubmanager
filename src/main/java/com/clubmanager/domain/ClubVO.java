package com.clubmanager.domain;

import java.text.DateFormat;
import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

public class ClubVO {

	@Getter
	@Setter
	private String clubName;
	
	@Getter
	@Setter
	private String clubCode;
	
	@Setter
	private Date clubDate;

	@Getter
	@Setter
	private String ownerId;
	
	public String getClubDate() {
		DateFormat format = DateFormat.getDateInstance(DateFormat.SHORT);
		return format.format(this.clubDate);
	}
}
