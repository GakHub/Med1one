package kr.or.ddit.Free.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.Free.vo.CommentVO;
import kr.or.ddit.employee.vo.PaginationInfo;

@Mapper
public interface CommentDao {
	
	 public int insertFreeComment(CommentVO comment);
	   
	   public List<CommentVO> selectFreeCommentList(PaginationInfo<CommentVO> cmtPaging);
	   
	   public long selectTotalRecord(PaginationInfo<CommentVO> cmtPaging);
	   public long boardCmtRecord(String boardNo);
	   
	   public CommentVO selectFreeComment(String commentNo);
	   public CommentVO selectMyFreeComment(CommentVO commentVO);
	   public int updateFreeComment(CommentVO commentVO);
	   public int deleteFreeComment(String commentNo);
	   public List<CommentVO> selectMyFreeCommentList(PaginationInfo<CommentVO> cmtPaging);
	   
		/* public int updateFreeCommentLike(String commentNo); */

}
