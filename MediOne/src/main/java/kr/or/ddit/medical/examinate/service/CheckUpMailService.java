package kr.or.ddit.medical.examinate.service;

import java.util.List;

import kr.or.ddit.medical.vo.PatientVO;

public interface CheckUpMailService {

	/**
	 * 건강검진 환자 정보
	 * @param patntCode
	 * @return
	 */
	public List<PatientVO> retrieveCheckupPatient(String patntCode);
}
