package kr.or.ddit.sales.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.sales.vo.SalesVO;

@Mapper
public interface SalesDao {

	/**
	 * 전체자료조회
	 * @return List<SalesVO>
	 */
	public List<SalesVO> selectSales();
	
	/**
	 * 분기별 병원 총 매출액
	 * @return List<SalesVO>
	 */
	public List<SalesVO> selectQuarterSales();
	
	
	/**
	 * 분기별 부서별 총 매출액
	 * @return List<SalesVO>
	 */
	public List<SalesVO> selectEmpQuarterSales();

	/**
	 * 월별 총 매출액
	 * @return List<SalesVO>
	 */
	public List<SalesVO> selectMonthSales();
	
	
	
	
	
	
}
