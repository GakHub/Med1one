package kr.or.ddit.Free.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.Free.dao.CommentDao;
import kr.or.ddit.Free.dao.FreeDao;
import kr.or.ddit.Free.vo.CommentVO;
import kr.or.ddit.employee.vo.PaginationInfo;

@Service
public class CommentServiceImpl implements CommentService {

	@Inject
	private CommentDao commentDAO;
	
	
	@Override
	public boolean createFreeComment(CommentVO comment) {
		return commentDAO.insertFreeComment(comment) >0;
	}
/**
 * <!--특정게시글의 전체 댓글 조회  -->
 */
	@Override
	public List<CommentVO> retrieveFreeCommentList(PaginationInfo<CommentVO> cmtPaging) {
		long totalCommentRecord = commentDAO.selectTotalRecord(cmtPaging);
		cmtPaging.setTotalRecord(totalCommentRecord);
		return commentDAO.selectFreeCommentList(cmtPaging);
	}



	@Override
	public CommentVO retrieveFreeComment(String commentNo) {
		return commentDAO.selectFreeComment(commentNo);
	}

	@Override
	public boolean modifyFreeComment(CommentVO commentVO) {
		return commentDAO.updateFreeComment(commentVO)>0;
	}

	@Override
	public boolean removeFreeComment(String commentNo) {
		return commentDAO.deleteFreeComment(commentNo)>0;
	}

	@Override
	public int modifyFreeCommentLike(String commentNo) {
		return 0;
	}

	/**
	 * 나의 댓글 전체 조회 
	 */
	@Override
	public List<CommentVO> selectMyFreeCommentList(PaginationInfo<CommentVO> paging) {
		return commentDAO.selectMyFreeCommentList(paging);
	}

/**
 *특정 게시물의 나의 댓글 조회 
 */
	@Override
	public CommentVO selectMyFreeComment(CommentVO commentVO) {
		return commentDAO.selectMyFreeComment(commentVO);
	}
@Override
public long retrieveTotalRecord(PaginationInfo<CommentVO> paging) {
	return commentDAO.selectTotalRecord(paging);
}
@Override
public long retrieveBoardRecord(String boardNo) {
	return commentDAO.boardCmtRecord(boardNo);
}
@Override
public long retrievefreeBoardCmtRecord(String boardNo) {
	return commentDAO.boardCmtRecord(boardNo);
}



}
