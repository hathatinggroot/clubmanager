package com.clubmanager.service;

import java.io.File;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.clubmanager.domain.AttachVO;
import com.clubmanager.domain.BoardVO;
import com.clubmanager.domain.Criteria;

public interface BoardService {
	public List<BoardVO> getBoardList(Criteria cri);
	
	public int insert(BoardVO boardVO);
	
	public int getTotalNum(Criteria cri);
	
	public BoardVO getBoard(BoardVO boardVO);
	
	public int modify(BoardVO boardVO);
	
	public int delete(BoardVO boardVO);
	
	public List<AttachVO> upload(MultipartFile[] upload);
	
	public File getImgAsFile(AttachVO attachVO);
	
	public List<AttachVO> getAttachList(int boardNo);
	
	public boolean deleteAttach(AttachVO attachVO);
}
