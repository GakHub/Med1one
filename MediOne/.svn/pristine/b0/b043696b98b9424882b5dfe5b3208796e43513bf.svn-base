package kr.or.ddit.medical.patient.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.medical.nurse.vo.ReservationVO;
import kr.or.ddit.medical.vo.PatntStatVO;

@Mapper
public interface PatientDao {

	public List<PatntStatVO> selectPatntStat(String fcltyCode); //대기 환자 부서별 조회
	
	public int insertPatntStat(PatntStatVO patntStat); //환자 상태 변경
	
	public List<PatntStatVO> selectPatntStatAll(); //환자 상태 전체 조회 (검진코드 가진 사람)
	
	public List<PatntStatVO> selectPatntStatWaitAll(); //환자 상태 전체 조회 (대기환자)
	
	public int insertReservation(ReservationVO reserVo); // 환자 예약 등록
	
	
	
	//관리자 통계용
	public List<PatntStatVO> selectMonthPatntCount(); //연도별/월별 환자수
	public List<PatntStatVO> selectYearPatntCount(); //연도별 총 환자수

	
	
	
	
	
	
	
	
	
	
	
	
	
}
