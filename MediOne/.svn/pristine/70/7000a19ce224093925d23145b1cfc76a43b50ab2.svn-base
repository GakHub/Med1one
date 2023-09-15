package kr.or.ddit.medical.administ.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.medical.administ.dao.AdministDao;
import kr.or.ddit.medical.vo.PatientVO;
import kr.or.ddit.medical.vo.PatntStatVO;
import kr.or.ddit.medical.vo.ReceptionVO;

@Service
public class AdministServiceImpl implements AdministService{

	@Inject
	private AdministDao administDAO;
	
	/**
	 * 환자 검색
	 */
	@Override
	public List<PatientVO> retrievePatientList(String patntNm) {
		return administDAO.selectPatientList(patntNm);
	}
	
	/**
	 * 초진 환자 등록
	 */
	@Override
	public boolean createPatient(PatientVO patient) {
		return administDAO.insertPatient(patient) > 0;
	}
	
	/**
	 * 접수 코드 여부
	 */
	@Override
	public List<PatntStatVO> retrieveRecCodeYN(String patntCode) {
		return administDAO.selectRecCodeYN(patntCode);
	}

	/**
	 * 수납완료 여부
	 */
	@Override
	public List<PatntStatVO> retrieveStorageYN(String patntCode) {
		return administDAO.selectStorageYN(patntCode);
	}

	/**
	 * 환자 접수
	 */
	@Override
	public boolean createPatientReceipt(ReceptionVO symptom) {
		return administDAO.insertPatientReceipt(symptom) > 0;
	}

	/**
	 * 접수 한 사람들
	 */
	@Override
	public boolean createReceipt(PatntStatVO patntStat) {
		int count = administDAO.insertReceipt(patntStat);
		return count > 1;
	}

	/**
	 * 환자 상태 조회
	 */
	@Override
	public List<PatntStatVO> retrievePatntStatList() {
		return administDAO.selectPatntStatList();
	}

	/**
	 * 환자 상태 변경(005)
	 */
	@Override
	public boolean createPatntStat(PatntStatVO patntStat) {
		int count = administDAO.insertPatntStat(patntStat);
		return count > 1;
	}

	/**
	 * 부서별 조회
	 */
	@Override
	public List<PatntStatVO> retrievefcltyList(String fcltyCode) {
		return administDAO.fcltyList(fcltyCode);
	}

	/**
	 * 환자 상태 변경(건강검진, 013)
	 */
	@Override
	public boolean createcheckupStat(PatntStatVO patntStat) {
		int count = administDAO.insertcheckupStat(patntStat);
		return count > 1;
	}

	@Override
	public int retrievePatntCount() {
		return administDAO.selectPatntCount();
	}

	@Override
	public List<PatientVO> retrieveLocalPatntCount() {
		return administDAO.selectLocalPatntCount();
	}

	@Override
	public List<PatientVO> retrieveMonthPatntCount() {
		return administDAO.selectMonthPatntCount();
	}

	

	

	

}
