package kr.or.ddit.employee.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/")
public class AdminTreeController {

	@GetMapping("treeView.do")
	public String treeView() {
		return "medi/tree";
	}
	
	@GetMapping("treeDetail.do")
	public String treeDetail() {
		return "medi/tree";
	}
	
	@GetMapping("treeInsert.do")
	public String treeInsert() {
		
		return "medi/tree";
	}
	
	@GetMapping("treeUpdate.do")
	public String treeUpdate() {
		return "medi/tree";
	}
	
	@GetMapping("treeDelete.do")
	public String treeDelete() {
		return "medi/tree";
	}
}
