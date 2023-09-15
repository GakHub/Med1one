package kr.or.ddit.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // 하위 컨테이너 등록
public class IndexController {
	
	@RequestMapping("/index.do")
	public String index() {
		return "index"; 
	}
	
}
