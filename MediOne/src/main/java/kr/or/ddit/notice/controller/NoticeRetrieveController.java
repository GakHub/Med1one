package kr.or.ddit.notice.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.employee.service.EmployeeService;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.employee.vo.EmployeeVOWrapper;
import kr.or.ddit.employee.vo.PaginationInfo;
import kr.or.ddit.employee.vo.SimpleCondition;
import kr.or.ddit.notice.service.NoticeService;
import kr.or.ddit.notice.vo.NoticeBoardVO;

@Controller
@RequestMapping("/notice/") 
public class NoticeRetrieveController {

	@Inject
	private NoticeService service;
	
	@Inject
	private EmployeeService empService;
	
	@RequestMapping("noticeList.do")
	public String noticeList(
		@RequestParam(name="page", required = false, defaultValue = "1") long currentPage
		, @ModelAttribute("simpleCondition") SimpleCondition simpleCondition, Authentication authentication,
		Model model
		) {
		PaginationInfo<NoticeBoardVO> paging = new PaginationInfo<>(8,5);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simpleCondition);
		
		List<NoticeBoardVO> boardList = service.retriebeBoardList(paging);
		paging.setDataList(boardList);
		model.addAttribute("boardList",boardList);
		model.addAttribute("paging",paging);
		
		EmployeeVOWrapper wrapper = (EmployeeVOWrapper)authentication.getPrincipal();
		EmployeeVO detail = empService.retrieveEmployee(wrapper.getRealUser().getEmpNo());
		
		model.addAttribute("LoginUser", detail);
		
		return "notice/noticeList";
	}
	
	
	@GetMapping("noticeDetail.do")
	public String noticeDetail(
		@RequestParam("what") String noticeCode
		, Model model
		, Authentication authentication
		) {
		service.modifyBoardReadcount(noticeCode);
		NoticeBoardVO board = service.retrieveBoard(noticeCode);
		model.addAttribute("noticeboard",board);
		
		EmployeeVOWrapper wrapper = (EmployeeVOWrapper)authentication.getPrincipal();
		EmployeeVO detail = empService.retrieveEmployee(wrapper.getRealUser().getEmpNo());
		
		model.addAttribute("LoginUser", detail);
		
		return "notice/noticeDetail";
	}
}
