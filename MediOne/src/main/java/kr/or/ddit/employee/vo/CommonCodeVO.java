package kr.or.ddit.employee.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 공통코드 테이블 COMMON_CODE
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = {"highCode","codeId"})
public class CommonCodeVO{
	@NotBlank
	private String highCode; //상위코드
	@NotBlank
	private String codeId; //코드아이디
	@NotBlank
	private String codeNm; //코드명
	private int codeVal; //코드값(금액)
	private String codeCmt; //코드설명
	private char useYn; //사용여부
}
