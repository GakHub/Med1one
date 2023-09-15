package kr.or.ddit.medical.hospital.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 환자기록 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "inptntCode")
public class InptntRcdrVO {
	@NotBlank
	private String inptntCode;		//환자기록코드
	@NotBlank
	private String hsptlzCode;		//입원코드
	private char mediYn;			//투약여부
	@NotBlank
	private String rcdrDay;			//기록일자 ex)20230801
	
	private HospitalizationVO hsp;
}
