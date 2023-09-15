package kr.or.ddit.sales.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.ddit.Free.service.FreeService;
import kr.or.ddit.Free.vo.FreeBoardVO;


@Controller
public class ExcelController {
	
	@Inject
	FreeService freeService;
	
	  @GetMapping("sales/downloadExcel2")
	    public ModelAndView downloadExcel(HttpServletResponse response) {
	        // 엑셀 다운로드 로직
	        // ModelAndView 객체를 생성하여 excelView와 모델 데이터를 반환
			List<FreeBoardVO> empFreeList = freeService.selectStatFreeBoard();
			/* model.addAttribute("empFreeList",empFreeList); */
			response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
	        return new ModelAndView("excelView", "data", empFreeList);
	    }
}