package kr.or.ddit.Free.service;

import java.util.List;

import kr.or.ddit.Free.vo.FreeBoardVO;
import kr.or.ddit.employee.vo.PaginationInfo;

public interface FreeService {

	public List<FreeBoardVO> retrieveFreeBoardList(PaginationInfo<FreeBoardVO> paging);
	public List<FreeBoardVO> selectViewBoardList();
	   
	
	
	public FreeBoardVO retrieveFreeBoard(String boardNo);
	public boolean createFreeBoard(FreeBoardVO freeBoard);

	public boolean modifyFreeBoard(FreeBoardVO freeBoard);
	public boolean modifyFreeBoardReadcount(String boardNo);


	public boolean removeFreeBoard(String boardNo);
	
	public FreeBoardVO freeBoardCmtRecord(String boardNo);

	public List<FreeBoardVO> selectStatFreeBoard();

}
