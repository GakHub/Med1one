package kr.or.ddit.sales.controller;

import java.util.List;
import javax.inject.Inject;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.or.ddit.employee.service.EmployeeService;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.medical.administ.service.AdministService;
import kr.or.ddit.medical.hospital.service.HospitalService;
import kr.or.ddit.medical.hospital.vo.HospitalizationVO;
import kr.or.ddit.medical.patient.service.PatientService;
import kr.or.ddit.medical.receive.service.ReceiveService;
import kr.or.ddit.medical.receive.vo.ReceiveVO;
import kr.or.ddit.medical.vo.PatientVO;
import kr.or.ddit.medical.vo.PatntStatVO;
import kr.or.ddit.sales.service.SalesService;
import kr.or.ddit.sales.vo.SalesVO;

@Controller
@RequestMapping("/sales")
public class SalesChartController {


	@Inject
	private ReceiveService recService;
	@Inject
	private	SalesService salesService;
	
	@Inject
	private	AdministService adService;
	
	@Inject
	private	EmployeeService empService;
	
	@Inject
	private	PatientService cntService;
	
	@Inject
	private HospitalService hospitalService;
	
	@GetMapping("chartView.do")
	public String chartView() {
		return "sales/salesChart";
	}
	
	@GetMapping(value = "salesChart.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<SalesVO> salesChart() {
		List<SalesVO> totalQuarterSales = salesService.retrieveQuarterSales();
		return totalQuarterSales;
			
	}
	
	@GetMapping(value = "salesMonthChart.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<SalesVO> salesMonthChart() {
		List<SalesVO> totalMonthSales = salesService.retrieveMonthSales();
		return totalMonthSales;
			
	}
	

	@GetMapping(value = "salesMonthChart2.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<ReceiveVO> salesMonthChart2() {
		
		List<ReceiveVO> totalMonthSales = recService.retrieveTotalAmount();
		return totalMonthSales;
			
	}
	
	//부서별 매출액
	@GetMapping(value = "deptSalesChart.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<SalesVO> empQuarterSalesChart() {
		List<SalesVO> empQuarterSales = salesService.retrieveEmpQuarterSales();
		return empQuarterSales;
	}

	  
	//병원 총 매출액
	@GetMapping(value = "allSalesChart.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<SalesVO> allSalesChart() {
		List<SalesVO> allSales = salesService.retrieveSales();
		return allSales;
	}

	//부서별 직원 수
	@GetMapping(value = "deptEmpChart.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<EmployeeVO> deptEmpChart() {
		List<EmployeeVO> deptEmpList = empService.retrieveDeptEmp(); 
		return  deptEmpList;
	}
	
	//직군별 직원수
	@GetMapping(value = "jobEmpChart.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<EmployeeVO> jobEmpChart() {
		List<EmployeeVO> jobEmpList = empService.retrieveJobEmp(); 
		return  jobEmpList;
	}
	
	//월별 환자수
	@GetMapping(value = "countMonth.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatntStatVO> monthChart() {
		List<PatntStatVO> countMonthList = cntService.retrieveMonthPatntCount(); 
		return countMonthList;
	}
	
	//월별환자수
	@GetMapping(value = "countMonth2.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatientVO> monthChart2() {
		List<PatientVO> countMonthList = adService.retrieveMonthPatntCount(); //월별 환자수
		return countMonthList;
	}
	
	
	@GetMapping(value = "countYear.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatntStatVO> countYearChart() {
		List<PatntStatVO> countyearList = cntService.retrieveYearPatntCount(); //연도별 환자수
		return countyearList;
	}
	
	
	@GetMapping(value = "monthHospital.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<HospitalizationVO> monthHospitalChart() {
		List<HospitalizationVO> monthHospitalList = hospitalService.retrieveMonthHospitalCount(); //연도월별환자수
		return monthHospitalList;
	}
	
	@GetMapping(value = "yearHospital.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<HospitalizationVO> yearHospitalChart() {
		List<HospitalizationVO> yearHospitalList = hospitalService.retrieveYearHospitalCount(); //연도별 환자수
		return yearHospitalList;
	}
	
	
	@GetMapping(value = "totalHospital.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public int totalHospitalChart(@RequestParam("year") String year, @RequestParam("month") String month) {
		int monthCount = hospitalService.retrieveTotalHospitalCount(year, month);//특정연도월 입원환자수
		return monthCount;
	}
	
	
	@GetMapping(value = "totalPatnt.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public int totalPatntChart() {
	
		int patentCount = adService.retrievePatntCount();
		return patentCount;
	}

	@GetMapping(value = "localCount.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatientVO> localCountlChart() {
	
		List<PatientVO> localCount= adService.retrieveLocalPatntCount();
		return localCount;
	}
	
}