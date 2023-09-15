package kr.or.ddit.message.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.controller.ServiceResult;
import kr.or.ddit.medical.vo.PatientVO;
import kr.or.ddit.message.dao.MessageDao;
import kr.or.ddit.message.vo.MessageDtlVO;
import kr.or.ddit.message.vo.MessageVO;
import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.exception.NurigoMessageNotReceivedException;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Service
public class MessageServiceImpl implements MessageService{

	@Inject
	private MessageDao messageDAO;
	
	/**
	 * 환자 전체 연락처 조회
	 */
	@Override
	public List<PatientVO> retrieveTelNumberList() {
		return messageDAO.selectTelNumberList();
	}

	/**
	 * 메시지 양식 조회
	 */
	@Override
	public List<MessageDtlVO> retrieveMessageFormList() {
		return messageDAO.selectMessageFormList();
	}

	
	@Override
	public boolean createMsg(MessageVO msg) {
		/*DefaultMessageService messageService =  NurigoApp.INSTANCE.initialize("NCSNVFEAQF68RJFE", "XGVL337NEBSU4ZXBMLJLYPYI1FEWCHJJ", "https://api.solapi.com");
		
		
		// Message 패키지가 중복될 경우 net.nurigo.sdk.message.model.Message로 치환하여 주세요
		Message message = new Message();
		message.setFrom("01023811286");
		message.setTo("01038009056");
		message.setText("테스트");
		// message.setSubject("문자 제목 입력"); // LMS, MMS 전용 옵션, SMS에서 해당 파라미터 추가될 경우 자동으로 LMS로 변환됩니다!

		try {
		  // send 메소드로 ArrayList<Message> 객체를 넣어도 동작합니다!
		  messageService.send(message);
		} catch (NurigoMessageNotReceivedException exception) {
		  // 발송에 실패한 메시지 목록을 확인할 수 있습니다!
		  System.out.println(exception.getFailedMessageList());
		  System.out.println(exception.getMessage());
		} catch (Exception exception) {
		  System.out.println(exception.getMessage());
		}
		
		return true;
	}*/
		return messageDAO.insertMsg(msg) > 0;
	}

	/**
	 * 문자 내역 조회
	 */
	@Override
	public List<MessageVO> retrieveMsgHistroy() {
		return messageDAO.selectMsgHistroy();
	}

	/**
	 * 환자 검색
	 */
	@Override
	public List<PatientVO> searchTelNumberList(String patntNm) {
		return messageDAO.searchTelNumberList(patntNm);
	}
}
