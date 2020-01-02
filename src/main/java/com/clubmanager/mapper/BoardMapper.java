package com.clubmanager.mapper;

import java.util.List;

import com.clubmanager.domain.BoardVO;
import com.clubmanager.domain.Criteria;

public interface BoardMapper {
	
	public List<BoardVO> getBoardList(Criteria cri);
	
	public int insert(BoardVO boardVO);
	
	public int getTotalNum(Criteria cri);
	
	public BoardVO getBoard(BoardVO boardVO);
	
	public int hit(BoardVO boardVO);

	public int modify(BoardVO boardVO);
	
	public int delete(BoardVO boardVO);
	
	public int replyAdded(int boardNo);
}
