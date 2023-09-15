package kr.or.ddit.chat.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.chat.dao.ChatDAO;
import kr.or.ddit.chat.vo.ChatMessageVO;
import kr.or.ddit.chat.vo.ChatRoomVO;

@Service
public class ChatServiceImpl implements ChatService{
	
	@Inject
	private ChatDAO dao;
	
	@Override
	public List<ChatRoomVO> chatRoomList() {
		return dao.chatRoomList();
	}

	@Override
	public ChatRoomVO retrieveChatRoom(String chroomId) {
		return dao.selectChatRoom(chroomId);
	}

	@Override
	public boolean createMessage(ChatMessageVO message) {
		return dao.insertMessage(message)>0;
	}

	@Override
	public List<ChatMessageVO> retrieveMessageList(String chroomId) {
		return dao.selectMessageList(chroomId);
	}
	
}
