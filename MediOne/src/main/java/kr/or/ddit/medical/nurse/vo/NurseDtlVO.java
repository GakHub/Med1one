package kr.or.ddit.medical.nurse.vo;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.employee.vo.EmployeeVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 간호상세 VO
 * NURSE_DTL
 * @author PC-10
 *
 */
@EqualsAndHashCode(of = "empNo")
@Data
public class NurseDtlVO extends NurseSchdulVO{
	@NotBlank
	private String empNo; //사번
	@NotBlank
	private String nursNum; //간호번호
	private String nurEmpNm; //이름
	
	private EmployeeVO employee;
//	private List<NurseSchdulVO> schList; //스케쥴리스트
}
