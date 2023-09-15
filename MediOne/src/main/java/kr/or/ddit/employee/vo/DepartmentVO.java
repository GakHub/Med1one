package kr.or.ddit.employee.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "deptCode")
public class DepartmentVO {

	@NotBlank
	private String deptCode; 
	@NotBlank
	private String deptNm;
	
}
