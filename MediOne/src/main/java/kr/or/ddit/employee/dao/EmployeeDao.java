package kr.or.ddit.employee.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.File.vo.AtchFileDtlVO;
import kr.or.ddit.employee.vo.DepartmentVO;
import kr.or.ddit.employee.vo.EmployeeVO;

@Mapper
public interface EmployeeDao {

	public List<DepartmentVO> selectDeptList();
	
	/**
	 * 조직도
	 * @param deptCode
	 * @return
	 */
	public List<EmployeeVO> selectDeptTreeList(String deptCode);
	
	/**
	 * 직원 정보 상세조회
	 * @param empNo
	 * @return 존재하지 않는 경우, null 반환
	 */
	public EmployeeVO selectEmployee(String empNo);
	
	/**
	 * @param emp
	 * @return 수정된 레코드수 (> 0이면 수정 성공)
	 */
	public int updateEmployee(EmployeeVO employee);
	
	/**
	 * 인증에 활용할 직원 정보 조회
	 * @param empNo 회원 식별자(username)
	 * @return 존재하지 않는 경우, null 반환
	 */
	public EmployeeVO selectEmpForAuth(String empNo);

	
	/**
	 * 통계자료용(부서별 직원수)
	 * @return List<EmployeeVO>
	 */
	public List<EmployeeVO> selectDeptEmp();


	/**
	 * 통계자료용(직군별 직원수)
	 * @return List<EmployeeVO>
	 */
	public List<EmployeeVO> selectJobEmp();
	
	/**
	 * 통계자료용(직원리스트)
	 * @return List<EmployeeVO>
	 */
	public List<EmployeeVO> selectEmpList();
	
	/**
	 * 첨부파일 조회
	 * @param empNo
	 * @return
	 */
	public  AtchFileDtlVO atchSearch(String empNo);
	
	/**
	 * otp번호 수정
	 * @param empNo
	 * @return
	 */
	public int updateOtpNum(Map<String, Object> map);
	

}

