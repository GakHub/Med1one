package kr.or.ddit.medical.examinate.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 검진패키지
 * 
 * @author PC-03
 *
 */
@Data
@EqualsAndHashCode(of = { "packCode", "inspCode" })
public class MdexmnPackVO {

	@NotBlank
	private String packCode;
	@NotBlank
	private String inspCode;
	@NotBlank
	private String inspNm;
	
	private MdexmnVO mdexmn;
}
