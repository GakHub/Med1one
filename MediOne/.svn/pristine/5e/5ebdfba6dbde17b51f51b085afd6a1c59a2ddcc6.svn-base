package kr.or.ddit.File.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.File.service.AtchFileService;
import kr.or.ddit.File.vo.AtchFileDtlVO;

@Controller
public class AtchDownloadController {

	@Inject
	private AtchFileService atchService;
	
	@RequestMapping("/board/download.do")
	public String download(AtchFileDtlVO condition, Model model) {
		AtchFileDtlVO metadata = atchService.retriebeAtchFileDetail(condition);
		model.addAttribute("atchFile",metadata);
		return "downloadView";
	}
}
