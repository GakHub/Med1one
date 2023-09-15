package kr.or.ddit.employee.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.common.controller.ServiceResult;
import kr.or.ddit.employee.service.EmployeeService;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.validate.groups.UpdateGroup;

@Controller
@RequestMapping("/employee")
public class empUpdateController {
	
	@Inject
	private EmployeeService service;

	
	//한 사람의 정보만 필요
	@GetMapping("/empUpdate.do")
	public String getHandler(
		Model model
		, @RequestParam("who") String empNo // 로그인 완성되면 권한으로 바꿔야댐
	) {
		EmployeeVO employee = service.retrieveEmployee(empNo);
		model.addAttribute("employee", employee);
		return "mypage/mypageForm";
	}


	@PostMapping("/empUpdate.do")
	public String postHandler(
		Model model
		, @Validated(UpdateGroup.class) @ModelAttribute("employee") EmployeeVO employee
		, BindingResult errors
	) {
		String logicalViewName = null;
		
		if(!errors.hasErrors()) {
			ServiceResult result = service.modifyEmp(employee);
			switch(result) {
			case INVALIDPASSWORD:
				model.addAttribute("message", "비밀번호 오류");
				logicalViewName = "mypage/mypageForm";
				break;
			case OK:
				logicalViewName = "redirect:/mypage/mypage.do?who="+employee.getEmpNo();
//				logicalViewName = "redirect:/mypage.do?who="+employee.getEmpNo();
				break;
			default:
				model.addAttribute("message", "서버 오류, 잠시 뒤 다시 시도하시오.");
				logicalViewName = "mypage/mypageForm";
				break;
			}
		}else {
			logicalViewName = "mypage/mypageForm";
		}
			return logicalViewName;
	}
	
	//otp번호 update
	@GetMapping(value = "/updateOtp.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public boolean updateOtp(HttpSession session, @RequestParam("secret") String secret) {
	    String empNo = (String) session.getAttribute("empNo");
	    
	    Map<String, Object> map = new HashMap<String, Object>();
	    
	    map.put("empOtp", secret);
	    map.put("empNo", empNo);
	    
	    boolean cnt = service.motifyOtpNum(map);
	    
	    return cnt;
	}
}
