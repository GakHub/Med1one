package kr.or.ddit.employee.fixtures.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.employee.fixtures.dao.FixturesDao;
import kr.or.ddit.employee.fixtures.vo.FixturesDTLVO;
import kr.or.ddit.employee.fixtures.vo.FixturesReqVO;
import kr.or.ddit.employee.fixtures.vo.FixturesVO;

@Service
public class FixturesServiceImpl implements FixturesService {

	@Inject
	private FixturesDao fixDao;
	
	@Override
	public List<FixturesVO> retrieveFixList(String fxtrsLclas) {
		return fixDao.selectFixList(fxtrsLclas) ;
	}

	@Override
	public List<FixturesDTLVO> retrieveFixDtlList() {
		return fixDao.selectFixDtlList();
	}

	@Override
	public List<FixturesVO> retrieveFixwhereDtlList(String fixtureCode) {
		return fixDao.selectFixwhereDtlList(fixtureCode);
	}

	@Override
	public int createFixOrderList(FixturesReqVO fixturesReqVO) {
		int result = fixDao.insertFixOrderList(fixturesReqVO);
		return result;
	}

	@Override
	public List<FixturesReqVO> retrieveFixOrdList() {
		return fixDao.selectFixOrdList();
	}
	
	@Override
	public List<FixturesVO> modifyFixList() {
		return fixDao.updateFixList();
	}


	/**
	 * 비품 이름 검색
	 */
	@Override
	public List<FixturesVO> searchFixList(String fxtrsNm) {
		return fixDao.searchFixList(fxtrsNm);
	}

	/**
	 * 나의 발주 신청내역
	 */
	@Override
	public List<FixturesReqVO> retrieveFixOrdWhereEmpNm(String empNo) {
		return fixDao.selectFixOrdWhereEmpNm(empNo);
	}

	/**
	 * 재고 업데이트
	 */
	@Override
	public boolean modifyFxtrsInv(int fxtrsInv, String fxtrsCode) {
		return fixDao.updateFxtrsInv(fxtrsInv, fxtrsCode)>0;
	}

	
	/**
	 * 진행상태 업데이트
	 */
	@Override
	public boolean modifyFixSttus(String fxtrsOrdCode) {
		return fixDao.updateFixSttus(fxtrsOrdCode)>0;
	}
	
	/**
	 *	비품 신규등록
	 */
	@Override
	public int createFixList(FixturesVO fixturesVO) {
		int rst = fixDao.insertFixList(fixturesVO);
		return rst;
	}



}
