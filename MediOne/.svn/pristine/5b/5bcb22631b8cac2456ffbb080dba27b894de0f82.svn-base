package kr.or.ddit.Free.controller;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.Free.service.CommentService;
import kr.or.ddit.Free.vo.CommentVO;
import kr.or.ddit.Free.vo.FreeBoardVO;
import kr.or.ddit.employee.service.EmployeeService;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.employee.vo.EmployeeVOWrapper;

@Controller
@RequestMapping("/free/cmtInsert.do")
public class CommentInsertController {

	@Inject
	private CommentService cmtService;

	@Inject
	private EmployeeService empService;
	
	@GetMapping
	public String getForm(
			  Model model
			, Authentication authentication
	) {
	
		EmployeeVOWrapper wrapper = (EmployeeVOWrapper)authentication.getPrincipal();
		EmployeeVO detail = empService.retrieveEmployee(wrapper.getRealUser().getEmpNo());
		
		model.addAttribute("LoginUser", detail);
		
		return "/free/cmtInsert.do";
	}
	
	

	@PostMapping
	public String postForm(
			@ModelAttribute("freeComment") CommentVO freeComment
			, BindingResult errors
			, Model model

	) {
		
		String viewName = null;
		
		if (!errors.hasErrors()) {
			boolean cmtInput = cmtService.createFreeComment(freeComment);
			if (cmtInput) {
				viewName = "redirect:freeView.do?what=" + freeComment.getBoardNo();
			} else {
				model.addAttribute("message", "게시물 작성 중 문제 발생");
				viewName = "redirect:freeView.do?what=" + freeComment.getBoardNo();
			}
		} else {
			viewName = "redirect:freeView.do?what=" + freeComment.getBoardNo();
		}
		
		return viewName;
	}
}
