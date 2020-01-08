package com.clubmanager.domain;

import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class MatchRecordVO {
	private int goal;
	private int lostPoint;
	private int result;
	private String mom;
	private String comments;
	private int matchNo;
	
	private List<PersonalRecordDTO> prDTOList;
	
}
