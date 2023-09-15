package kr.or.ddit.medical.clinc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.File.vo.CtfDocVO;
import kr.or.ddit.employee.vo.CommonCodeVO;
import kr.or.ddit.medical.clinc.vo.ClinicVO;
import kr.or.ddit.medical.clinc.vo.DiseaseVO;
import kr.or.ddit.medical.clinc.vo.HsptlzOrderVO;
import kr.or.ddit.medical.clinc.vo.InspOrderVO;
import kr.or.ddit.medical.clinc.vo.InspRsltVO;
import kr.or.ddit.medical.clinc.vo.InspectionVO;
import kr.or.ddit.medical.clinc.vo.MedicineVO;
import kr.or.ddit.medical.clinc.vo.PresDocVO;
import kr.or.ddit.medical.clinc.vo.PrescriptionVO;
import kr.or.ddit.medical.vo.PatientVO;
import kr.or.ddit.medical.vo.PatntStatVO;
import kr.or.ddit.medical.vo.ReceptionVO;

@Mapper
public interface ClinicDao {

	
	/**
	 *  약품리스트 검색
	 * @param mediName
	 * @return List<MedicineVO> 
	 */
	public List<MedicineVO> selectMedicineList(String mediName);
	
	/**
	 *  상병리스트 검색
	 * @param disName
	 * @return List<DiseaseVO>
	 */
	public List<DiseaseVO> selectDiseaseList(String disName);
	
	
	/**
	 * 검색할 때 마다 검색수 +1
	 * @param mediName
	 */
	public int SearchCnt(String mediName);
	
	/**
	 * 즐겨 찾는 약품 리스트
	 * @return
	 */
	public List<MedicineVO> popluarMedicineList();
	
	/**
	 * 검사 오더 용 검사 리스트
	 * @return List<InspectionVO>
	 */
	public List<InspectionVO> selectInspectList();
	
	/**
	 *  일반검사 리스트
	 * @return List<InspectionVO>
	 */
	public List<InspectionVO> selectGenInsList();
	
	/**
	 *  장비검사 리스트
	 * @return List<InspectionVO>
	 */
	public List<InspectionVO> selectEuqInsList();
	
	/**ㅁ
	 * 접수 코드에 따른 환자 정보
	 * @param recCode
	 * @return
	 */
	public PatientVO selectInfoPatien(String recCode);
	
	
	/**
	 * 제증명 등록
	 * @param CTF
	 * @return
	 */
	public int insertCtfdoc(CtfDocVO CTF); 
	
	/**
	 *  진료중인 환자 조회 -> 시설코드/상태코드(006)
	 * @return PatntStatVO
	 */
	public List<PatntStatVO> selectPatntStat(String fcltyCode);
	
	/**
	 * 진료중인 환자의 과거 처방내역
	 * @return
	 */
	public List<PresDocVO> selectPatPastMedi(String patntCode);
	
	/**
	 * 환자상태 insert 005->006
	 * @param patCode
	 * @return
	 */
	public int insertPatntStat(PatntStatVO state);
	
	/**
	 * 외래진료 테이블 추가
	 * @param clinic
	 * @return
	 */
	public int insertDssOrder(ClinicVO clinic);
	
	/**
	 * 외래진료코드 조회
	 * @param recCode
	 * @return
	 */
	public ClinicVO selectClinicCd(String recCode);
	
	/**
	 * 처방오더코드 조회
	 * @param clinicCode
	 * @return
	 */
	public PrescriptionVO selectPresCd(String clinicCode);
	
	
	/**
	 * 처방내역 테이블 추가
	 * @param pres
	 * @return
	 */
	public int insertPresOrder(PresDocVO pres);
	
	
	/**
	 * Insert 환자위치정보 015(입원대기) J(병동)
	 * 
	 * @param recCode
	 * @return
	 */
	public int inserthospitalWait(String recCode);
	
	/**
	 * 입원 오더용 식이 리스트
	 * @return
	 */
	public List<CommonCodeVO> selectDietList();
	
	/**
	 * 입원 오더 insert
	 * @param hospital
	 * @return
	 */
	public int inserthospitalOrder(HsptlzOrderVO hospital);
	
	/**
	 * Insert 환자위치정보 015(수납대기) I(원무과)
	 * @param recCode
	 * @return
	 */
	
	public int insertReceiveWait(String recCode);
	
	/**
	 * 검사 오더 INSERT
	 * @param insp
	 * @return
	 */
	public int insertInspectionOrder(InspOrderVO insp);
	
	/**
	 * INSERT 환자위치정보 007(검사대기) H(일반검사실)
	 * @param recCode
	 * @return
	 */
	public int insertInspWait(String recCode);
	
	/**
	 * 환자 클릭했을때 recCode가져오기
	 * @param patntCode
	 * @return
	 */
	public ReceptionVO selectPatRecCode(String patntCode);
	
	/**
	 * 환자의 검사내역 조회
	 * @param recCode
	 * @return
	 */
	public List<InspRsltVO> selectPatInspResult(String recCode);
	
	/**
	 * 환자가 이미 clinicCode를 가지고 있는지 여부..
	 * @param recCode
	 * @return
	 */
	public int selectGetClinicCode(String recCode);
	
	/**
	 * 이미 clinicCode있으면 update시키기
	 * @param clinic
	 * @return
	 */
	public int updateClinicOrder(ClinicVO clinic);
	
}
