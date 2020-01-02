package com.clubmanager.service;

import java.util.List;

import com.clubmanager.domain.BoardVO;
import com.clubmanager.domain.Criteria;
import com.clubmanager.domain.ReplyVO;

public interface BoardService {
	public List<BoardVO> getBoardList(Criteria cri);
	
	public int insert(BoardVO boardVO);
	
	public int getTotalNum(Criteria cri);
	
	public BoardVO getBoard(BoardVO boardVO);
	
	public int modify(BoardVO boardVO);
	
	public int delete(BoardVO boardVO);
	
}
