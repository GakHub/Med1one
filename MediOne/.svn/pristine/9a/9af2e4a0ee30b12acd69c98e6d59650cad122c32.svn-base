package kr.or.ddit.medical.clinc.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 마약류 VO
 * @author PC-19
 *
 */
@Data
@EqualsAndHashCode(of = "narCode")
public class NarcoticsVO {
	@NotBlank
	private String narCode; // 약품코드
	@NotBlank
	private String narNm; // 제품명
	@NotBlank
	private String narKimscl; // 분류
	@NotBlank
	private String narMth; // 투여(복약)
	@NotBlank
	private String narCaution; // 주의사항
	@NotBlank
	private Integer narStock; // 재고
}
