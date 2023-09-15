package kr.or.ddit.sales.service;

import java.util.List;

import kr.or.ddit.employee.vo.EmployeeVO;
import kr.or.ddit.sales.vo.SalesVO;

public interface SalesService {

	/**
	 * 전체자료조회
	 * @return List<SalesVO>
	 */
	public List<SalesVO> retrieveSales();
	
	/**
	 * 분기별 병원 총 매출액
	 * @return List<SalesVO>
	 */
	public List<SalesVO> retrieveQuarterSales();
	
	
	/**
	 * 분기별 부서별 총 매출액
	 * @return List<SalesVO>
	 */
	public List<SalesVO> retrieveEmpQuarterSales();
	
	/**
	 * 월별 총 매출액
	 * @return List<SalesVO>
	 */
	public List<SalesVO> retrieveMonthSales();
	
}
