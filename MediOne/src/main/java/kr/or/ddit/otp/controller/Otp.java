package kr.or.ddit.otp.controller;

import java.util.Scanner;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.employee.service.EmployeeService;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.employee.vo.EmployeeVOWrapper;
import kr.or.ddit.otp.Utils;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
@RequestMapping("/otp")
public class Otp {

	private final EmployeeService service;
	
	@GetMapping("otp.do")
	public String otp(
		Model model
		, Authentication authentication
	) {
//		String empName = authentication.getName();
		EmployeeVOWrapper wrapper = (EmployeeVOWrapper)authentication.getPrincipal();
		EmployeeVO detail = service.retrieveEmployee(wrapper.getRealUser().getEmpNo());
		String generatedOTP = Utils.getTOTPCode(detail.getEmpOtp());
		System.out.println(generatedOTP);
		model.addAttribute("otpNum", generatedOTP);
		return "otp/otp";
	}
	
//	@PostMapping("/verify-otp")
//    public ModelAndView verifyOTP(@RequestParam String otp) {
//        ModelAndView modelAndView = new ModelAndView();
//        
//        String secretKey = "SSTHQIYOIB53IBZUFQOZHXJHOGSSPHKY"; // 시크릿 키 넣기
//        String generatedOTP = Utils.getTOTPCode(secretKey);
//
//        if (otp.equals(generatedOTP)) {
//            modelAndView.addObject("result", "2차 인증 성공");
//        } else {
//            modelAndView.addObject("result", "2차 인증 실패");
//        }
//        
//        modelAndView.setViewName("result"); // 결과를 보여줄 JSP 페이지 이름
//        return modelAndView;
//    }
	/**
	 * otp 바코드 등록
	 * @return
	 */
	@GetMapping(value = "/insertOtp.do")	
	public String otpView( @RequestParam("who") String empNo, Model model, HttpSession session ) {
//		EmployeeVOWrapper wrapper = (EmployeeVOWrapper)authentication.getPrincipal();
//		EmployeeVO detail = service.retrieveEmployee(wrapper.getRealUser().getEmpNo());
//		String empName = detail.getEmpNm();
		
		Totp totp = new Totp();
        String secret = totp.generateSecret(empNo);
        String qrUrl = totp.getDataUrl();

//        session.setAttribute("secret", secret);
        session.setAttribute("empNo", empNo);
        model.addAttribute("qrUrl" , qrUrl);
        model.addAttribute("secret" , secret);
        
		return "auth/ajax/otpBarcode";
	}
}
