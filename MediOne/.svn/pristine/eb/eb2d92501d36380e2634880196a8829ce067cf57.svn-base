package kr.or.ddit.chat.service;

import java.util.List;

import kr.or.ddit.chat.vo.ChatMessageVO;
import kr.or.ddit.chat.vo.ChatRoomVO;

public interface ChatService {
	/**
	 * 채팅방목록
	 * @return
	 */
	public List<ChatRoomVO> chatRoomList();
	
	/**
	 * 채팅방 하나 출력
	 * @param chroomId
	 * @return
	 */
	public ChatRoomVO retrieveChatRoom(String chroomId);
	
	/**
	 * 입력한 메세지 db저장
	 * @param message
	 * @return
	 */
	public boolean createMessage(ChatMessageVO message);
	
	/**
	 * 메세지 리스트 출력
	 * @param chroomId
	 * @return
	 */
	public List<ChatMessageVO> retrieveMessageList(String chroomId);
}
