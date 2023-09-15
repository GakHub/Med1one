package kr.or.ddit.employee.controller;

import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.File.vo.AtchFileDtlVO;
import kr.or.ddit.employee.service.EmployeeService;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.employee.vo.EmployeeVOWrapper;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
@RequestMapping("/mypage")
public class MypageController {

	private final EmployeeService service;
	
	@GetMapping("mypage.do")
	public String mypage(
		Model model
		, Authentication authentication
	) {
		String empName = authentication.getName();
		EmployeeVOWrapper wrapper = (EmployeeVOWrapper)authentication.getPrincipal();
		EmployeeVO detail = service.retrieveEmployee(wrapper.getRealUser().getEmpNo());
		model.addAttribute("employee", detail);
		return "mypage/mypage";
	}
	
	@GetMapping("mypageUpdate.do")
	public String mypageUpdate(@RequestParam(name="who") String empNo) {
		return "mypage/mypageForm";
	}
	
	
	@GetMapping(value="imgNameSearch.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public AtchFileDtlVO selectImgName(@RequestParam("empNo") String empNo) {
		AtchFileDtlVO name = service.retrieveAtch(empNo);
		return name;
	}
}
