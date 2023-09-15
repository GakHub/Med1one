package kr.or.ddit.employee.fixtures.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.employee.fixtures.dao.FixturesDao;
import kr.or.ddit.employee.fixtures.dao.FixturesReqDao;
import kr.or.ddit.employee.fixtures.vo.FixturesDTLVO;
import kr.or.ddit.employee.fixtures.vo.FixturesReqVO;
import kr.or.ddit.employee.fixtures.vo.FixturesVO;

@Service
public class FixturesReqServiceImpl implements FixturesReqService {

	@Inject
	private FixturesReqDao fixReqDao;
	
//	@Override
//	public List<FixturesVO> retrieveFixList(String fxtrsLclas) {
//		return fixDao.selectFixList(fxtrsLclas) ;
//	}
//
//	@Override
//	public List<FixturesDTLVO> retrieveFixDtlList() {
//		return fixDao.selectFixDtlList();
//	}
//
//	@Override
//	public List<FixturesVO> retrieveFixwhereDtlList(String fixtureCode) {
//		return fixDao.selectFixwhereDtlList(fixtureCode);
//	}
//
//	@Override
//	public int createFixOrderList(FixturesReqVO fixturesReqVO) {
//		int result = fixDao.insertFixOrderList(fixturesReqVO);
//		return result;
//	}

	@Override
	public List<FixturesReqVO> retrieveFixOrdList() {
		return fixReqDao.selectFixOrdList();
	}

	@Override
	public List<FixturesVO> retrieveFixList(String fxtrsLclas) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FixturesDTLVO> retrieveFixDtlList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FixturesVO> retrieveFixwhereDtlList(String fixtureCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int createFixOrderList(FixturesReqVO fixturesReqVO) {
		// TODO Auto-generated method stub
		return 0;
	}

}
