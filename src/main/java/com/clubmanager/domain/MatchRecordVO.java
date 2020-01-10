package com.clubmanager.domain;

import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class MatchRecordVO {
	private int goal;
	private int extraGoal;
	private int lostPoint;
	private int results; //-- -2:시작 전  1:승리, 2:무, 3:패
	private String mom;
	private String comments;
	private int matchNo;
	private String clubCode;
	
	private List<PersonalRecordDTO> prDTOList;
	
}
