package com.clubmanager.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	private int pageNum;
	private int amount;
	
	private int offset;
	
	private String keyword;
	
	private String clubCode;
	
	private int annPopup;
	
	public Criteria() {
		this(1,10, "");
	}
	
	public Criteria(int pageNum, int amount, String keyword) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.keyword = keyword;
	}
	
	public int getOffset() {
		int result = (this.pageNum-1) * this.amount;
		return result;
	}
}
