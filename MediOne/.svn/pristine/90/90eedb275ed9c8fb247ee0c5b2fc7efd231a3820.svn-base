package kr.or.ddit.notice.service;

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
import kr.or.ddit.employee.vo.PaginationInfo;
import kr.or.ddit.notice.dao.NoticeDao;
import kr.or.ddit.notice.vo.NoticeBoardVO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Inject
	private NoticeDao noticeDao;
	
	@Inject
	private AtchFileService atchService;
	
	@Value("#{appInfo.atchPath}")
	private Resource atchPath;
	

	private void processAtchFileGroup(NoticeBoardVO board) {
		MultipartFile[] boFiles = board.getBoFiles();
		if(boFiles==null) return;
		List<AtchFileDtlVO> detailList = new ArrayList<>();
		for(MultipartFile boFile : boFiles) {
			if(boFile.isEmpty()) continue;
			detailList.add( new AtchFileDtlVO(boFile) );
		}
		
		if(detailList.size()>0) {
			int atchFileId = Optional.ofNullable(board.getFileGroup())
									.map(fg->{
										try {
											atchService.addAtchFileGroup(fg.getAtchFileId(), detailList, atchPath);
											return fg.getAtchFileId();
										} catch (IOException e) {
											throw new RuntimeException(e);
										}
									}).orElseGet(()->{
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
			board.setAtchFilenum(atchFileId);
			
		}
	}
	
	@Override
	public boolean createBoard(NoticeBoardVO board) {
		processAtchFileGroup(board);
		return noticeDao.insertBoard(board) > 0;
	}
	
	@Override
	public List<NoticeBoardVO> retriebeBoardList(PaginationInfo<NoticeBoardVO> paging) {
		long totalRecord = noticeDao.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		return noticeDao.selectBoardList(paging);
	}

	@Override
	public NoticeBoardVO retrieveBoard(String noticeCode) {
		
		return noticeDao.selectBoard(noticeCode);
	}

	@Override
	public boolean modifyBoard(NoticeBoardVO board) {
		processAtchFileGroup(board);
	    return noticeDao.updateBoard(board) > 0;
	}

	@Override
	public boolean removeBoard(String board) {
		return noticeDao.deleteBoard(board) > 0;
	}

	@Override
	public boolean modifyBoardReadcount(String noticeCode) {
		return noticeDao.updateNoticeBoardReadcount(noticeCode)>0;
	}

	
}
