package com.clubmanager.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class PersonalRecordDTO {
	private int mom;
	private int goals;
	private int assists;
	private int saves;
	private String userId;
	private String userName;
	private int matchNo;
	
	public int getTotal() {//-- total = 1(Âü¼®) + mom(3) + goals(2) + assists(1) + savess(1) )
		int total = 0;
		
		total = 1+ this.mom*3 + this.goals*2 + this.assists*1 + this.saves*1 ;
		
		return total;
	}
	
}
