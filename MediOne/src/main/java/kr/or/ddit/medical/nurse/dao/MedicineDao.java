package kr.or.ddit.medical.nurse.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.medical.clinc.vo.MedicineVO;
import kr.or.ddit.medical.clinc.vo.NarcoticsVO;

@Mapper
public interface MedicineDao {

	/**
	 * 약품 관리 리스트 조회
	 * @return
	 */
	public List<MedicineVO> selectMedicineList(String mediName);
	
	/**
	 * 마약류 리스트 조회
	 * @return
	 */
	public List<NarcoticsVO> selectNarcoticsList();
	
}
