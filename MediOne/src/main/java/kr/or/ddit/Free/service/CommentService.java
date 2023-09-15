package kr.or.ddit.Free.service;

import java.util.List;

import kr.or.ddit.Free.vo.CommentVO;
import kr.or.ddit.employee.vo.PaginationInfo;

public interface CommentService {
	
	 public boolean createFreeComment(CommentVO comment);
	   
	   public List<CommentVO> retrieveFreeCommentList(PaginationInfo<CommentVO> paging);
	   
	   public long retrieveTotalRecord(PaginationInfo<CommentVO> paging);
	   public long retrievefreeBoardCmtRecord(String boardNo);
	   
	   public long retrieveBoardRecord(String boardNo);
	   
	   public CommentVO retrieveFreeComment(String commentNo);
	   public boolean modifyFreeComment(CommentVO commentVO);
	   public boolean removeFreeComment(String commentNo);
	   public int modifyFreeCommentLike(String commentNo);
	   public List<CommentVO> selectMyFreeCommentList(PaginationInfo<CommentVO> paging);
	   public CommentVO selectMyFreeComment(CommentVO commentVO);


}
