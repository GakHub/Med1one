package kr.or.ddit.medical.clinc.vo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 외래진료처방오더
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "presCode")
public class PrescriptionVO {
	@NotBlank
	private String presCode;	//처방오더코드
	@NotBlank
	private LocalDate presDay;	//처방일자 sysdate
	@NotBlank
	private String clinicCode;	//외래진료코드
	
	private ClinicVO clinic; //외래진료
	private PresDocVO presd;
}
