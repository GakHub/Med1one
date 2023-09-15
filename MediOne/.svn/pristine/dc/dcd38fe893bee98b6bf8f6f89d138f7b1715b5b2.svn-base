package kr.or.ddit.medical.hospital.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 입원추가처방오더 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = {"presCode" ,"mediCode", "docEmpNo"})
public class HsptlzAddVO {
	@NotBlank
	private String presCode;	//처방오더코드
	@NotBlank
	private String mediCode;	//약품코드
	@NotBlank
	private String docEmpNo;	//의사사번
	@NotBlank
	private String roundsCode;	//회진코드 
}
