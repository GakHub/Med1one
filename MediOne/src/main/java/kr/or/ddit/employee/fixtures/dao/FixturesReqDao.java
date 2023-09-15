package kr.or.ddit.employee.fixtures.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.employee.fixtures.vo.FixturesDTLVO;
import kr.or.ddit.employee.fixtures.vo.FixturesReqVO;
import kr.or.ddit.employee.fixtures.vo.FixturesVO;

@Mapper
public interface FixturesReqDao {
	
	
	// 발주 리스트 조회
	public List<FixturesReqVO> selectFixOrdList();
	
}
