package com.clubmanager.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class pageDTO {
	private int total;
	private int startPage;
	private int endPage;
	private Criteria cri;
	
	private boolean prev;
	private boolean next;
	
	public pageDTO(int total, Criteria cri) {
		this.total = total;
		this.cri = cri;
		
		this.endPage = (int) Math.ceil((double)total/cri.getAmount());
		this.startPage = 1+ ((int) Math.ceil(cri.getPageNum()/5.0)-1)*5;
		
		this.prev = this.startPage>1;
		this.next = this.endPage > this.startPage + 4;
		
		if(this.next) {
			this.endPage = this.startPage + 4;
		}
	}
	
	
	
}
