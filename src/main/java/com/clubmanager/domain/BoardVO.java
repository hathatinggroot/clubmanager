package com.clubmanager.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO {
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String boardWriter;
	private Date boardDate;
	private int boardLike;
	private int boardHit;
	private String clubCode;
	private int boardTop;
	private int replyCnt;
	
	private List<ReplyVO> replyList;
}
