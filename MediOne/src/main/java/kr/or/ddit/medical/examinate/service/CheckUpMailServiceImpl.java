package kr.or.ddit.medical.examinate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.medical.examinate.dao.CheckUpMailDao;
import kr.or.ddit.medical.vo.PatientVO;

@Service
public class CheckUpMailServiceImpl implements CheckUpMailService{

	@Inject
	private CheckUpMailDao checkupDao;
	
	/**
	 * 건강검진 환자 정보
	 */
	@Override
	public List<PatientVO> retrieveCheckupPatient(String patntCode) {
		return checkupDao.checkupPatientList(patntCode);
	}

}
