package kr.or.ddit.employee.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/")
public class AdminChartController {

	
	@GetMapping("/researchPatient.do")
	public String researchPatient() {
		return "medi/ResearchChart";
	}
	
	@GetMapping("/researchSales.do")
	public String researchSales() {
		return "medi/ResearchChart";
	}
	
	
}
