package kr.or.ddit.employee.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.employee.admin.service.AdminService;
import kr.or.ddit.employee.vo.AuthorizationReqVO;
import kr.or.ddit.validate.groups.InsertGroup;
import lombok.RequiredArgsConstructor;

@RequestMapping("/auth")
@RequiredArgsConstructor
@Controller
public class AuthorizationReqController {
	
	@Inject
	private final AdminService service;
	
	
	@ModelAttribute("auth")
	public AuthorizationReqVO auth() {
	    return new AuthorizationReqVO();
	}
	
	
	@GetMapping("/authSignup.do")
	public String getAuthSignUp() {
		return "auth/auth-signup";
	}
	
	@GetMapping(value = "/checkId.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public boolean checkEmpId(@ModelAttribute("empId") String empId) {
		boolean isDuplicate =  service.checkDuplicateEmpNo(empId);
		
		return !isDuplicate;
	}
	
	@PostMapping("/authSignup.do")
	public String postAuthSigup(
		@Validated(InsertGroup.class) @ModelAttribute("auth") AuthorizationReqVO auth
		, Errors errors
		,HttpServletRequest request
		, Model model
	) {

		// gpt보고 추가한부분 
		boolean isDuplicate = service.checkDuplicateEmpNo(auth.getEmpNo());
		
		 if (isDuplicate) {
		        model.addAttribute("duplicateEmpNo", true);
		        return "auth/auth-signup";
		    }
		
		// 여기까
		
		
		
		// 2. - 이게 된거였음 
	    // 중복 신청이 아닌 경우, 사용자 신청을 처리
	    boolean result = service.createAuth(auth);
	    if (result) {
	        // 세션에 가입 성공 메시지 저장
	        request.getSession().setAttribute("message", "회원가입이 완료되었습니다. 가입 승인을 기다려주세요.");
	        return "redirect:/otp/insertOtp.do?who=" + auth.getEmpNo();  
	    } else {
	        return "auth/auth-signup"; // 가입 실패 시 신청 페이지로 이동
	    }
    }
	
	
	
}

