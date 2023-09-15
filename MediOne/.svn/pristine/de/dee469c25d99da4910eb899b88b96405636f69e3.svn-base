package kr.or.ddit.Free.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.Free.vo.FreeBoardVO;
import kr.or.ddit.employee.vo.PaginationInfo;

@Mapper
public interface FreeDao {
	
   public int insertFreeBoard(FreeBoardVO board);
	   
   public List<FreeBoardVO> selectFreeBoardList(PaginationInfo<FreeBoardVO> paging);
   
   public List<FreeBoardVO> selectViewBoardList();
   
   public long selectTotalRecord(PaginationInfo<FreeBoardVO> paging);
   
   public long freeBoardCmtRecord(String boardNo);
   
   public FreeBoardVO selectFreeBoard(String boardNo);
   public int updateFreeBoard(FreeBoardVO board);
   public int deleteFreeBoard(String boardNo);
   public int updateFreeBoardReadcount(String boardNo);


   public List<FreeBoardVO> selectStatFreeBoard();

}
