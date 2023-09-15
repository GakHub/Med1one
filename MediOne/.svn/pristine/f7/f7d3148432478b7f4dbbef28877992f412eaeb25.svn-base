package kr.or.ddit.medical.clinc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.File.vo.CtfDocVO;
import kr.or.ddit.common.controller.ServiceResult;
import kr.or.ddit.medical.clinc.service.ClinicService;
import kr.or.ddit.medical.vo.PatientVO;

@Controller
@RequestMapping("/clinic/")
public class DocumentController {

	@Inject
	private ClinicService service;
	
	@ModelAttribute("ctfdoc")
	public Object ctfdoc() {
		return new CtfDocVO();
	}
	
	// 진료 - 소견서 서식 조회
	@GetMapping("referralRetrieve1.do")
	public String referralRetrieve(Model model) {
		PatientVO patntCTF = service.retrieveCTF("REC0001");
		
		model.addAttribute("patntCTF", patntCTF);
		
		return "clinic/CTF";
	}
	
	// 진료 - 소견서 작성
	@PostMapping("referralRetrieve1.do")
	public String referralInsert(Model model, @ModelAttribute("ctfdoc") CtfDocVO ctfdoc, Errors errors)  {

		String logicalViewName = null;
		if(!errors.hasErrors()) {
			boolean result = service.createCtfdoc(ctfdoc);
			if(result) {
				logicalViewName = "clinic/CTF";
			}else {
				model.addAttribute("message", "서버 오류, 잠시 뒤 다시 시도하세요.");
				logicalViewName = "clinic/CTF";
			}
		}else {
			logicalViewName = "clinic/CTF";
		}
		
		return logicalViewName;
	}
	
	// 진료 - 진단서 서식 조회
	@GetMapping("certificateRetrieve.do")
	public String certificateRetrieve() {
		return "clinic/clinic";
	}
	
	// 진료 - 진단서 서식 작성
	@GetMapping("certificateInsert.do")
	public String certificateInsert() {
		return "clinic/clinic";
	}
	
	// 진료 - 진료의뢰서 서식 조회
	@GetMapping("treatmentReqRetrieve.do")
	public String treatmentReqRetrieve() {
		return "clinic/clinic";
	}
	
	// 진료 - 진료의뢰서 서식 작성
	@GetMapping("treatmentReqInsert.do")
	public String treatmentReqInsert() {
		return "clinic/clinic";
	}
}
