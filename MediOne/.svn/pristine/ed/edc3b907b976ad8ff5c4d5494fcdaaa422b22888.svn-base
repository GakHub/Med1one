package kr.or.ddit.medical.examinate.service;

import java.util.List;

import kr.or.ddit.medical.examinate.vo.MdexmnDtl;
import kr.or.ddit.medical.examinate.vo.MdexmnPackVO;
import kr.or.ddit.medical.examinate.vo.MdexmnRstltVO;
import kr.or.ddit.medical.examinate.vo.MdexmnVO;

public interface MdexmnService {

	/**
	 * 환자의 검진 목록 전체 조회
	 * @param mdexmnDtlCode
	 * @return
	 */
	public List<MdexmnPackVO> retrieveMdexnm(String recCode);

	
	/**
	 * 환자별 검진 목록 상세 내용 등록
	 * @param mdexDtlVO
	 * @return
	 */
	public boolean createMdexDtl(MdexmnDtl mdexDtlVO);
	
	
	/**
	 * 환자의 검진 목록 중 완료된 내용 가져오기
	 * @param inspCode
	 * @return
	 */
	public List<MdexmnDtl> selectMdexDtl(String mdexmnCode);
	
	
	/**
	 * 환자 검진 결과 저장
	 * @param resultVO
	 * @return
	 */
	public boolean createMdexRst(MdexmnRstltVO resultVO);
	
	/**
	 * 검진 환자 생성
	 * @param mdexmnVO
	 * @return
	 */
	public boolean createMdexmn(MdexmnVO mdexmnVO);
	
	/**
	 * 검진 완료 환자 정보 조회
	 * @param mdexmnCode
	 * @return
	 */
	public MdexmnVO selectDoneExam(String mdexmnCode);
}
