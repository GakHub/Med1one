package kr.or.ddit.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.notice.service.NoticeService;
import kr.or.ddit.notice.vo.NoticeBoardVO;
import kr.or.ddit.validate.groups.InsertGroup;
import kr.or.ddit.validate.groups.UpdateGroup;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/notice/")
@RequiredArgsConstructor
public class NoticeUpdateController {

	private final NoticeService service;

	@ModelAttribute("noticeboard")
	public NoticeBoardVO board() {
		return new NoticeBoardVO();
	}
	
	// 공지사항 게시물 등록
	
	@GetMapping("noticeInsert.do") // 뷰를 보여주는
	public String noticeForm() {
		return "notice/noticeForm";
	}
	
	@PostMapping("noticeInsert.do") // 뷰로 보는걸 입력하는? 
	public String noticeInsert(
			@Validated(InsertGroup.class) @ModelAttribute("noticeboard") NoticeBoardVO board,
			BindingResult errors
			, Model model
		) {
		
		
		String viewName = null;

		if (!errors.hasErrors()) {
			boolean success = service.createBoard(board);
			if (success) {
				viewName = "redirect:/notice/noticeDetail.do?what="+board.getNoticeCode();
			} else {
				model.addAttribute("message", "새글 작성중 문제 발생");
				viewName = "notice/noticeForm";
			}
		} else {
			viewName = "notice/noticeForm";
		}
		return viewName;
	}

	
	@ModelAttribute("noticeboard")
	public NoticeBoardVO board(@RequestParam String what) {
		return service.retrieveBoard(what);
	}
	

	// 공지사항 수정
	@GetMapping("noticeUpdate.do")
	public String updatePorm(
			 Model model
			, @RequestParam("what") String noticeCode
	) {
		NoticeBoardVO notice = service.retrieveBoard(noticeCode);
		model.addAttribute("noticeboard",notice);
		
		return "notice/noticeEdit";
	}
	
	
	@PostMapping("noticeUpdate.do")
	public String noticeUpdate(
	        Model model,
	        @Validated(UpdateGroup.class) @ModelAttribute("noticeboard") NoticeBoardVO board,
	        BindingResult errors
	) {
		
		String boardNo = board.getNoticeCode();
		boolean success = service.modifyBoard(board);
		service.modifyBoardReadcount(boardNo);
	    String viewName = null;
	    if (!errors.hasErrors()) {
	       
	        if (success) {
	            viewName = "redirect:/notice/noticeList.do?what=" + board.getNoticeCode();
	        } else {
	            model.addAttribute("message", "수정중 문제 발생");
	            viewName = "notice/noticeForm";
	        }
	    } else {
	        viewName = "notice/noticeForm";
	    }

	    model.addAttribute("noticeboard", board); // gpt보고 잠깐 추가한 곳

	    return viewName;
	}

	// 공지사항 삭제
		@GetMapping("noticeDelete.do")
		public String noticeDelete(
				@RequestParam("what") String noticeCode
				, RedirectAttributes redirectAttributes) {
			boolean success = service.removeBoard(noticeCode);
			String viewName = null;
			if(success) {
				viewName = "redirect:/notice/noticeList.do";
			}else {
				redirectAttributes.addFlashAttribute("message", "게시글 삭제 실패");
				viewName = "redirect:/notice/noticeList.do?what="+noticeCode;
			}
			return viewName;
		}

	
	
}
