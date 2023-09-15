package kr.or.ddit.medical.receive.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.medical.clinc.vo.PresDocVO;
import kr.or.ddit.medical.examinate.vo.MdexmnVO;
import kr.or.ddit.medical.hospital.vo.HospitalizationVO;
import kr.or.ddit.medical.receive.vo.ReceiveVO;
import kr.or.ddit.medical.vo.ReceptionVO;

@Mapper
public interface ReceiveDao {
	
	/**
	 * 외래진료 수납대기인 환자리스트 조회
	 * @return
	 */
	public List<PresDocVO> selectPatientList();
	
	/**
	 * 검진 수납대기인 환자리스트 조회
	 * @return
	 */
	public List<MdexmnVO> selectMdexList();
	
	/**
	 * 병동 수납대기인 환자리스트 조회
	 * @return
	 */
	public List<HospitalizationVO> selectHospitalList();
	
	/**
	 * (진료)선택한 환자의 처방내역. 검사. 소견
	 * @return
	 */
	public List<PresDocVO> selectPatientClinicOrder(String recCode);

	/**
	 * 입원 환자의 내역
	 * @param recCode
	 * @return
	 */
	public List<HospitalizationVO> selectHospitalClinicOrder(String recCode);

	/**
	 * 검진 환자의 내역
	 * @param recCode
	 * @return
	 */
	public List<MdexmnVO> selectMdexClinicOrder(String recCode);
	
	/**
	 * 수납 insert
	 * @param receive
	 * @return
	 */
	public int insertReceive(ReceiveVO receive);
	
	/**
	 * 영수증 창에 금액 정보 조회
	 * @param recCode
	 * @return
	 */
	public List<ReceptionVO> selectReceiveAmount(String recCode);
	
	
	/**
	 * 연월매출(통계용)
	 * @return
	 */
	public List<ReceiveVO> selectTotalAmount();
	
	/**
	 * 환자의 제증명 확인 - 진료확인서 
	 * @return
	 */
	public List<ReceptionVO> selectDocument(String recCode);
	
	
	/**
	 * 외래진료 수납대기인 환자 검색 (이름)
	 * @return
	 */
	public List<PresDocVO> searchPatientList(String patntName);
	
	/**
	 * 외래진료 수납대기인 환자 검색 (날짜)
	 * @return
	 */
	public List<PresDocVO> searchPatientDate(String recDate);
	
}
