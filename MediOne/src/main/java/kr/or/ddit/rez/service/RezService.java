package kr.or.ddit.rez.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.medical.nurse.vo.ReservationVO;

public interface RezService {

	/**
	 * 전체예약정보조회
	 * @return
	 */
	public List<ReservationVO> retriveAllRez();
	
	/**
	 * 진료실 전체예약정보조회
	 * @return
	 */
	public List<ReservationVO> retriveClinicAllRez();
	
	/**
	 * 검사실 전체예약정보조회
	 * @return
	 */
	public List<ReservationVO> retriveExamAllRez();
	
	/**
	 * 진료과별 예약정보조회
	 * @param fcltyCode
	 * @return
	 */
	public List<ReservationVO> retriveFcltyRez(String fcltyCode);
	
	/**
	 * 예약환자 상세정보
	 * @param patntCode
	 * @return
	 */
	public List<ReservationVO> retrivePatntRez(String patntCode);
	
	/**
	 * 예약일자별, 진료과별 예약테이블
	 * @param resevDate
	 * @param fcltyCode
	 * @return
	 */
	public List<ReservationVO> retriveTimeRez(String resevDate, String fcltyCode);
	
	/**
	 * 예약일자별 진료과 타임테이블
	 * @param resevDate
	 * @return
	 */
	public List<ReservationVO> retriveClinicTimeTable(String resveDate);
	/**
	 * 예약일자별 검사과 타임테이블
	 * @param resevDate
	 * @return
	 */
	public List<ReservationVO> retriveExamTimeTable(String resveDate);

	
	/**
	 * 예약변경희망 일자, 진료과, 시간에 동일한 예약건이 있을 경우 예약 불가
	 * @param resevDate
	 * @param fcltyCode
	 * @param resveTime
	 * @return 기존 예약 건
	 */
	public boolean retriveUpdateRezConfirm(@Param("resveDate") String resevDate, @Param("fcltyCode") String fcltyCode, @Param("resveTime") String resveTime);

	/**
	 * 예약변경희망 일자, 진료과, 시간에 동일한 환자코드의 예약건이 있을 경우 중복 예약 확인
	 * @param resevDate
	 * @param fcltyCode
	 * @param resveTime
	 * @return 기존 예약 건
	 */
	public boolean retriveUpdateMyRezConfirm(@Param("resveDate") String resevDate, @Param("fcltyCode") String fcltyCode, @Param("resveTime") String resveTime, @Param("patntCode") String patntCode);

	
	/**
	 * 예약코드로 삭제
	 * @param resveNum
	 * @return
	 */
	public boolean removeRez(String resveNum);
	
	/**
	 * 예약수정
	 * @param rezVO
	 * @return 
	 */
	public boolean modifyRez(ReservationVO rezVO);
	
	/**
	 * 예약번호로 예약 1건 찾기
	 * @param resevNum
	 * @return
	 */
	public ReservationVO retrieveMyRez(String resevNum);

	
}
