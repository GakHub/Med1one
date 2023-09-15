package kr.or.ddit.medical.nurse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/nurse/")
public class ClinicRetrieveController {

	// 진료: 의사 근무일정 조회
	@GetMapping("docScheduleSearch.do")
	public String docScheduleSearch() {
		return "nurse/nurseClinic";
	}
	
	// 진료 : 진료대기실 조회
	@GetMapping("clinicRetrieve.do")
	public String clinicRetrieve() {
		return "nurse/nurseClinic";
	}
	
	// 진료 : 대기환자 목록
	@GetMapping("patientList.do")
	public String patientList() {
		return "nurse/nurseClinic";
	}
	
	// 진료 : 진료실예약현황 조회
	@GetMapping("reservationRetrieve.do")
	public String reservationRetrieve() {
		return "nurse/nurseClinic";
	}
	
	// 진료 : 예약하기  보류??
	@GetMapping("reservationInsert.do")
	public String reservationInsert() {
		return "nurse/schedule";
	}
}
