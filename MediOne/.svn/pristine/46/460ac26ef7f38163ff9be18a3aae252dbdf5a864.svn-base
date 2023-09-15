package kr.or.ddit.Free.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.File.service.AtchFileService;
import kr.or.ddit.File.vo.AtchFileDtlVO;
import kr.or.ddit.File.vo.AtchFileVO;
import kr.or.ddit.Free.dao.FreeDao;
import kr.or.ddit.Free.vo.FreeBoardVO;
import kr.or.ddit.employee.vo.PaginationInfo;

@Service
public class FreeServeciImpl implements FreeService {
	@Inject
	private FreeDao freeDAO;

	@Inject
	private AtchFileService atchService;

	@Value("#{appInfo.atchPath}")
	private Resource atchPath;

	private void processAtchFileGroup(FreeBoardVO board) {
		MultipartFile[] boFiles = board.getBoFiles();
		if (boFiles == null)
			return; // 첨부파일이 없을때

		List<AtchFileDtlVO> detailList = new ArrayList<>();
		for (MultipartFile boFile : boFiles) {
			if (boFile.isEmpty())
				continue;
			detailList.add(new AtchFileDtlVO(boFile));
		}

		if (detailList.size() > 0) {

			int atchFileId = Optional.ofNullable(board.getFileGroup()).map(fg -> {
				try {
					atchService.addAtchFileGroup(fg.getAtchFileId(), detailList, atchPath);
					return fg.getAtchFileId();
				} catch (IOException e) {
					throw new RuntimeException(e);
				}
			}).orElseGet(() -> {
				try {
					AtchFileVO group = new AtchFileVO();
					group.setDetailList(detailList);
					atchService.createAtchFileGroup(group, atchPath);
					return group.getAtchFileId();
				} catch (IOException e) {
					throw new RuntimeException(e);
				}
			});
			board.setAtchFileId(atchFileId);
			board.setBoardAtchnum(atchFileId);
		}
	}

	@Override
	public List<FreeBoardVO> retrieveFreeBoardList(PaginationInfo<FreeBoardVO> paging) {
		long totalRecord = freeDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		return freeDAO.selectFreeBoardList(paging);
	}

	@Override
	public FreeBoardVO retrieveFreeBoard(String boardNo) {
		return freeDAO.selectFreeBoard(boardNo);
	}

	@Override
	public boolean createFreeBoard(FreeBoardVO freeBoard) {
		processAtchFileGroup(freeBoard);
		return freeDAO.insertFreeBoard(freeBoard) > 0;
	}

	@Override
	public boolean modifyFreeBoard(FreeBoardVO freeBoard) {
		processAtchFileGroup(freeBoard);
		return freeDAO.updateFreeBoard(freeBoard) > 0;
	}

	@Override
	public boolean removeFreeBoard(String boardNo) {
		return freeDAO.deleteFreeBoard(boardNo) > 0;
	}

	@Override
	public boolean modifyFreeBoardReadcount(String boardNo) {
		return freeDAO.updateFreeBoardReadcount(boardNo) > 0;
	}

	//게시글 번호로 댓글개수 불러오기
	@Override
	public FreeBoardVO freeBoardCmtRecord(String boardNo) {
		FreeBoardVO board = new FreeBoardVO();
		board.setBoardNo(boardNo);
		long boardCmtRecord = freeDAO.freeBoardCmtRecord(boardNo);
		board.setBoardCmtRecord(boardCmtRecord);

		return board;
	}

	@Override
	public List<FreeBoardVO> selectViewBoardList() {
		return freeDAO.selectViewBoardList();
	}

	@Override
	public List<FreeBoardVO> selectStatFreeBoard() {
		return freeDAO.selectStatFreeBoard();
	}

}
