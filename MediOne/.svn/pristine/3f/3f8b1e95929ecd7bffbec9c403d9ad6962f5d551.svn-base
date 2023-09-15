package kr.or.ddit.medical.administ.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.medical.vo.PatientVO;
import kr.or.ddit.medical.vo.PatntStatVO;
import kr.or.ddit.medical.vo.ReceptionVO;

@Mapper
public interface AdministDao {

	/**
	 * 환자 이름 검색
	 * @return
	 */
	public List<PatientVO> selectPatientList(String patntNm);
	
	/**
	 * 환자 정보 조회
	 * @param patntCode
	 * @return
	 */
	public List<PatientVO> selectPatientInfo(String patntCode);
	
	/**
	 * 초진 환자 등록
	 * @return
	 */
	public int insertPatient(PatientVO patient);
	
	/**
	 * 접수 코드 여부
	 * @param 
	 * @return
	 */
	public List<PatntStatVO> selectRecCodeYN(String patntCode);
	
	/**
	 * 수납완료 여부
	 * @param patntStat
	 * @return
	 */
	public List<PatntStatVO> selectStorageYN(String patntCode);
	
	/**
	 * 환자 접수
	 */
	public int insertPatientReceipt(ReceptionVO symptom);
	
	/**
	 * 접수 한 사람들(동시에 접수 번호 생성)
	 * @return
	 */
	public int insertReceipt(PatntStatVO patntStat);
	
	/**
	 * 환자 상태 조회
	 * @param fcltyCode
	 * @return
	 */
	public List<PatntStatVO> selectPatntStatList();
	
	/**
	 * 환자 상태 변경(005)
	 * @param patntStat
	 * @return
	 */
	public int insertPatntStat(PatntStatVO patntStat);
	
	/**
	 * 환자 상태 변경(건강검진, 013)
	 * @param patntStat
	 * @return
	 */
	public int insertcheckupStat(PatntStatVO patntStat);
	
	/**
	 * 부서별 조회
	 * @param fcltyCode
	 * @return
	 */
	public List<PatntStatVO> fcltyList(String fcltyCode);
	
	
	/**
	 * 등록한 고객 수(통계용)
	 * @return int
	 */
	public int selectPatntCount();
	
	/**
	 * 지역별 고객 수(통계용)
	 * @return
	 */
	public List<PatientVO> selectLocalPatntCount();
	
	/**
	 * 월별 등록 환자 수(통계용)
	 * @return
	 */
	public List<PatientVO> selectMonthPatntCount();
}
