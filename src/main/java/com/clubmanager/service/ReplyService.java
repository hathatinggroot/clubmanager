package com.clubmanager.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.clubmanager.domain.ReplyVO;

public interface ReplyService {
	
	@Transactional(rollbackFor = Exception.class)
	public int insert(ReplyVO replyVO);
	
	public List<ReplyVO> getList(int boardNo);
}
