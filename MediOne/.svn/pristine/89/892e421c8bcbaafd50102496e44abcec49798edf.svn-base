package kr.or.ddit.medical.nurse.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.medical.clinc.vo.MedicineVO;
import kr.or.ddit.medical.clinc.vo.NarcoticsVO;
import kr.or.ddit.medical.nurse.dao.MedicineDao;

@Service
public class MedicineServiceImpl implements MedicineService{

	@Inject
	private MedicineDao medicineDAO;
	
	/**
	 * 약품 리스트 조회
	 */
	@Override
	public List<MedicineVO> retrieveMedicineList(String mediName) {
		return medicineDAO.selectMedicineList(mediName);
	}

	/**
	 * 마약류 리스트 조회
	 */
	@Override
	public List<NarcoticsVO> retrieveNarcoticsList() {
		return medicineDAO.selectNarcoticsList();
	}

	
}
