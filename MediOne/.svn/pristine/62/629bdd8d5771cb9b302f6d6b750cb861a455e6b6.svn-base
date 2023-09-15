package kr.or.ddit.medical.hospital.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 *  바이탈
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = {"vtCode", "hsptlzCode", "vtDate", "vtTime"})
public class VitalVO {
	@NotBlank
	private String vtCode;		//바이탈코드
	@NotBlank
	private String hsptlzCode; //입원코드
	@NotBlank
	private String vtPls;		//맥박
	@NotBlank
	private String vtTmp;		//체온
	@NotBlank
	private String vtBp;		//혈압
	@NotBlank
	private String vtRp;		//호흡
	@NotBlank
	private String vtDate;		//기록일자 ex)20230801
	@NotBlank
	private String rcdrNm;	//기록자
	@NotBlank
	private String vtTime;		//시간기록 ex)0920
}
