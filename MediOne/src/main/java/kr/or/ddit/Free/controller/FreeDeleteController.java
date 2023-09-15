package kr.or.ddit.Free.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.Free.service.FreeService;
import kr.or.ddit.Free.vo.FreeBoardVO;

@Controller
public class FreeDeleteController {
	
	@Inject
	private FreeService service;
	
	@RequestMapping("/free/freeDelete.do")
	public String boardDelete(
			@RequestParam(name="what") String boardNo
			) {
		boolean success = service.removeFreeBoard(boardNo);
		String viewName = null;
		if(success) {
			viewName ="redirect:/free/newFreeBoard.do";
		} else {
			viewName = "redirect:/free/freeView.do?what="+boardNo;
		}
		return viewName;
	}
}
