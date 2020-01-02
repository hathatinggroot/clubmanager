package com.clubmanager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.ReplyVO;
import com.clubmanager.mapper.BoardMapper;
import com.clubmanager.mapper.ReplyMapper;

import lombok.Setter;
@Service
public class ReplyServiceImpl implements ReplyService {
	
	
	@Setter(onMethod_= @Autowired)
	private ReplyMapper replyMapper;
	
	@Setter(onMethod_= @Autowired)
	private BoardMapper boardMapper;
	
	
	
	@Override
	public int insert(ReplyVO replyVO) {
		boardMapper.replyAdded(replyVO.getBoardNo());
		int result = replyMapper.insert(replyVO);
		return result ;
	}
	
	@Override
	public List<ReplyVO> getList(int boardNo) {
		
		List<ReplyVO> replyList = replyMapper.getList(boardNo);
		
		return replyList;
	}

}
