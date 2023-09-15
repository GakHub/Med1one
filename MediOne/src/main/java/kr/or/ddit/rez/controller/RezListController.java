package kr.or.ddit.rez.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.medical.nurse.vo.ReservationVO;
import kr.or.ddit.rez.service.RezService;

@Controller
@RequestMapping("/rez")
public class RezListController {

	@Inject
	private RezService rezService;

	// 예약번호로 예약정보 가져오기
	@GetMapping(value = "selectRez.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ReservationVO selectRez(@RequestParam("resveNum") String resveNum) {

		// 예약번호로 예약 데이터 찾기
		ReservationVO rezList = rezService.retrieveMyRez(resveNum);
		return rezList;

	}

	// 예약 수정
	@PostMapping(value = "updateRez.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Map<String, String> updateRez(@RequestBody Map<String, String> requestData, Model model) {
		
		Map<String, String> response = new HashMap<>();
		
		
		 String beforeResveDate = requestData.get("resveDate");
		 String resveTime = requestData.get("resveTime");
		 String fcltyCode = requestData.get("fcltyCode");
		 String resveNum = requestData.get("resveNum");
		 String resveEndtime = requestData.get("resveEndtime");
		 String patntCode = requestData.get("patntCode");
		    
		

		String resveDate = beforeResveDate.replace("-", "");

		boolean myRezConfirm = rezService.retriveUpdateMyRezConfirm(resveDate, fcltyCode, resveTime, patntCode); // 동시간에 내 예약 가능
		
		boolean confirm = rezService.retriveUpdateRezConfirm(resveDate, fcltyCode, resveTime); // 동시간에 다른 사람 예약 여부 true 면 예약 가능
		
																												
		
		if (myRezConfirm) { //false 예약 가능
			 response.put("result", "duplication"); //기존 예약 정보와 중복
			 
		} else if(confirm) { //false 예약가능
			  response.put("result", "full");//선택한 일정 예약 마감
			 
		}else {
			
		// 선택한 일정으로 예약이 가능할 경우 예약 변경 진행
		// 예약번호로 예약 데이터 찾기
		ReservationVO rezList = rezService.retrieveMyRez(resveNum);
	
		rezList.setFcltyCode(fcltyCode); // 첫 번째 요소에 진료과 설정
		rezList.setResveDate(resveDate); // 첫 번째 요소에 예약일자 설정
		rezList.setResveTime(resveTime);// 예약시간
		rezList.setResveEndtime(resveEndtime);// 예약종료시간

	 
		boolean update=false;
	    update = rezService.modifyRez(rezList);
		
		
		if (update) {
			  response.put("result", "success"); //예약 수정 성공
		} else {
			  response.put("result", "fail"); //예약 수정 실패
		}
		
		System.out.println("resp>>>>>>" + response);
		}
		
		return response;
	}
	
	

	// 예약 삭제
		
