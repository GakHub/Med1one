package kr.or.ddit.medical.receive.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.medical.clinc.vo.PresDocVO;
import kr.or.ddit.medical.examinate.vo.MdexmnVO;
import kr.or.ddit.medical.hospital.vo.HospitalizationVO;
import kr.or.ddit.medical.receive.service.ReceiveService;
import kr.or.ddit.medical.receive.vo.ReceiveVO;
import kr.or.ddit.medical.vo.ReceptionVO;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/receive")
@RequiredArgsConstructor
public class ReceiveController {

	@Inject
	private final ReceiveService service;

	// 수납 jsp 접근
	@GetMapping("receiveSearch.do")
	public String receiveSearch() {
		return "administ/receive";
	}

	// 수납영수증 jsp 접근
	@GetMapping("receiveBillView.do")
	public String receiveBillView() {
		return "administ/pop/receiveBill";
	}

	// 수납영수증 jsp 접근
	@GetMapping("receiveDocumentView.do")
	public String receiveDocumentView() {
		return "administ/pop/receiveDocument";
	}

	// 외래진료 수납대기 환자 조회
	@GetMapping(value = "receivePatientView.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<PresDocVO> patientView() {
		List<PresDocVO> patient = service.retrievePatientList();
		return patient;
	}

	// 검진 수납대기 환자 조회
	@GetMapping(value = "mdexPatientView.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<MdexmnVO> mdexPatientView() {
		List<MdexmnVO> patient = service.retrieveMdexList();
		return patient;
	}

	// 병동 수납대기 환자 조회
	@GetMapping(value = "hospitalPatientView.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<HospitalizationVO> hospitalPatientView() {
		List<HospitalizationVO> patient = service.retrieveHospitalList();
		return patient;
	}

	// 외래진료 환자 내역 조회
	@GetMapping(value = "patientOrderView.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<PresDocVO> patientOrderView(@RequestParam("recCode") String recCode) {
		List<PresDocVO> patient = service.retrievePatientClinicOrder(recCode);
		return patient;
	}

	// 입원 환자 내역 조회
	@GetMapping(value = "hospitalOrderView.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<HospitalizationVO> hospitalOrderView(@RequestParam("recCode") String recCode) {
		List<HospitalizationVO> patient = service.retrieveHospitalClinicOrder(recCode);
		return patient;
	}

	// 검진 환자 내역 조회
	@GetMapping(value = "mdexOrderView.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<MdexmnVO> mdexOrderView(@RequestParam("recCode") String recCode) {
		List<MdexmnVO> patient = service.retrieveMdexClinicOrder(recCode);
		return patient;
	}

	// 영수증 조회
	@GetMapping(value = "receiveBillView.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<ReceptionVO> receiveBillView(@RequestParam("recCode") String recCode) {
		List<ReceptionVO> patient = service.retrieveReceiveAmount(recCode);
		return patient;
	}

	// 수납 insert
	@GetMapping(value = "insertReceive.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public boolean insertReceive(@RequestParam("totalamt") int totalamt, @RequestParam("recvmtMth") String recvmtMth,
			@RequestParam("recCode") String recCode) {
		ReceiveVO rec = new ReceiveVO();
		rec.setTotalamt(totalamt);
		rec.setRecvmtMth(recvmtMth);
		rec.setRecCode(recCode);

		boolean receive = service.createReceive(rec);

		return receive;
	}

	// 제증명 보기
	@GetMapping(value = "receiveDocumentView.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<ReceptionVO> receiveDocumentView(@RequestParam("recCode") String recCode) {
		List<ReceptionVO> patient = service.retrieveDocument(recCode);
		return patient;
	}

	// 외래진료 수납대기 환자 검색
	@GetMapping(value = "receivePatientSearch.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<PresDocVO> patientSearchView(@RequestParam("what") String patntNm) {
		List<PresDocVO> patient = service.searchPatientList(patntNm);
		return patient;
	}

	// 외래진료 수납대기 환자 검색
	@GetMapping(value = "receiveDateSearch.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<PresDocVO> patientSearchDate(@RequestParam("date") String recDate) {
		List<PresDocVO> searchDate = service.searchPatientDate(recDate);
		
		return searchDate;
	}
}
