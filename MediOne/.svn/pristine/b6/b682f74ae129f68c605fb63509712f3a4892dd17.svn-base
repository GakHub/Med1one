package kr.or.ddit.medical.examinate.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 검진상세목록 VO
 * 
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = { "mdexmnDtlCode", "inspCode", "mdexmnCode" })
public class MdexmnDtl {
	@NotBlank
	private String mdexmnDtlCode;        //건강검진코드
	@NotBlank
	private String inspCode;             //검사코드
	private String mdexmnRe;             //검진결과
	private String mdexmnYn;             //여부확인
	@NotBlank
	private String mdexmnCode;           //환자검진코드

}
