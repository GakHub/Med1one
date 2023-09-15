package kr.or.ddit.medical.patient.service;

import java.util.List;

import kr.or.ddit.medical.nurse.vo.ReservationVO;
import kr.or.ddit.medical.vo.PatntStatVO;

public interface PatientService {

	public List<PatntStatVO> retrievePatntStat(String fcltyCode); //대기 환자 조회
	
	public boolean createtPatntStat(PatntStatVO patntStat); //환자 상태 변경
	
	public List<PatntStatVO> retrievePatntStatAll(); //환자 상태 전체 조회 (검진코드 가진)
	
	public boolean createReservation(ReservationVO reserVo); // 환자 예약 등록
	
	public List<PatntStatVO> retrievePatntStatWaitAll(); //환자 상태 전체 조회 (대기환자)
	
	//관리자 통계용
	public List<PatntStatVO> retrieveMonthPatntCount(); //연도별/월별 환자수
	public List<PatntStatVO> retrieveYearPatntCount(); //연도별 총 환자수

	
}
