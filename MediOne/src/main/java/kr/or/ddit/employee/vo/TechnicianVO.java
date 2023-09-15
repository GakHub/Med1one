package kr.or.ddit.employee.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 의료기사상세
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "tecEmpNo")
public class TechnicianVO {
	@NotBlank
	private String tecEmpNo;	//사번
	@NotBlank
	private Integer techNum;	//의료기사면허
}
