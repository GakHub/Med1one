package kr.or.ddit.notice.service;

import java.util.List;

import kr.or.ddit.employee.vo.PaginationInfo;
import kr.or.ddit.notice.vo.NoticeBoardVO;

public interface NoticeService {

	public boolean createBoard(NoticeBoardVO board);
	public List<NoticeBoardVO> retriebeBoardList(PaginationInfo<NoticeBoardVO> paging);
	public NoticeBoardVO retrieveBoard(String noticeCode);
	public boolean modifyBoard(NoticeBoardVO board);
	public boolean modifyBoardReadcount(String noticeCode);
	public boolean removeBoard(String board);
	
//	public NoticeBoardVO boardAuthenticate(NoticeBoardVO input);
}
