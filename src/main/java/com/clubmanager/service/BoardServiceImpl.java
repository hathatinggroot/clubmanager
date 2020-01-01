package com.clubmanager.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clubmanager.domain.BoardVO;
import com.clubmanager.domain.Criteria;
import com.clubmanager.mapper.BoardMapper;

import lombok.Setter;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Setter(onMethod_= @Autowired)
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> getBoardList(Criteria cri) {
		List<BoardVO> boardList = new ArrayList<>();
		
		boardList = boardMapper.getBoardList(cri);
		
		return boardList;
	}
	
	@Override
	public int insert(BoardVO boardVO) {
		int result = 0;
		result = boardMapper.insert(boardVO);
		
		
		return result;
	}
	
	@Override
	public int getTotalNum(Criteria cri) {
		int result = boardMapper.getTotalNum(cri);
		return result;
	}
	
	@Override
	public BoardVO getBoard(BoardVO boardVO) {
		boardMapper.hit(boardVO);
		
		BoardVO bvo = boardMapper.getBoard(boardVO);
		
		return bvo;
	}
	
	@Override
	public int modify(BoardVO boardVO) {
		
		return boardMapper.modify(boardVO);
	}
	
	@Override
	public int delete(BoardVO boardVO) {
		return boardMapper.delete(boardVO);
	}
}
