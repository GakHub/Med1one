package kr.or.ddit.File.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import kr.or.ddit.File.dao.AtchFileDAO;
import kr.or.ddit.File.vo.AtchFileDtlVO;
import kr.or.ddit.File.vo.AtchFileVO;

@Service
public class AtchFileServiceImpl implements AtchFileService {

	@Inject
	private AtchFileDAO atchDAO;
	
	@Value("#{appInfo.atchUrl}")
	private Resource atchPath;

	@Override
	public AtchFileDtlVO retriebeAtchFileDetail(AtchFileDtlVO condition) {
		AtchFileDtlVO saved = atchDAO.selectAtchFileDetail(condition);
		if (saved == null) {
			throw new RuntimeException("조건에 맞는 파일 메타데이터가 없음.");
		}
		return saved;
	}

	@Override
	public int createAtchFileGroup(AtchFileVO fileGroup, Resource saveRes) throws IOException {
		List<AtchFileDtlVO> detailList = fileGroup.getDetailList();
		if(detailList!=null) {
			for(AtchFileDtlVO single : detailList) {
				File saveFile = new File(saveRes.getFile(), single.getStreFileNm());
				single.setFileStreCours(saveFile.getCanonicalPath());
			}
		}
		
		int cnt = atchDAO.insertAtchFileGroup(fileGroup);
		if(cnt > 1) {
			for(AtchFileDtlVO single : detailList) {
				File saveFile = new File(single.getFileStreCours());
				single.getUploadFile().transferTo(saveFile);
			}
		}
		return fileGroup.getAtchFileId();
	}


	@Override
	public boolean removeAtchFileGroup(int atchFileId, Resource saveRes) throws IOException {
		AtchFileVO fileGroup = atchDAO.selectAtchFileGroup(atchFileId);
		int cnt = 0;
		if (fileGroup != null) {
			cnt = atchDAO.deleteAtchFileGroup(atchFileId);
			cnt += atchDAO.deleteAtchFileDetails(atchFileId);
			if (cnt > 1) {
				List<AtchFileDtlVO> detailList = fileGroup.getDetailList();
				for (AtchFileDtlVO single : detailList) {
					File saveFile = new File(saveRes.getFile(), single.getStreFileNm());
					FileUtils.deleteQuietly(saveFile);
				}
			}
		}
		return cnt > 0;
	}

	@Override
	public boolean addAtchFileGroup(int atchFileId, List<AtchFileDtlVO> detailList, Resource saveRes)
			throws IOException {
		for (AtchFileDtlVO single : detailList) {
			File saveFile = new File(saveRes.getFile(), single.getStreFileNm());
			single.setFileStreCours(saveFile.getCanonicalPath());
		}
		AtchFileVO fileGroup = new AtchFileVO();
		fileGroup.setAtchFileId(atchFileId);
		fileGroup.setDetailList(detailList);

		int cnt = atchDAO.insertAtchFileDetails(fileGroup);

		if (cnt > 1) {
			for (AtchFileDtlVO single : detailList) {
				File saveFile = new File(single.getFileStreCours());
				single.getUploadFile().transferTo(saveFile);
			}
		}
		return cnt > 0;
	}

	@Override
	public boolean removeAtchFileDetail(AtchFileDtlVO condition, Resource saveRes) throws IOException {
		AtchFileDtlVO fileDetail = atchDAO.selectAtchFileDetail(condition);

		boolean result = false;

		if (atchDAO.deleteAtchFileDetail(condition) > 0) {
			result = FileUtils.deleteQuietly(new File(fileDetail.getFileStreCours()));
		}

		return result;
	}
}
