package com.clubmanager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@PostMapping(value = "/listByAjax", consumes="application/json", produces={ MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	@ResponseBody
	public List<BoardVO> getBoardListByAjax(@RequestBody Criteria cri) {
		log.info("listByAjax : " + cri);
		List<BoardVO> boardList = boardService.getBoardList(cri);
		log.info("boardList ......." + boardList);
		return boardList;
	}
	
	
	@PostMapping(value = "/getPaginator", consumes="application/json", produces={ MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	@ResponseBody
	public pageDTO getPaginator(@RequestBody Criteria cri) {
		log.info("getPaginator cri : " + cri);
		int total = boardService.getTotalNum(cri);
		pageDTO pdto = new pageDTO(total, cri);
		log.info("pageDTO : " + pdto);
		
		return pdto;
	}
	
	
	@GetMapping("/write")
	public void goToWrite() {
		log.info("write.jsp");
	}
	
	
	@PostMapping(value= "/writeAction", produces= "text/plain;charset=UTF-8")
	public String writeAction(BoardVO boardVO, RedirectAttributes rttr) {
		log.info("writeAction boardVO : " + boardVO);
		int result = boardService.insert(boardVO);
		if(result==1) {
			rttr.addFlashAttribute("writeResult", true);
		}
		
		return "redirect:/freeboard/list?clubCode="+boardVO.getClubCode();
	}
	
	
	@GetMapping("/view")
	public void goToView(BoardVO boardVO, Model model) {
		log.info("view.jsp boardVO :" + boardVO);
		
		BoardVO bvo = boardService.getBoard(boardVO);
		model.addAttribute("boardVO", bvo);
	}
	
	
	@GetMapping("/modify")
	public void goToModify(BoardVO boardVO, Model model) {
		log.info("modify.jsp");
		BoardVO bvo = boardService.getBoard(boardVO);
		model.addAttribute("boardVO", bvo);
	}
	
	@PostMapping("/modifyAction")
	public String modifyAction(BoardVO boardVO, RedirectAttributes rttr) {
		log.info("modifyAction boardVO : " + boardVO);
		int result = boardService.modify(boardVO);
		if(result==1) {
			rttr.addFlashAttribute("modifyResult", true);
		}
		
		return "redirect:/freeboard/list?clubCode="+boardVO.getClubCode();
	}
	
	@PostMapping("/delete")
	public String delete(BoardVO boardVO, RedirectAttributes rttr) {
		log.info("delete boardVO : " + boardVO);
		int result = boardService.delete(boardVO);
		if(result==1) {
			rttr.addFlashAttribute("deleteResult", true);
		}
		
		return "redirect:/freeboard/list?clubCode="+boardVO.getClubCode();
	}
	
	
	@PostMapping(value= "/writeReply", consumes="application/json", produces={ MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String writeReply(@RequestBody ReplyVO replyVO) {
		log.info("writeReply replyVO : " + replyVO);
		int result = replyService.insert(replyVO);
		if(result==1) {
			return "writeReply success";
		}
		
		return "writeReply failed";
	}
	
	@GetMapping(value = "/replyList/{boardNo}", produces={ MediaType.APPLICATION_JSON_UTF8_VALUE})
	@ResponseBody
	public List<ReplyVO> getReplyList(@PathVariable("boardNo") int boardNo) {
		log.info("replyList.jsp boardNo : " + boardNo);
		
		List<ReplyVO> replyList = replyService.getList(boardNo);
		
		return replyList;
	}
}
