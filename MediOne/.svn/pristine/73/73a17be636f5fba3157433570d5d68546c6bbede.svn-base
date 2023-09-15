package kr.or.ddit.medical.examinate.controller;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.medical.examinate.service.MdexmnService;
import kr.or.ddit.medical.examinate.vo.MdexmnVO;

@Controller
@RequestMapping("/examinate/")
public class ExaminateResultController {

	@Inject
	private MdexmnService service;
	
	
	// 검진 완료 환자 정보 및 결과 조회
	@GetMapping(value = "examDone.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public MdexmnVO examDone(@RequestParam("mdexmnCode") String mdexmnCode) {
		
		MdexmnVO mdexmnVO = service.selectDoneExam(mdexmnCode);
		
		
		return mdexmnVO; 
	}
	
	
}
