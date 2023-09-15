package kr.or.ddit.Free.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.Free.service.FreeService;
import kr.or.ddit.Free.vo.FreeBoardVO;
import kr.or.ddit.validate.groups.UpdateGroup;
import lombok.val;

@Controller
@RequestMapping("/free/freeUpdate.do")
public class FreeUpdateController {

	@Inject
	private FreeService service;
	
	@ModelAttribute("freeBoard")
	public FreeBoardVO freeBoard() {
		return new FreeBoardVO();
	}
	
	
	@GetMapping
	public String formView(
			Model model
			,@RequestParam(name="what") String boardNo
	) {
		FreeBoardVO freeBoard = service.retrieveFreeBoard(boardNo);
		model.addAttribute("freeBoard",freeBoard);
		
		return "free/new/freeEdit";
	}
	
	@PostMapping
	public String updateBoard( 
			Model model
			, @ModelAttribute("freeBoard") FreeBoardVO freeBoard
			, BindingResult errors
	) {
		
		
		//수정할때 첨부파일 수정안할 경우 기존 첨부파일 유지
		String boardNo = freeBoard.getBoardNo();
		FreeBoardVO board = service.retrieveFreeBoard(boardNo);
		
		int num = board.getBoardAtchnum();

		if(freeBoard.getBoardAtchnum()==0) { //첨부파일 변경 여부 확인
			freeBoard.setBoardAtchnum(num);
		}
		
		boolean success= service.modifyFreeBoard(freeBoard);//게시글 수정
		service.modifyFreeBoardReadcount(boardNo);//조회수 증가
		
		String viewName = null;
		if(!errors.hasErrors()) { //성공
			if(success) {
				viewName = "redirect:/free/freeView.do?what="+freeBoard.getBoardNo();
			} else {
				model.addAttribute("message","수정하는데 오류가 생겼습니다.");
				viewName = "free/freeForm";
			}
		}else {
		
			viewName = "redirect:/free/freeView.do?what="+freeBoard.getBoardNo();
		}
		return viewName;
	}
}
