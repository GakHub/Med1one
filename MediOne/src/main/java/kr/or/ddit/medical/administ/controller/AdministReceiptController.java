package kr.or.ddit.medical.administ.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.medical.administ.service.AdministService;
import kr.or.ddit.medical.vo.PatientVO;
import kr.or.ddit.medical.vo.PatntStatVO;
import kr.or.ddit.medical.vo.ReceptionVO;
import lombok.RequiredArgsConstructor;
import retrofit2.http.GET;

@Controller
@RequestMapping("/administ")
@RequiredArgsConstructor
public class AdministReceiptController {
	
	@Inject
	private final AdministService service;
	
	@ModelAttribute("patient")
	public PatientVO patient() {
		return new PatientVO();
	}
	
	// jsp 접근 메서드
	@GetMapping("patientReceiptView.do")
	public String patientRetrieve(Model model) {
		return "administ/patientReceipt";
	}
	
	/**
	 * 환자 접수
	 * @param model
	 * @param errors
	 * @param patient
	 * @return
	 */
	@PostMapping(value = "patientReceiptView.do", produces = MediaType.APPLICATION_JSON_VALUE)
	public String getPostPatient(
			@ModelAttribute("symptom") ReceptionVO symptom
			, BindingResult errors
			, Model model) {

		String logicalViewName = null;
		boolean result = false;

		if (!errors.hasErrors()) {
			result = service.createPatientReceipt(symptom);

			if (result == true) {
				logicalViewName = "administ/patientReceipt";
			} else {
				model.addAttribute("message", "환자 접수 중 오류 발생.");
				logicalViewName = "administ/patientReceipt";
			}
		} else {
			logicalViewName = "administ/patientReceipt";
		}
		return logicalViewName;
	}
	
	/**
	 * 접수 코드 여부
	 * @param patntCode
	 * @return
	 */
	@GetMapping(value = "patientRecCodeYN.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatntStatVO> patientRecCodeYN(
		@RequestParam("patntCode") String patntCode	
	) {
		List<PatntStatVO> recCodeYN = service.retrieveRecCodeYN(patntCode);
		return recCodeYN;
	}
	
	/**
	 * 수납완료 여부
	 * @param patntCode
	 * @return
	 */
	@GetMapping(value = "patntStorageYN.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatntStatVO> patientStorageYN(
		@RequestParam("patntCode") String patntCode
		){
		List<PatntStatVO> storageYN = service.retrieveStorageYN(patntCode);
		return storageYN;
	}
	
	
	
	/**
	 * 환자 검색 창 접근 jsp(새창)
	 * @return
	 */
	@GetMapping(value = "/patientSearch.do")
	public String receiptView(Model model) {
		return "administ/ajax/patientCheck";
	}

	
	/**
	 * 환자 검색
	 * @param model
	 * @param patntNm
	 * @return
	 */
	@GetMapping(value = "/patientSearch.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatientVO> checkView(Model model, @RequestParam("patntNm") String patntNm ) {
		List<PatientVO> patientList = service.retrievePatientList(patntNm);
		model.addAttribute("patientList", patientList);
		return patientList;
	}
	
	// jsp 접근 메서드
	/**
	 * 초진 환자 등록
	 * @param model
	 * @return
	 */
	@GetMapping("patientInsert.do")
	public String patientInsert(Model model) {
		return "administ/ajax/patientInsert";
	}
		
	/**
	 * 초진 환자 등록
	 * @param model
	 * @param errors
	 * @param patient
	 * @return
	 */
	@PostMapping(value = "patientInsert.do", produces = MediaType.APPLICATION_JSON_VALUE)
	public String getPostPatient(
			 @ModelAttribute("patient") PatientVO patient
				, BindingResult errors
				, Model model) {
				
		String logicalViewName = null;
		boolean result = false;
			
		if(!errors.hasErrors()) {
			result = service.createPatient(patient);
				
			if(result == true) {
				logicalViewName = "administ/ajax/patientInsert";
			}else {
				model.addAttribute("message", "환자 등록 중 오류 발생.");
				logicalViewName = "administ/ajax/patientInsert";
			}
		}else {
			logicalViewName = "administ/ajax/patientInsert";
		}
		return logicalViewName;
	}
	
	/**
	 * 접수 한 사람들(상태변경)
	 */
	@GetMapping(value = "patientStat.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public boolean insertReceipt(
			   @RequestParam("recCode") String recCode
			) {
			 
			PatntStatVO patnt = new PatntStatVO();
			patnt.setRecCode(recCode);
			
			
			boolean patntStat = service.createReceipt(patnt);
			
			return patntStat;
	}
	
	/**
	 * 환자 상태 조회
	 * @param fcltyCode
	 * @return
	 */
	@GetMapping(value = "clinicRetrieve.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatntStatVO> clinicRetrieve() {
		List<PatntStatVO> statList = service.retrievePatntStatList();
		return statList;
	}
	
	/**
	 * 환자 상태 변경(005)
	 * @param recCode
	 * @param fcltyCode
	 * @param statCode
	 * @return
	 */
	@GetMapping(value = "patientInsertStat.do", produces = MediaType.APPLICATION_JSON_VALUE )
	@ResponseBody
	public boolean patientStatInsert(
			@RequestParam("recCode") String recCode
			, @RequestParam("fcltyCode") String fcltyCode
			) {
		
		PatntStatVO patnt = new PatntStatVO();
		patnt.setRecCode(recCode);
		patnt.setFcltyCode(fcltyCode);
		
		
		boolean patntStat = service.createPatntStat(patnt);
		
		return patntStat;
	}
	
	/**
	 * 환자 상태 변경(건강검진, 013)
	 * @param recCode
	 * @param fcltyCode
	 * @param statCode
	 * @return
	 */
	@GetMapping(value = "checkupInsertStat.do", produces = MediaType.APPLICATION_JSON_VALUE )
	@ResponseBody
	public boolean checkupStatInsert(
			@RequestParam("recCode") String recCode
			, @RequestParam("fcltyCode") String fcltyCode
			) {
		
		PatntStatVO patnt = new PatntStatVO();
		patnt.setRecCode(recCode);
		patnt.setFcltyCode(fcltyCode);
		
		
		boolean patntStat = service.createcheckupStat(patnt);
		
		return patntStat;
	}
	
	/**
	 * 부서별 조회
	 * @param fcltyCode
	 * @return
	 */
	@GetMapping(value = "patientDept.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatntStatVO> fcltyList(
			@RequestParam("deptSelect") String fcltyCode
	) {
		List<PatntStatVO> fcltyList = service.retrievefcltyList(fcltyCode);
		return fcltyList;
		
		
		
	}
}
