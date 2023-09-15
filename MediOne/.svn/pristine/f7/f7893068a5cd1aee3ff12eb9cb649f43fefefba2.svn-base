package kr.or.ddit.medical.hospital.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 *  병실 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = {"sckbdRo", "sckbdNo"})
public class SckbdVO {
	@NotBlank
	private String sckbdRo;		//호실
	@NotNull
	private int sckbdNo;	//침상번호
	@NotBlank
	private char availableYm;	//사용가능여부 입원테이블에 입원시키면 사용가능여부가 N 퇴원하면 Y
								//입원 침상 배정select 조건 - 사용가능여부가 Y 인것.
}
