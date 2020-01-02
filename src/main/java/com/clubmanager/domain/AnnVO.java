package com.clubmanager.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AnnVO {

	private int annNo;
	private String annTitle;
	private String annContent;
	private Date annDate;
	private int annPopup;
}
