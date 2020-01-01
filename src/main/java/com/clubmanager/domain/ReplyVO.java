package com.clubmanager.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {

	private String replyWriter;
	private String replyContent;
	private Date replyDate;
	private int boardNo;
}
