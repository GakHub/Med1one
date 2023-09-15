package kr.or.ddit.medical.nurse.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 의약품관리 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = {"disburNo","mediCode"})
public class MediMngVO {
	@NotBlank
	private Integer disburNo; 	//수불번호 (시퀀스)
	@NotBlank
	private String mediCode;  	//약품코드
	@NotNull
	@Min(0)
	private int mediInvntry;  //총수량
}
