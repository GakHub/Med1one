package kr.or.ddit.medical.nurse.service;

import java.util.List;

import kr.or.ddit.medical.nurse.vo.DoctorDtlVO;
import kr.or.ddit.medical.nurse.vo.DoctorSchdulVO;
import kr.or.ddit.medical.nurse.vo.NurseDtlVO;
import kr.or.ddit.medical.nurse.vo.NurseSchdulVO;
import kr.or.ddit.medical.nurse.vo.NursenoteVO;
import kr.or.ddit.medical.nurse.vo.ReservationVO;

public interface NurseService {

	/**
	 * 의사 일정 전체 조회
	 * @return
	 */
	public List<DoctorDtlVO> retrieveDoctorList();
	
	/**
	 * 간호사 일정 전체 조회
	 * @return
	 */
	public List<NurseDtlVO> retrieveNurseList();
	
	
	/**
	 * 부서별 의사 조회
	 * @return
	 */
	public List<DoctorDtlVO> retrieveDoctorDeptList(String fcltyCode);
	
	/**
	 * 부서별 간호사 조회
	 * @return
	 */
	public List<NurseDtlVO> retrieveNurseDeptList(String fcltyCode);
	
	/**
	 * 부서별 환자 예약 조회
	 * @param fcltyCode
	 * @return
	 */
	public List<ReservationVO> retrieveReserList(String fcltyCode);
	
	/**
	 * 당일 인수인계간호 일지 조회
	 * @param dayNote
	 * @return
	 */
	public List<NursenoteVO> retrieveDayNote(String dayNote);
	public boolean createNurseNote(NursenoteVO note);
	
	/**
	 * 간호일지 기록 전체조회
	 * @return
	 */
	public List<NursenoteVO> retrieveAllNote();
}
