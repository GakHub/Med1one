package kr.or.ddit.medical.nurse.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.medical.clinc.vo.MedicineVO;
import kr.or.ddit.medical.clinc.vo.NarcoticsVO;
import kr.or.ddit.medical.nurse.service.MedicineService;
import lombok.RequiredArgsConstructor;
import retrofit2.http.GET;

@Controller
@RequestMapping("/nurse/")
@RequiredArgsConstructor
public class MedicineController {

	@Inject
	private final MedicineService service;
	
	@ModelAttribute("medicine")
	public MedicineVO medicine() {
		
		return new MedicineVO();
	}
	
	// jsp 접근 메서드
	@GetMapping("medicineManage.do")
	public String medicineManage(Model model) {
		List<NarcoticsVO> narList = service.retrieveNarcoticsList();
		model.addAttribute("narList", narList);
		return "nurse/medicine";
	}
	
	// 약품 관리 리스트(+약품 검색)
	@GetMapping(value = "medicineSearch.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<MedicineVO> MedicineList(Model model ,@RequestParam("what") String medicine) {
		List<MedicineVO> mediList = service.retrieveMedicineList(medicine);
		model.addAttribute("mediList", mediList);
		return mediList;
	}
	
	// 마약류 리스트 조회
	@GetMapping(value = "narcoticsList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<NarcoticsVO> NarcoticsList(Model model) {
		List<NarcoticsVO> narList = service.retrieveNarcoticsList();
		model.addAttribute("narList", narList);
		return narList;
	}
}
