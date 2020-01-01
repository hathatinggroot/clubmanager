package com.clubmanager.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	private int pageNum;
	private int amount;
	
	private String keyword;
	
	private String clubCode;
	
//	private String sortBy;
//	private boolean sortDirection;
	
	public Criteria() {
		this(1,10, "");
	}
	
	public Criteria(int pageNum, int amount, String keyword) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.keyword = keyword;
	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
										.queryParam("pageNum", this.pageNum)
										.queryParam("amount", this.amount)
										.queryParam("clubCode", this.clubCode)
										.queryParam("keyword", this.keyword);
		return builder.toUriString();
	}
	
}
