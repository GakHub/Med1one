package kr.or.ddit.medical.nurse.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.medical.nurse.service.NurseService;
import kr.or.ddit.medical.nurse.vo.NursenoteVO;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/nurse/")
@RequiredArgsConstructor
public class NurseNoteController {
	
	@Inject
	private final NurseService service;
	
	//전체간호일지 jsp 접근
	@GetMapping("nurseNoteAllList.do")
	public String nurseNoteAllListView(
		Model model
	){
		List<NursenoteVO> nursenote = service.retrieveAllNote();
		model.addAttribute("nursenote", nursenote);
		return "nurse/noteList/note";
	}

	//today 간호일지 출력
	@GetMapping(value="nurseList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<NursenoteVO> nurseList(
		@RequestParam("dayNote") String dayNote
	) {
		List<NursenoteVO> dayNoteList = service.retrieveDayNote(dayNote);
		return dayNoteList;
	}
	
	//간호일지 기록
	@PostMapping(value="nurseNoteInsert.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public boolean createNote(
		@RequestBody NursenoteVO note
		,Model model
	) {
		boolean noteRC = service.createNurseNote(note);
		model.addAttribute("note", note);
		return noteRC;
	}
	
	//이전 모든 간호일지기록 출력
//	@GetMapping(value="nurseNoteAllList1.do", produces = MediaType.APPLICATION_JSON_VALUE)
//	@ResponseBody
//	public List<NursenoteVO> nurseNoteAllList(
//			Model model
//	){
//		List<NursenoteVO> nursenote = service.retrieveAllNote();
//		model.addAttribute("nursenote", nursenote);
//		return nursenote;
//	}
}
