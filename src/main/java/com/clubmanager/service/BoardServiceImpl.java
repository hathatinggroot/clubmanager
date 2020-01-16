package com.clubmanager.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.clubmanager.domain.AttachVO;
import com.clubmanager.domain.BoardVO;
import com.clubmanager.domain.Criteria;
import com.clubmanager.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BoardServiceImpl implements BoardService {
	
	@Setter(onMethod_= @Autowired)
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> getBoardList(Criteria cri) {
		List<BoardVO> boardList = new ArrayList<>();
		
		boardList = boardMapper.getBoardList(cri);
		
		return boardList;
	}
	
	@Transactional
	@Override
	public int insert(BoardVO boardVO) {
		
		boardMapper.addSeqNo();
		
		int result1 = 0;
		int result2 = 1;
		result1 = boardMapper.insert(boardVO);
		
		if(boardVO.getAttachList() == null || boardVO.getAttachList().size()==0) {
			return result1;
		}
		
		for(AttachVO avo : boardVO.getAttachList()) {
			avo.setBoardNo(boardVO.getBoardNo());
			result2 *= boardMapper.insertAttach(avo);
		}
		
		
		return result1*result2;
	}
	
	@Override
	public int getTotalNum(Criteria cri) {
		int result = boardMapper.getTotalNum(cri);
		return result;
	}
	
	@Transactional
	@Override
	public BoardVO getBoard(BoardVO boardVO) {
		boardMapper.hit(boardVO);
		
		BoardVO bvo = boardMapper.getBoard(boardVO);
		List<AttachVO> attachList = boardMapper.getAttachList(boardVO.getBoardNo());
		bvo.setAttachList(attachList);
		
		return bvo;
	}
	
	@Transactional
	@Override
	public int modify(BoardVO boardVO) {
		int result1 = 0;
		int result2 = 1;
		result1 = boardMapper.modify(boardVO);
		if(boardVO.getAttachList() == null || boardVO.getAttachList().size()==0) {
			return result1;
		}
		for(AttachVO avo : boardVO.getAttachList()) {
			avo.setBoardNo(boardVO.getBoardNo());
			result2 *= boardMapper.insertAttach(avo);
		}
		
		
		return result1*result2;
	}
	
	@Transactional
	@Override
	public int delete(BoardVO boardVO) {
		getAttachList(boardVO.getBoardNo()).forEach(attach -> deleteAttach(attach));
		
		
		return boardMapper.delete(boardVO);
	}
	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);

		return str.replace("-", File.separator);
	}
	@Override
	public List<AttachVO> upload(MultipartFile[] upload) {

		List<AttachVO> uploadList = new ArrayList<AttachVO>();
		
//		String uploadFolder = "C:\\ClubManager\\upload";
		String uploadFolder = "/usr/local/clubmanager/upload";
		
		String uploadFolderPath = getFolder();
		
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		
		log.warn("uploadPath :" +uploadPath );
		
		if(!uploadPath.exists()) uploadPath.mkdirs();
		
		for(MultipartFile mpFile : upload) {
			log.warn("Upload File Name (OG NAME) : "+ mpFile.getOriginalFilename());
			log.warn("Upload File Size : "+ mpFile.getSize());
			log.warn("Upload File Name (NAME) : "+ mpFile.getName());
			log.warn("Upload getContentType : "+ mpFile.getContentType());
			
			String uploadFileName = mpFile.getOriginalFilename();
			
			File saveFile = new File(uploadPath, uploadFileName);
			
			while(saveFile.exists()) {
				String modName = saveFile.getAbsolutePath();
				String ogName = modName.substring(0,modName.lastIndexOf("."));
				String type = modName.substring(modName.lastIndexOf("."));
				log.warn("modName : "+ modName);
				log.warn("type : "+ type);
				log.warn("ogName : "+ ogName);
				saveFile = new File(ogName+"[1]"+type);
			}
			
			try {
				mpFile.transferTo(saveFile);
				String fullName = saveFile.getAbsolutePath();
				String fileName = fullName.substring(fullName.lastIndexOf(File.separator)+1);
				String filePath = fullName.substring(0,fullName.lastIndexOf(File.separator)+1);
				
				AttachVO vo = new AttachVO();
				vo.setFileName(fileName);
				vo.setFilePath(filePath);
				
				if(mpFile.getContentType().contains("image")) {
					vo.setIsImg(1);
				}else {
					vo.setIsImg(0);
				}
				
				uploadList.add(vo);
				log.warn("attachVO : " + vo);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
			
		}
		return uploadList;
	}
	
	
	@Override
	public File getImgAsFile(AttachVO attachVO) {
		List<byte[]> byteList = new ArrayList<byte[]>();
		 AttachVO imgAttach = boardMapper.getAttach(attachVO);
		 File imgFile = new File(imgAttach.getFilePath(),imgAttach.getFileName());
		 
		 return imgFile;
	}
	
	@Override
	public List<AttachVO> getAttachList(int boardNo) {
		
		return boardMapper.getAttachList(boardNo);
	}
	
	@Transactional
	@Override
	public boolean deleteAttach(AttachVO attachVO) {
		File delFile = getImgAsFile(attachVO);
		if(delFile.exists()) {
			delFile.delete();
		}
		
		if(boardMapper.deleteAttach(attachVO)==1) {
			return true;
		}
		
		return false;
	}
	
}
