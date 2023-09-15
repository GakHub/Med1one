package kr.or.ddit.chat.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.chat.vo.ChatMessageVO;
import kr.or.ddit.chat.vo.ChatRoomVO;

@Mapper
public interface ChatDAO {
	
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
	public ChatRoomVO selectChatRoom(String chroomId);
	
	/**
	 * 입력한 메세지 db저장
	 * @param message
	 * @return
	 */
	public int insertMessage(ChatMessageVO message);
	
	/**
	 * 메세지 리스트 출력
	 * @param chroomId
	 * @return
	 */
	public List<ChatMessageVO> selectMessageList(String chroomId);
	
}
