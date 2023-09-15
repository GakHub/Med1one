package kr.or.ddit.rez.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.medical.nurse.vo.ReservationVO;
import kr.or.ddit.rez.dao.RezDAO;

@Service
public class RezServiceImpl implements RezService{
	
	
	@Inject
	private RezDAO rezDAO;

	@Override
	public List<ReservationVO> retriveAllRez() {
	
		return rezDAO.selectAllRez();
	}

	@Override
	public List<ReservationVO> retriveFcltyRez(String fcltyCode) {
		return rezDAO.selectFcltyRez(fcltyCode);
	}

	@Override
	public List<ReservationVO> retrivePatntRez(String patntCode) {
		return rezDAO.selectPatientRez(patntCode);
	}

	@Override
	public List<ReservationVO> retriveTimeRez(String resevDate, String fcltyCode) {
		
		return rezDAO.selectTimeRez(resevDate, fcltyCode);
	}

	@Override
	public List<ReservationVO> retriveClinicAllRez() {
		return rezDAO.selectClinicAllRez();
	}

	@Override
	public List<ReservationVO> retriveExamAllRez() {
		return rezDAO.selectExamAllRez();
	}

	@Override
	public List<ReservationVO> retriveClinicTimeTable(String resveDate) {
		return rezDAO.selectClinicTimeTable(resveDate);
	}

	@Override
	public List<ReservationVO> retriveExamTimeTable(String resveDate) {
		return rezDAO.selectExamTimeTable(resveDate);
	}

	@Override
	public boolean retriveUpdateRezConfirm(String resevDate, String fcltyCode, String resveTime) {
		return rezDAO.selectUpdateRezConfirm(resevDate, fcltyCode, resveTime) >0; //다른 사람 예약건수가 있으면 true, false면 예약 가능
	}

	@Override
	public boolean retriveUpdateMyRezConfirm(String resevDate, String fcltyCode, String resveTime, String patntCode) {
		return rezDAO.selectUpdateMyRezConfirm(resevDate, fcltyCode, resveTime, patntCode) > 0; //동일한 조건으로 내 예약 건수가 있으면 true, false여야 예약가능
	}

	@Override
	public boolean removeRez(String resveNum) {
		return rezDAO.deleteRez(resveNum)>0;
	}

	@Override
	public boolean modifyRez(ReservationVO rezVO) {
		return rezDAO.updateRez(rezVO)>0;
	}

	@Override
	public ReservationVO retrieveMyRez(String resevNum) {
		return rezDAO.selectMyRez(resevNum);
	}

}
