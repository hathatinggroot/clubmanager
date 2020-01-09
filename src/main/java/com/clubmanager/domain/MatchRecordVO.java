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
	private int results; //-- 1:½Â¸®, 0:¹«, -1:ÆÐ
	private String mom;
	private String comments;
	private int matchNo;
	private String clubCode;
	
	private List<PersonalRecordDTO> prDTOList;
	
	public int getResults() {
		int total = this.goal + this.extraGoal - this.lostPoint;
		if(total>0) {
			return 1;
		}else if(total<0) {
			return -1;
		}else {
			return 0;
		}
	}
	
}
