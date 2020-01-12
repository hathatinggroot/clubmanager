package com.clubmanager.mapper;

import java.util.List;

import com.clubmanager.domain.ReplyVO;

public interface ReplyMapper {
	
	public int insert(ReplyVO replyVO);

	public int delete(ReplyVO replyVO);
	
	public List<ReplyVO> getList(int boardNo);
}
