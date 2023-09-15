package kr.or.ddit.medical.nurse.controller;

import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.employee.service.EmployeeService;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.employee.vo.EmployeeVOWrapper;
import kr.or.ddit.medical.nurse.service.NurseService;
import kr.or.ddit.medical.nurse.vo.DoctorDtlVO;
import kr.or.ddit.medical.nurse.vo.NurseDtlVO;
import kr.or.ddit.medical.nurse.vo.ReservationVO;
import kr.or.ddit.medical.nurse.vo.wrapper.DoctorSchdulVOWrapper;
import kr.or.ddit.medical.nurse.vo.wrapper.FullcalenderEvent;
import kr.or.ddit.medical.nurse.vo.wrapper.FullcalenderEventColor;
import kr.or.ddit.medical.nurse.vo.wrapper.NurseSchdulVOWrapper;
import kr.or.ddit.medical.nurse.vo.wrapper.ReserSchdulVOWrapper;

@Controller
@RequestMapping("/nurse/")
public class ScheduleRetrieveController {
	
	@Inject
	private NurseService service;
	
	@Inject
	private EmployeeService empService;
	

	// 근무일정 - 의사
	@GetMapping(value = "docScheduleList.do", produces = MediaType.TEXT_HTML_VALUE)
	public String docScheduleList() {	
		return "nurse/schedule";
	}
	
	// 근무일정 - 의사
	@GetMapping(value = "docScheduleList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<FullcalenderEventColor<DoctorDtlVO>> docScheduleListDataSource() {
		List<DoctorDtlVO> doctorList = service.retrieveDoctorList();
		return doctorList.stream().map(DoctorSchdulVOWrapper::new).collect(Collectors.toList());
	}
	
	// 근무일정 - 간호사
	@GetMapping(value = "nurScheduleList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<FullcalenderEventColor<NurseDtlVO>> nurScheduleListDataSource() {
		List<NurseDtlVO> nurseList = service.retrieveNurseList();
		return nurseList.stream().map(NurseSchdulVOWrapper::new).collect(Collectors.toList());
		
		
		
	}
	
	
	// 근무일정 - 부서별 의사
		@GetMapping(value = "docDeptScheduleList.do", produces = MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody
		public List<FullcalenderEventColor<DoctorDtlVO>> docScheduleListDataSource(@RequestParam("fcltyCodeDoc") String fcltyCode) {
			List<DoctorDtlVO> doctorList = service.retrieveDoctorDeptList(fcltyCode);
			return doctorList.stream().map(DoctorSchdulVOWrapper::new).collect(Collectors.toList());
		}
		
		// 근무일정 - 부서별 간호사
		@GetMapping(value = "nurDeptScheduleList.do", produces = MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody
		public List<FullcalenderEventColor<NurseDtlVO>> nurScheduleListDataSource(@RequestParam("fcltyCodeNur") String fcltyCode) {
			List<NurseDtlVO> nurseList = service.retrieveNurseDeptList(fcltyCode);
			return nurseList.stream().map(NurseSchdulVOWrapper::new).collect(Collectors.toList());
		
		}
		
		//부서별 환자 예약 조회
		@GetMapping(value = "reserList.do", produces = MediaType.TEXT_HTML_VALUE)
		public String resScheduleList() {	
			return "clinic/clinicHospital";
		}
		
		//부서별 환자 예약 조회
		@GetMapping(value = "reserList.do", produces = MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody
		public List<FullcalenderEventColor<ReservationVO>> DeptReservationList(Authentication authentication) {
			EmployeeVOWrapper wrapper = (EmployeeVOWrapper)authentication.getPrincipal();
			EmployeeVO detail = empService.retrieveEmployee(wrapper.getRealUser().getEmpNo());
			String code = detail.getDeptCode();
			String fcltyCode = "";
			
			if(code.equals("PM")){
				fcltyCode = "A";
			}else if(code.equals("GI")) {
				fcltyCode = "B";
			}else if(code.equals("HT")) {
				fcltyCode = "D";
			}else if(code.equals("DR")) {
				fcltyCode = "C";
			}else if(code.equals("IF")) {
				fcltyCode = "E";
			}else if(code.equals("ME")) {
				fcltyCode = "F";
			}else if(code.equals("TC")) {
				fcltyCode = "G";
			}
			
			List<ReservationVO> reserList = service.retrieveReserList(fcltyCode);
			
			return reserList.stream().map(ReserSchdulVOWrapper::new).collect(Collectors.toList());
		}

//			

}