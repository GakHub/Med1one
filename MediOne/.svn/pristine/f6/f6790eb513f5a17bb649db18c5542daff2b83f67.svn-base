package kr.or.ddit.medical.clinc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.medical.clinc.service.InspectionService;
import kr.or.ddit.medical.clinc.vo.ClinicVO;
import kr.or.ddit.medical.clinc.vo.InspOrderVO;
import kr.or.ddit.medical.clinc.vo.InspRsltVO;
import kr.or.ddit.medical.clinc.vo.PresDocVO;
import kr.or.ddit.medical.vo.PatntStatVO;
import lombok.RequiredArgsConstructor;

/**
 * 의사 - 검사
 * 
 * @author
 *
 */
@Controller
@RequestMapping("/Inspection")
@RequiredArgsConstructor
public class InspectionController {

	@Inject
	private final InspectionService service;

	// 검사실 접근 GET 메서드
	@GetMapping("InspectionPage.do")
	public String InspectionPage() {
		return "medi/inspection";
	}

	// 환자 조회
	@GetMapping(value = "inspPatList.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<PatntStatVO> inspPatList(@RequestParam() String fcltyCode) {
		List<PatntStatVO> patient = service.retrieveInspPatntStat(fcltyCode);
		return patient;
	}

	// 검사대기 -> 검사중 환자위치정보 insert
	@GetMapping(value = "inspPatStatInsert.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public boolean inspPatStatInsert(@RequestParam("recCode") String recCode
										,@RequestParam("fcltyCode") String fcltyCode) {

		PatntStatVO patnt = new PatntStatVO();
		patnt.setRecCode(recCode);
		patnt.setFcltyCode(fcltyCode);

		boolean patntStat = service.createInspStat(patnt);
		return patntStat;
	}

	// 환자의 검사목록 조회
	@GetMapping(value = "inspList.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<InspOrderVO> inspList(@RequestParam("recCode") String recCode) {
		List<InspOrderVO> inspList = service.retrieveInspOrdList(recCode);
		return inspList;
	}
	
	//셀렉트 박스 눌러서 해당 검사실로 보내기 
	@GetMapping(value = "fcltyInfoInsert.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public boolean fcltyInfoInsert(@RequestParam("recCode")String recCode
									,@RequestParam("fcltyCode")String fcltyCode) {
		PatntStatVO patnt = new PatntStatVO();
		patnt.setRecCode(recCode);
		patnt.setFcltyCode(fcltyCode);
		
		boolean patntStat = service.createFctInfo(patnt);
		return patntStat;
	}
	
	//환자의 진료내역 조회
	@GetMapping(value = "clinicView.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ClinicVO clinicView(@RequestParam("recCode")String recCode) {
		ClinicVO clinic = service.retrieveClinic(recCode);
		
		return clinic;
	}
	
	// 환자의 검사목록 조회
	@GetMapping(value = "pastPresView.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<PresDocVO> pastPresView(@RequestParam("patntCode") String patntCode) {
		List<PresDocVO> presList = service.retrievePastPres(patntCode);
		return presList;
	}
	
	//셀렉트 박스 눌러서 해당 검사실로 보내기 
	@GetMapping(value = "selectInsRstYn.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public Map<String, Boolean> selectInsRstYn(@RequestParam("recCode")String recCode
											,@RequestParam("inspCode")String inspCode) {
		 Map<String, Boolean> response = new HashMap<>();
		
		 boolean isCompleted = service.retrieveInsRstYn(recCode, inspCode);
		 response.put("completed", isCompleted);
		 
		return response;
	}
	
	//검사결과 insert
	@GetMapping(value = "resultInsert.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public boolean resultInsert(@RequestParam("inspCode")String inspCode
								,@RequestParam("inspRsltCn")String inspRsltCn
								,@RequestParam("recCode")String recCode
								,@RequestParam("clinicCode")String clinicCode
								,@RequestParam("empNo")String empNo
								) {
		InspRsltVO inspRslt = new InspRsltVO();
		inspRslt.setInspCode(inspCode);
		inspRslt.setInspRsltCn(inspRsltCn);
		inspRslt.setRecCode(recCode);
		inspRslt.setClinicCode(clinicCode);
		inspRslt.setDocEmpNo(empNo);
		
			
		boolean result = service.createInspResult(inspRslt);
		return result;
	}
	
	
	//검사실 오기전에 있던 진료실 찾기
	@GetMapping(value = "clinicSearch.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public PatntStatVO clinicSearch(@RequestParam("recCode") String recCode) {
		PatntStatVO clinic = service.searchClinicRoom(recCode);
			
		return clinic;
	}
	
	
	//원래 있던 진료실로 다시 보내기
	@GetMapping(value = "insertClinicRoomBack.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public boolean insertClinicRoomBack(@RequestParam("recCode")String recCode
										,@RequestParam("fcltyCode")String fcltyCode) {
		PatntStatVO patnt = new PatntStatVO();
		patnt.setRecCode(recCode);
		patnt.setFcltyCode(fcltyCode);
			
		boolean patntStat = service.createPatClinicRoom(patnt);
		return patntStat;
	}

}
