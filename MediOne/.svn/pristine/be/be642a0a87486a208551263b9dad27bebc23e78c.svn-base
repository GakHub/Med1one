package kr.or.ddit.Free.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.Free.service.FreeService;
import kr.or.ddit.Free.vo.FreeBoardVO;
import kr.or.ddit.employee.vo.PaginationInfo;
import kr.or.ddit.employee.vo.SimpleCondition;

@Controller
@RequestMapping("/free")
public class FreeBoardListController {

	@Inject
	private FreeService service;
	
	@GetMapping("newFreeBoard.do")
	public String freeBoardMain() {
		return "free/freeBoardList"; //오른쪽 메인 화면에 게시글 목록 출력
	}

	@GetMapping("newFreeBoardMain.do")
	public String newFreeBoardMain() {
		return "free/new/main"; //왼쪽 메인 화면에 경조사, 동호회 안내화면 출력 
	}
	
	
	// 전체 게시글 목록, 페이징, 게시글 검색
		@RequestMapping(value = "newFreeBoardList.do", produces = MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody
		public PaginationInfo<FreeBoardVO> newFreeBoardList(
				@RequestParam(name = "page", required = false, defaultValue = "1") long currentPage //default 1p 설정
				,@RequestParam(name = "searchType", required = false) String searchType
				,@RequestParam(name = "searchWord", required = false) String searchWord
				, Model model
				) {
			
			PaginationInfo<FreeBoardVO> paging = new PaginationInfo<>(10, 5);
			paging.setCurrentPage(currentPage); //현재 페이지 정보
			
			SimpleCondition simpleCondition = new SimpleCondition();
			simpleCondition.setSearchType(searchType); //검색어 타입(제목, 내용, 작성자)
			simpleCondition.setSearchWord(searchWord); //검색어
			paging.setSimpleCondition(simpleCondition);//검색조건 설정

			List<FreeBoardVO> freeBoardList = service.retrieveFreeBoardList(paging);
			paging.setDataList(freeBoardList);
			
			return paging;

		}
}
