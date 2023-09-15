package kr.or.ddit.message.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.medical.vo.PatientVO;
import kr.or.ddit.message.vo.MessageDtlVO;
import kr.or.ddit.message.vo.MessageVO;

@Mapper
public interface MessageDao {

	/**
	 * 환자 전체 연락처 조회
	 * @return
	 */
	public List<PatientVO> selectTelNumberList();
	
	/**
	 * 메시지 양식 조회
	 * @return
	 */
	public List<MessageDtlVO> selectMessageFormList();
	
	/**
	 * 문자 전송
	 * @param msg
	 * @return
	 */
	public int insertMsg(MessageVO msg);
	
	/**
	 * 문자 내역 조회
	 * @return
	 */
	public List<MessageVO> selectMsgHistroy();
	
	/**
	 * 환자 검색
	 * @return
	 */
	public List<PatientVO> searchTelNumberList(String patntNm);
}
