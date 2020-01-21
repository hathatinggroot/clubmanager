package com.clubmanager.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.clubmanager.domain.AttachVO;
import com.clubmanager.domain.BoardVO;
import com.clubmanager.domain.Criteria;
import com.clubmanager.domain.ReplyVO;
import com.clubmanager.domain.pageDTO;
import com.clubmanager.service.BoardService;
import com.clubmanager.service.ReplyService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/freeboard")
@PreAuthorize("isAuthenticated()")
public class FreeBoardController {
	
	@Setter(onMethod_= @Autowired)
	private BoardService boardService;
	
	@Setter(onMethod_= @Autowired)
	private ReplyService replyService;
	
	@GetMapping("/list")
	public void getBoardList(Criteria cri, Model model) {
		log.info("list.jsp cri : " + cri);
		
		model.addAttribute("cri", cri);
	}
	
	@GetMapping(value = "/board/list", produces={ MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	@ResponseBody
	public List<BoardVO> getBoardListByAjax(Criteria cri) {
		log.info("listByAjax : " + cri);
		List<BoardVO> boardList = boardService.getBoardList(cri);
		log.info("boardList ......." + boardList);
		return boardList;
	}
	
	
	@GetMapping(value = "/paginator/board", produces={ MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	@ResponseBody
	public pageDTO getPaginator(Criteria cri) {
		log.info("getPaginator cri : " + cri);
		int total = boardService.getTotalNum(cri);
		pageDTO pdto = new pageDTO(total, cri);
		log.info("pageDTO : " + pdto);
		
		return pdto;
	}
	
	@PostMapping(value = "/download", produces={ MediaType.APPLICATION_OCTET_STREAM_VALUE })
	public ResponseEntity<Resource> download(@Param("filePath") String filePath, @Param("fileName") String fileName,  @Param("boardNo") int boardNo, RedirectAttributes rttr) {
		log.info("download attachVO : " + filePath + fileName);
		Resource resource = new FileSystemResource(filePath+fileName);
		log.info("resource : " + resource);
		if(resource.exists()) {
			HttpHeaders header = new HttpHeaders();
			try {
				String download = new String(resource.getFilename().getBytes("UTF-8"),"ISO-8859-1");
				header.add("Content-Disposition", "attachment; filename=\""+download+"\"");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return new ResponseEntity<Resource>(resource, header,HttpStatus.OK);
		}else {
			rttr.addAttribute("downloadResult", "해당 파일이 존재하지 않습니다");
			return new ResponseEntity<Resource>(HttpStatus.NOT_FOUND);
		}
	}
	
	
	@GetMapping("/write")
	public void goToWrite() {
		log.info("write.jsp");
	}
	
	
	@PostMapping(value= "/board",consumes="application/json", produces= {MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String writeAction(@RequestBody BoardVO boardVO) {
		log.info("writeAction boardVO : " + boardVO);
		int result = boardService.insert(boardVO);
		if(result==1) {
			return "success";
		}
		return "fail";
		
	}
	
	@PostMapping(value= "/attach", produces={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public List<AttachVO> upload(MultipartFile[] upload) {
		log.info("uploadAttach upload : " + upload);
		return boardService.upload(upload);
	}
	
	
	
	
	
	
	@GetMapping("/view")
	public void goToView(BoardVO boardVO, Model model) {
		log.info("view.jsp boardVO :" + boardVO);
		
		BoardVO bvo = boardService.getBoard(boardVO);
		model.addAttribute("boardVO", bvo);
	}
	
	@GetMapping(value= "/viewImg")
	@ResponseBody
	public ResponseEntity<byte[]> viewImg(String filePath, String fileName) {
		log.info("viewImg file : " + filePath+fileName );
		try {
			File imgFile = new File(filePath+fileName);
			log.info("imgFile.toPath() : " + imgFile.toPath());
			log.info("Files.probeContentType(imgFile.toPath()) : " + Files.probeContentType(imgFile.toPath()));
			
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Type", Files.probeContentType(imgFile.toPath()));
			
			return new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(imgFile), header, HttpStatus.OK);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	
	@GetMapping(value= "/attach/list/{boardNo}",produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public List<AttachVO> getAttachListByJson(@PathVariable("boardNo") int boardNo) {
		log.info("getAttachListByJson boardNo : " + boardNo );
		
		return boardService.getAttachList(boardNo);
	}
	
	
	
	@GetMapping("/modify")
	public void goToModify(BoardVO boardVO, Model model) {
		log.info("modify.jsp");
		BoardVO bvo = boardService.getBoard(boardVO);
		model.addAttribute("boardVO", bvo);
	}
	
	@PutMapping("/board")
	@ResponseBody
	public String modifyAction(@RequestBody BoardVO boardVO) {
		log.info("modifyAction boardVO : " + boardVO);
		int result = boardService.modify(boardVO);
		if(result==1) {
			return "success";
		}
		
		return "fail";
	}
	
	@DeleteMapping("/board/{boardNo}")
	@ResponseBody
	public String delete(@PathVariable("boardNo") int boardNo) {
		log.info("delete boardNo : " + boardNo);
		BoardVO boardVO = new BoardVO();
		boardVO.setBoardNo(boardNo);
		int result = boardService.delete(boardVO);
		if(result==1) {
			return "success";
		}
		
		return "fail";
	}
	
	@DeleteMapping(value="/attach", consumes="application/json", produces={ MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String deleteAttach(@RequestBody AttachVO attachVO) {
		log.info("deleteAttach attachVO : " + attachVO);
		
		if(boardService.deleteAttach(attachVO)) {
			return "success";
		}
		
		return "fail";
	}
	
	
	@PostMapping(value= "/reply", consumes="application/json", produces={ MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String writeReply(@RequestBody ReplyVO replyVO) {
		log.info("writeReply replyVO : " + replyVO);
		int result = replyService.insert(replyVO);
		if(result==1) {
			return "writeReply success";
		}
		
		return "writeReply failed";
	}
	
	@DeleteMapping(value= "/reply", consumes="application/json", produces={ MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String deleteReply(@RequestBody ReplyVO replyVO) {
		log.info("deleteReply replyVO : " + replyVO);
		int result = replyService.delete(replyVO);
		if(result==1) {
			return "writeReply success";
		}
		
		return "writeReply failed";
	}
	
	
	@GetMapping(value = "/reply/list/{boardNo}", produces={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public List<ReplyVO> getReplyList(@PathVariable("boardNo") int boardNo) {
		log.info("replyList.jsp boardNo : " + boardNo);
		
		List<ReplyVO> replyList = replyService.getList(boardNo);
		
		return replyList;
	}
}
