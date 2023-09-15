package kr.or.ddit.File.service;

import java.io.IOException;
import java.util.List;

import org.springframework.core.io.Resource;

import kr.or.ddit.File.vo.AtchFileDtlVO;
import kr.or.ddit.File.vo.AtchFileVO;

public interface AtchFileService {
	public AtchFileDtlVO retriebeAtchFileDetail(AtchFileDtlVO condition);
	
	public int createAtchFileGroup(AtchFileVO fileGroup, Resource saveRes) throws IOException;
	
	public boolean removeAtchFileGroup(int atchFileId, Resource saveRes) throws IOException;
	
	public boolean addAtchFileGroup(int atchFileId, List<AtchFileDtlVO> detailList, Resource saveRes) throws IOException;

	public boolean removeAtchFileDetail(AtchFileDtlVO condition, Resource saveRes) throws IOException;
}
