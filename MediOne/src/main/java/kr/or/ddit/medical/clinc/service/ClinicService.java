package kr.or.ddit.medical.clinc.service;

import java.util.List;

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

public interface ClinicService {
	
	
	/**
	 *  약품 리스트 검색
	 * @param mediName
	 * @return List<MedicineVO>
	 */
	public List<MedicineVO> retrieveMedicineList(String mediName);
	
	/**
	 *  상병 리스트 검색
	 * @param disName
	 * @return List<DiseaseVO>
	 */
	public List<DiseaseVO> retrieveDiseaseList(String disName);
	
	/**
	 * 약품 검색수
	 * @param mediName
	 * @return
	 */
	public int SearchCnt(String mediName);
	
	/**
	 * 즐겨찾는 약품 리스트
	 * @return List<MedicineVO>
	 */
	public List<MedicineVO> popluarMedicineList();
	
	
	/**
	 * 소견서 조회
	 * @param recCode
	 * @return
	 */
	public PatientVO retrieveCTF(String recCode);
	
	
	/**
	 * 소견서 작성
	 * @param ctfdoc
	 * @return
	 */
	public boolean createCtfdoc(CtfDocVO ctfdoc);
	
	
	/**
	 * 검사 오더 용 검사 리스트
	 */
	public List<InspectionVO> retrieveInspectList();
	
	/**
	 * 일반 검사 리스트
	 */
	public List<InspectionVO> retrieveGenInsList();
	
	
	/**
	 * 장비 검사 리스트
	 */
	public List<InspectionVO> retrieveEuqInsList();
	
	/**
	 * 진료 중인 환자 조회 -> 시설코드 + 상태코드(006)
	 * @return
	 */
	public List<PatntStatVO> retrievePatntStat(String fcltyCode);
	
	/**
	 * 진료 중인 환자의 과거 처방내역
	 * @return
	 */
	public List<PresDocVO> retrievePatPastMedi(String patntCode);
	
	/**
	 * 환자 상태 insert 005 -> 006
	 * @param patCode(환자코드)
	 * @return
	 */
	public boolean createPatntStat(PatntStatVO state);
	
	/**
	 * 외래진료 오더 추가
	 * @param clinic
	 * @return
	 */
	public boolean createDssOrder(ClinicVO clinic);
	
	/**
	 * 외래진료코드 조회
	 * @param recCode
	 * @return
	 */
	public ClinicVO retrieveClinicCd(String recCode);
	
	/**
	 * 처방오더코드 조회 
	 * @param clinicCode
	 * @return
	 */
	public PrescriptionVO retrievePresCd(String clinicCode);
	
	/**
	 * 처방내역 테이블 추가
	 * @param pres
	 * @return
	 */
	public boolean createPresOrder(PresDocVO pres);
	
	
	/**
	 * Insert 환자위치정보 015(입원대기) J(병동)
	 * 
	 * @param recCode
	 * @return
	 */
	public boolean createhospitalWait(String recCode);
	
	/**
	 * 입원 오더용 식이 리스트
	 * @return
	 */
	public List<CommonCodeVO> retrievetDietList();
	
	/**
	 * 입원 오더 insert
	 * @param hospital
	 * @return
	 */
	public boolean createhospitalOrder(HsptlzOrderVO hospital);
	
	/**
	 * Insert 환자위치정보 015(수납대기) I(원무과) 
	 * @param recCode
	 * @return
	 */
	
	public boolean createReceiveWait(String recCode);
	
	
	/**
	 * 검사 오더 INSERT
	 * @param insp
	 * @return
	 */
	public boolean createInspectionOrder(InspOrderVO insp);
	
	/**
	 * INSERT 환자위치정보 007(검사대기) H(일반검사실)
	 * @param recCode
	 * @return
	 */
	public boolean createInspWait(String recCode);
	
	/**
	 * 환자 클릭했을때 recCode가져오기
	 * @param patntCode
	 * @return
	 */
	public ReceptionVO retrievePatRecCode(String patntCode);
	
	/**
	 * 환자의 검사내역 조회
	 * @param recCode
	 * @return
	 */
	public List<InspRsltVO> retrievePatInspResult(String recCode);
	
	/**
	 * 환자가 이미 clinicCode를 가지고 있는지 여부..
	 * @param recCode
	 * @return
	 */
	public boolean retrieveGetClinicCode(String recCode);
	
	/**
	 * 이미 clinicCode있으면 update시키기
	 * @param clinic
	 * @return
	 */
	public boolean modifyClinicOrder(ClinicVO clinic);
}
