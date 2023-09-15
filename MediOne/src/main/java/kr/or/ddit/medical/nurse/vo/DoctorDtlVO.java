package kr.or.ddit.medical.nurse.vo;

import java.util.List;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.employee.vo.EmployeeVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 의사상세VO
 * DOCTOR_DTL
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of="docEmpNo")
public class DoctorDtlVO extends DoctorSchdulVO{
	@NotBlank
	private String docEmpNo; //의사사번
	private String docEmpNm; //의사이름
	@NotBlank
	private String doctrNum; //의사면허
	@NotBlank
	private String fcltyCode; //시설코드 FCLTY_INFO
	private String docProfile; //약력
	private String docMajor; //주분야
	
	private EmployeeVO employee;
//	private List<DoctorDtlVO> schList;  //스케쥴리스트
	
//	private DoctorSchdulVO doctorsch;
}
