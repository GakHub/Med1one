package kr.or.ddit.medical.clinc.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 의약품 VO
 * 
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "mediCode")
public class MedicineVO {
	@NotBlank
	private String mediCode; // 약품코드
	@NotBlank
	private String mediNm; // 제품명
	@NotBlank
	private String mediKimscl; // 분류
	@NotBlank
	private String mediMth; // 투여(복약) - 내복, 주사, 외용
	@NotBlank
	private String mediBznm; // 업체명
	@NotBlank
	private String mediStd; // 규격
	@NotBlank
	private String mediUnit; // 단위
	private int mediAmt; // 가격
	private int searchCnt; //검색수
}
