package kr.or.ddit.sales.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.sales.dao.SalesDao;
import kr.or.ddit.sales.vo.SalesVO;

@Service
public class SalesServiceImpl implements SalesService {

	@Inject
	SalesDao salesDAO;

	@Override
	public List<SalesVO> retrieveSales() {
		return salesDAO.selectSales();
	}

	@Override
	public List<SalesVO> retrieveQuarterSales() {
		return salesDAO.selectQuarterSales();
	}

	@Override
	public List<SalesVO> retrieveEmpQuarterSales() {
		return salesDAO.selectEmpQuarterSales();
	}

	@Override
	public List<SalesVO> retrieveMonthSales() {
		return salesDAO.selectMonthSales();
	}
	

	

}
