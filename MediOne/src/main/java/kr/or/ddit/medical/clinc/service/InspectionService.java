package kr.or.ddit.medical.clinc.service;

import java.util.List;

import kr.or.ddit.medical.clinc.vo.ClinicVO;
import kr.or.ddit.medical.clinc.vo.InspOrderVO;
import kr.or.ddit.medical.clinc.vo.InspRsltVO;
import kr.or.ddit.medical.clinc.vo.PresDocVO;
import kr.or.ddit.medical.vo.PatntStatVO;

public interface InspectionService {
	
	/**
	 * 검사대기(007) 검사중(008) 인 환자 조회
	 * @return
	 */
	public List<PatntStatVO> retrieveInspPatntStat(String fcltyCode);
	
	/**
	 * 검사대기(007) -> 검사중(008) insert
	 * @param state
	 * @return
	 */
	public boolean createInspStat(PatntStatVO state);
	
	/**
	 * 환자의 검사목록 출력
	 * @return
	 */
	public List<InspOrderVO> retrieveInspOrdList(String recCode);
	
	/**
	 * 해당 검사실로 보내기 
	 * @param state
	 * @return
	 */
	public boolean createFctInfo(PatntStatVO state);
	
	/**
	 * 검사 환자의 진료내역 조회
	 * @param recCode
	 * @return
	 */
	public ClinicVO retrieveClinic(String recCode);
	
	/**
	 * 해당 환자의 과거 처방 내역
	 * @param patntCode
	 * @return
	 */
	public List<PresDocVO> retrievePastPres(String patntCode);
	
	/**
	 * 검사목록 중 검사를 마쳤는지 판별하는 메서드
	 * @param recCode
	 * @param inspCode
	 * @return
	 */
	public boolean retrieveInsRstYn(String recCode, String inspCode);
	
	/**
	 * 검사 결과 insert
	 * @param result
	 * @return
	 */
	public boolean createInspResult(InspRsltVO result);
	
	/**
	 * 검사실 오기전에 있던 진료실 찾기
	 * @param recCode
	 * @return
	 */
	public PatntStatVO searchClinicRoom(String recCode);
	
	/**
	 * 다시 진료실로 보내기
	 * @param stat
	 * @return
	 */
	public boolean createPatClinicRoom(PatntStatVO stat);
	
}
