package kr.or.ddit.message.service;

import java.util.List;

import kr.or.ddit.medical.vo.PatientVO;
import kr.or.ddit.message.vo.MessageDtlVO;
import kr.or.ddit.message.vo.MessageVO;

public interface MessageService {

	/**
	 * 환자 전체 연락처 조회
	 * @return
	 */
	public List<PatientVO> retrieveTelNumberList();
	
	/**
	 * 메시지 양식 조회
	 * @return
	 */
	public List<MessageDtlVO> retrieveMessageFormList();
	
	/**
	 * 문자 전송
	 * @param msg
	 * @return
	 */
	boolean createMsg(MessageVO msg);
	
	/**
	 * 문자 내역 조회
	 * @return
	 */
	public List<MessageVO> retrieveMsgHistroy();
	
	/**
	 * 환자 검색
	 * @return
	 */
	public List<PatientVO> searchTelNumberList(String patntNm);
}