		@PostMapping(value = "deleteRez.do", produces = MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody
		public Map<String, String> deleteRez(@RequestBody Map<String, String> requestData, Model model) {
			
		Map<String, String> response = new HashMap<>();

		String resveNum = requestData.get("resveNum");
		// 예약번호로 예약 데이터 찾기-> 날짜 리턴
		ReservationVO rezList = rezService.retrieveMyRez(resveNum);

		//예약번호로 예약 데이터 찾기-> 날짜 리턴
		String resveDate = rezList.getResveDate();

		// 삭제작업 수행
		boolean result = rezService.removeRez(resveNum);
		if(result) {
			  response.put("result", resveDate);
			
		}else {
			  response.put("result", "fail");
		}
		
	   return response;
}
	
	
	
	// 전체예약정보
	@RequestMapping("rezList.do")
	public void rezList(Model model) {
		
		List<ReservationVO> rezList = rezService.retriveAllRez();

		// 오늘 날짜
	    Date today = new Date();
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
	    String todayStr = dateFormat.format(today);
		
		
		//아우터조인 중복레코드 제거
		List<ReservationVO> uniqueRezList = new ArrayList<>();

		for (ReservationVO rez : rezList) {
			boolean isDuplicate = false;

			  // 현재 검사 중인 rez 객체가 과거 날짜인지 확인
	        if (rez.getResveDate() != null && !rez.getResveDate().isEmpty()) {
	            if (rez.getResveDate().compareTo(todayStr) >= 0) {
	                // 현재 예약이 오늘 이후의 날짜인 경우만 고려
	                // 중복 여부를 확인
	                for (ReservationVO uniqueRez : uniqueRezList) {
	                    if (rez.getResveNum().equals(uniqueRez.getResveNum())) {
	                        isDuplicate = true;
	                        break;
	                    }
	                }
			// 중복이 아니라면 uniqueRezList에 추가
			if (!isDuplicate) {
				uniqueRezList.add(rez);
			  }
	            }
	        }
	    }
		//아우터조인 중복레코드 제거
		
	
		model.addAttribute("rezList", uniqueRezList);
		System.out.println("레즈리스트~?"+uniqueRezList);
	}


	
	// 진료실 전체예약정보(로드용)
	@GetMapping(value = "allRezList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<ReservationVO> allRezList(
			) {
		List<ReservationVO> rezList = rezService.retriveAllRez();

		
		//아우터조인 중복레코드 제거
		List<ReservationVO> uniqueRezList = new ArrayList<>();

		for (ReservationVO rez : rezList) {
			boolean isDuplicate = false;

			// 현재 검사 중인 rez 객체와 중복 여부를 확인
			for (ReservationVO uniqueRez : uniqueRezList) {
				if (rez.getResveNum().equals(uniqueRez.getResveNum())) {
					isDuplicate = true;
					break;
				}
			}
			// 중복이 아니라면 uniqueRezList에 추가
			if (!isDuplicate) {
				uniqueRezList.add(rez);
			}
		}
		//아우터조인 중복레코드 제거
		
		
	return rezList;
	}
	
	
	
	// 진료실 전체예약정보
	@GetMapping(value = "clinicRezList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<ReservationVO> rezClinicList(

	) {
		List<ReservationVO> clinicRezList = rezService.retriveClinicAllRez();
		
		
		//아우터조인 중복레코드 제거
		List<ReservationVO> uniqueRezList = new ArrayList<>();
		for (ReservationVO rez : clinicRezList) {
			boolean isDuplicate = false;

			// 현재 검사 중인 rez 객체와 중복 여부를 확인
			for (ReservationVO uniqueRez : uniqueRezList) {
				if (rez.getResveNum().equals(uniqueRez.getResveNum())) {
					isDuplicate = true;
					break;
				}
			}
			// 중복이 아니라면 uniqueRezList에 추가
			if (!isDuplicate) {
				uniqueRezList.add(rez);
			}
		}
		//아우터조인 중복레코드 제거
		
		return uniqueRezList;
	}

	// 검사실 전체예약정보
	@GetMapping(value = "examRezList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<ReservationVO> rezExamList() {
		List<ReservationVO> examRezList = rezService.retriveExamAllRez();
		return examRezList;
	}

	// 특정일자, 특정과의 시간별 예약현황
	@RequestMapping("rezTimeList.do")
	public String rezClinicTimeList(@RequestParam("resveDate") String resveDate,
			@RequestParam("fcltyCode") String fcltyCode, Model model) {

		String convertDate = resveDate.replace("-", ""); //JSP date 타입으로 넘어오는 파라미터의 -기호 삭제

		
		
		List<ReservationVO> rezTimeList = rezService.retriveTimeRez(convertDate, fcltyCode);
		
		//아우터조인 중복레코드 제거
		List<ReservationVO> uniqueRezList = new ArrayList<>();
		for (ReservationVO rez : rezTimeList) {
			boolean isDuplicate = false;
			// 현재 검사 중인 rez 객체와 중복 여부를 확인
			for (ReservationVO uniqueRez : uniqueRezList) {
				if (rez.getResveNum().equals(uniqueRez.getResveNum())) {
					isDuplicate = true;
					break;
				}
			}
			// 중복이 아니라면 uniqueRezList에 추가
			if (!isDuplicate) {
				uniqueRezList.add(rez);
			}
		}
		//아우터조인 중복레코드 제거
		
		model.addAttribute("rezList", uniqueRezList);

		return "rez/rezList";

	}

	// 진료과별 예약현황
	@RequestMapping("rezFcltyList.do")
	public void rezFcltyList(@RequestParam("fcltyCode") String fcltyCode, Model model) {
		List<ReservationVO> rezFcltyList = rezService.retriveFcltyRez(fcltyCode);
		
		
			//아우터조인 중복레코드 제거
				List<ReservationVO> uniqueRezList = new ArrayList<>();
				for (ReservationVO rez : rezFcltyList) {
					boolean isDuplicate = false;
					// 현재 검사 중인 rez 객체와 중복 여부를 확인
					for (ReservationVO uniqueRez : uniqueRezList) {
						if (rez.getResveNum().equals(uniqueRez.getResveNum())) {
							isDuplicate = true;
							break;
						}
					}
					// 중복이 아니라면 uniqueRezList에 추가
					if (!isDuplicate) {
						uniqueRezList.add(rez);
					}
				}
				//아우터조인 중복레코드 제거
		
		model.addAttribute("rezFcltyList", uniqueRezList);
	}

	
	
	
	// 예약환자 상세정보
	@GetMapping(value = "rezPatntInfo.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<ReservationVO> rezPatientInfo(@RequestParam("patntCode") String patntCode) {
		List<ReservationVO> rezPatienInfo = rezService.retrivePatntRez(patntCode);
		return rezPatienInfo;
	}

	// 날짜별 진료과 예약 time table
	@GetMapping(value = "clinicTimeTable.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<ReservationVO> clinicTimeTable(@RequestParam("resveDate") String resveDate) {

		String date = resveDate.replace("-", "");

		List<ReservationVO> timeTable = rezService.retriveClinicTimeTable(date);

		List<ReservationVO> clinicConvertTimeTable = convertClinicObject(timeTable);
		return clinicConvertTimeTable;
	}
	
	
	
	

	// 날짜별 검사과 예약 time table
	@GetMapping(value = "examTimeTable.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<ReservationVO> examTimeTable(@RequestParam("resveDate") String resveDate) {

		String date = resveDate.replace("-", "");
		List<ReservationVO> timeTable = rezService.retriveExamTimeTable(date);
		List<ReservationVO> examConvertTimeTable = convertExamObject(timeTable);
		return examConvertTimeTable;
	}

	// clinic 타임테이블용 메소드 convertTimeTable 리턴
	public List<ReservationVO> convertClinicObject(List<ReservationVO> timeTable) {

		List<ReservationVO> convertTimeTable = new ArrayList<>(); // 리스트 초기화

		for (ReservationVO vo : timeTable) {
			// String vo.getResveTime() = vo.getResveTime().substring(0, 2) + ":" +
			// vo.getResveTime().substring(2);
			// String formattedEndTime = vo.getResveEndtime().substring(0, 2) + ":" +
			// vo.getResveEndtime().substring(2);

			String patntCode = vo.getPatntCode();
			String patntNm = vo.getPatntNm();
			vo.setPatntNm(patntNm + "님(" + patntCode + ")");

			// 시작시간세팅
			if (vo.getResveTime().equals("0800")) {
				vo.setResveTime("eight");
			}

			if (vo.getResveTime().equals("0900")) {
				vo.setResveTime("nine");
			}

			if (vo.getResveTime().equals("1000")) {
				vo.setResveTime("ten");
			}

			if (vo.getResveTime().equals("1100")) {
				vo.setResveTime("eleven");
			}

			if (vo.getResveTime().equals("1200")) {
				vo.setResveTime("twelve");
			}

			if (vo.getResveTime().equals("1300")) {
				vo.setResveTime("lunch");
			}

			if (vo.getResveTime().equals("1400")) {
				vo.setResveTime("fourteen");
			}

			if (vo.getResveTime().equals("1500")) {
				vo.setResveTime("fifteen");
			}

			if (vo.getResveTime().equals("1600")) {
				vo.setResveTime("sixteen");
			}

			if (vo.getResveTime().equals("1700")) {
				vo.setResveTime("seventeen");
			}

			if (vo.getResveTime().equals("1800")) {
				vo.setResveTime("eightteen");
			}

			// 종료시간세팅
			if (vo.getResveEndtime().equals("0800")) {
				vo.setResveEndtime("eight");
			}

			if (vo.getResveEndtime().equals("0900")) {
				vo.setResveEndtime("nine");
			}

			if (vo.getResveEndtime().equals("1000")) {
				vo.setResveEndtime("ten");
			}

			if (vo.getResveEndtime().equals("1100")) {
				vo.setResveEndtime("eleven");
			}

			if (vo.getResveEndtime().equals("1200")) {
				vo.setResveEndtime("twelve");
			}

			if (vo.getResveEndtime().equals("1300")) {
				vo.setResveEndtime("lunch");
			}

			if (vo.getResveEndtime().equals("1400")) {
				vo.setResveEndtime("fourteen");
			}

			if (vo.getResveEndtime().equals("1500")) {
				vo.setResveEndtime("fifteen");
			}

			if (vo.getResveEndtime().equals("1600")) {
				vo.setResveEndtime("sixteen");
			}

			if (vo.getResveEndtime().equals("1700")) {
				vo.setResveEndtime("seventeen");
			}

			if (vo.getResveEndtime().equals("1800")) {
				vo.setResveEndtime("eightteen");
			}

			if (vo.getFcltyCode().equals("A") || vo.getFcltyCode().equals("B") || vo.getFcltyCode().equals("F")
					|| vo.getFcltyCode().equals("D") || vo.getFcltyCode().equals("E") || vo.getFcltyCode().equals("C")
					|| vo.getFcltyCode().equals("G")) {

				if (vo.getFcltyCode().equals("A")) {
					vo.setFcltyNm("sunday");
				} else if (vo.getFcltyCode().equals("B")) {
					vo.setFcltyNm("monday");
				} else if (vo.getFcltyCode().equals("F")) {
					vo.setFcltyNm("tuesday");
				} else if (vo.getFcltyCode().equals("D")) {
					vo.setFcltyNm("wednesday");
				} else if (vo.getFcltyCode().equals("E")) {
					vo.setFcltyNm("thursday");
				} else if (vo.getFcltyCode().equals("C")) {
					vo.setFcltyNm("friday");
				}
			} else {
				vo.setFcltyNm("saturday");
			}

			convertTimeTable.add(vo); // 리스트에 아이템 추가
		}

		return convertTimeTable;

	}

	// exam타임테이블용 메소드 convertTimeTable 리턴
	public List<ReservationVO> convertExamObject(List<ReservationVO> timeTable) {

		List<ReservationVO> convertTimeTable = new ArrayList<>(); // 리스트 초기화

		for (ReservationVO vo : timeTable) {
			// String vo.getResveTime() = vo.getResveTime().substring(0, 2) + ":" +
			// vo.getResveTime().substring(2);
			// String formattedEndTime = vo.getResveEndtime().substring(0, 2) + ":" +
			// vo.getResveEndtime().substring(2);

			String patntCode = vo.getPatntCode();
			String patntNm = vo.getPatntNm();
			vo.setPatntNm(patntNm + "님(" + patntCode + ")");

			// 시작시간세팅
			if (vo.getResveTime().equals("0800")) {
				vo.setResveTime("eight");
			}

			if (vo.getResveTime().equals("0900")) {
				vo.setResveTime("nine");
			}

			if (vo.getResveTime().equals("1000")) {
				vo.setResveTime("ten");
			}

			if (vo.getResveTime().equals("1100")) {
				vo.setResveTime("eleven");
			}

			if (vo.getResveTime().equals("1200")) {
				vo.setResveTime("twelve");
			}

			if (vo.getResveTime().equals("1300")) {
				vo.setResveTime("lunch");
			}

			if (vo.getResveTime().equals("1400")) {
				vo.setResveTime("fourteen");
			}

			if (vo.getResveTime().equals("1500")) {
				vo.setResveTime("fifteen");
			}

			if (vo.getResveTime().equals("1600")) {
				vo.setResveTime("sixteen");
			}

			if (vo.getResveTime().equals("1700")) {
				vo.setResveTime("seventeen");
			}

			if (vo.getResveTime().equals("1800")) {
				vo.setResveTime("eightteen");
			}

			// 종료시간세팅
			if (vo.getResveEndtime().equals("0800")) {
				vo.setResveEndtime("eight");
			}

			if (vo.getResveEndtime().equals("0900")) {
				vo.setResveEndtime("nine");
			}

			if (vo.getResveEndtime().equals("1000")) {
				vo.setResveEndtime("ten");
			}

			if (vo.getResveEndtime().equals("1100")) {
				vo.setResveEndtime("eleven");
			}

			if (vo.getResveEndtime().equals("1200")) {
				vo.setResveEndtime("twelve");
			}

			if (vo.getResveEndtime().equals("1300")) {
				vo.setResveEndtime("lunch");
			}

			if (vo.getResveEndtime().equals("1400")) {
				vo.setResveEndtime("fourteen");
			}

			if (vo.getResveEndtime().equals("1500")) {
				vo.setResveEndtime("fifteen");
			}

			if (vo.getResveEndtime().equals("1600")) {
				vo.setResveEndtime("sixteen");
			}

			if (vo.getResveEndtime().equals("1700")) {
				vo.setResveEndtime("seventeen");
			}

			if (vo.getResveEndtime().equals("1800")) {
				vo.setResveEndtime("eightteen");
			}

			if (vo.getFcltyCode().equals("K") || vo.getFcltyCode().equals("L") || vo.getFcltyCode().equals("O")
					|| vo.getFcltyCode().equals("M") || vo.getFcltyCode().equals("N")
					|| vo.getFcltyCode().equals("H")) {

				if (vo.getFcltyCode().equals("K")) {
					vo.setFcltyNm("sunday");
				} else if (vo.getFcltyCode().equals("L")) {
					vo.setFcltyNm("monday");
				} else if (vo.getFcltyCode().equals("O")) {
					vo.setFcltyNm("tuesday");
				} else if (vo.getFcltyCode().equals("M")) {
					vo.setFcltyNm("wednesday");
				} else if (vo.getFcltyCode().equals("N")) {
					vo.setFcltyNm("thursday");
				} else if (vo.getFcltyCode().equals("H")) {
					vo.setFcltyNm("friday");
				}
			} else {
				vo.setFcltyNm("saturday");
			}

			convertTimeTable.add(vo); // 리스트에 아이템 추가
		}

		return convertTimeTable;

	}

}
