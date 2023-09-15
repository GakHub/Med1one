package kr.or.ddit.medical.clinc.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.medical.clinc.dao.InspectionDao;
import kr.or.ddit.medical.clinc.vo.ClinicVO;
import kr.or.ddit.medical.clinc.vo.InspOrderVO;
import kr.or.ddit.medical.clinc.vo.InspRsltVO;
import kr.or.ddit.medical.clinc.vo.PresDocVO;
import kr.or.ddit.medical.vo.PatntStatVO;

@Service
public class InspectionServiceImpl implements InspectionService {
	
	@Inject
	private InspectionDao inspDao;
	

	/**
	 * 검사대기(007) 검사중(008) 인 환자 조회
	 */
	@Override
	public List<PatntStatVO> retrieveInspPatntStat(String fcltyCode) {
		return inspDao.selectInspPatntStat(fcltyCode);
	}


	/**
	 * 검사대기(007) -> 검사중(008) insert
	 */
	@Override
	public boolean createInspStat(PatntStatVO state) {
		return inspDao.insertInspStat(state)>0;
	}


	/**
	 * 환자의 검사목록 출력
	 */
	@Override
	public List<InspOrderVO> retrieveInspOrdList(String recCode) {
		return inspDao.selectInspOrdList(recCode);
	}


	/**
	 * 해당 검사실로 보내기 
	 */
	@Override
	public boolean createFctInfo(PatntStatVO state) {
		return inspDao.insertFctInfo(state)>0;
	}


	/**
	 * 검사 환자의 진료내역 조회
	 */
	@Override
	public ClinicVO retrieveClinic(String recCode) {
		return inspDao.selectClinic(recCode);
	}


	/**
	 *	해당 환자의 과거 처방 내역
	 */
	@Override
	public List<PresDocVO> retrievePastPres(String patntCode) {
		return inspDao.selectPastPres(patntCode);
	}


	/**
	 * 검사목록 중 검사를 마쳤는지 판별하는 메서드
	 */
	@Override
	public boolean retrieveInsRstYn(String recCode, String inspCode) {
		return inspDao.selectInsRstYn(recCode, inspCode)>0;
	}


	/**
	 * 검사 결과 insert
	 */
	@Override
	public boolean createInspResult(InspRsltVO result) {
		return inspDao.insertInspResult(result)>0;
	}


	/**
	 * 검사실 오기전에 있던 진료실 찾기
	 */
	@Override
	public PatntStatVO searchClinicRoom(String recCode) {
		return inspDao.searchClinicRoom(recCode);
	}


	/**
	 * 다시 진료실로 보내기
	 */
	@Override
	public boolean createPatClinicRoom(PatntStatVO stat) {
		return inspDao.insertPatClinicRoom(stat)>0;
	}

}
