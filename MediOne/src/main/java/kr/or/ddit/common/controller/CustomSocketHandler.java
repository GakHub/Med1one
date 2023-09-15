package kr.or.ddit.common.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.chat.service.ChatService;
import kr.or.ddit.chat.vo.ChatMessageVO;
import kr.or.ddit.chat.vo.ChatRoomVO;
import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.employee.vo.EmployeeVOWrapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class CustomSocketHandler extends TextWebSocketHandler {

	private final ObjectMapper objectMapper = new ObjectMapper();

	@Inject
	private ChatService service;

	Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();

	Map<String, WebSocketSession> listMap = new ConcurrentHashMap<String, WebSocketSession>();
	Map<String, WebSocketSession> alarmMap = new ConcurrentHashMap<String, WebSocketSession>();
	Map<String, WebSocketSession> chatRoomMap = new ConcurrentHashMap<String, WebSocketSession>();

	// 연결되었을떄
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		Map<String, String> userInfo = getEmpNo(session); // 접속한 유저의 http세션을 조회하여 유저정보를 얻는 함수
		String senderId = userInfo.get("empNo"); 
		if (senderId != null && !users.containsKey(senderId)) { // 로그인 값이 있는 경우만
			log.info(senderId + " 연결됨");
			users.put(senderId, session); // 로그인중 개별유저 저장
		}
		super.afterConnectionEstablished(session);
	}

	// 연결끊겼을때
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("연결끊김 : " + session.getId());
		super.afterConnectionClosed(session, status);
	}

	// 클라이언트(브라우저)에서 서버로 메시지를 보냈을때
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// 메시지가 들어오는 부분
		String msg = message.getPayload();
		System.out.println("메시지 : " + msg);

		// json객체 마샬링
//		ChatMessageVO chatMessage = objectMapper.readValue(msg, ChatMessageVO.class);

		// 받은 메세지에 담긴 채팅방번호로 해당 채팅방을 찾아옴
//		ChatRoomVO chatRoom = service.retrieveChatRoom(chatMessage.getChroomId());

		super.handleTextMessage(session, message);
	}

	// 웹소켓에서 유저정보 가져오기
	// 접속한 유저의 http세션을 조회하여 id를 얻는 함수
	private Map<String, String> getEmpNo(WebSocketSession session) {

		Map<String, String> userInfo = new HashMap<>();

		SecurityContext securityContext = SecurityContextHolder.getContext();
		Authentication authentication = (Authentication) session.getPrincipal();

		// principal 객체에서 현재 로그인한 직원의 사번 찾기
		EmployeeVOWrapper ew = (EmployeeVOWrapper) authentication.getPrincipal();

		
		EmployeeVO emp = ew.getRealUser();
		String empNo = emp.getEmpNo();
		String empNm = emp.getEmpNm();
		
		userInfo.put("empNo", empNo);
		userInfo.put("empNm", empNm);

		return userInfo;
	}

}
