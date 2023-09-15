package kr.or.ddit.medical.clinc.vo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 *  회진 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "roundsCode")
public class RoundsVO {
	@NotBlank
	private String roundsCode;	//회진코드 (시퀀스)
	@NotBlank
	private String roundsCn;	//회진내용
	@NotBlank
	private LocalDate roundsDay;//회진일자
	@NotBlank
	private String hsptlzCode;	//입원코드
}
