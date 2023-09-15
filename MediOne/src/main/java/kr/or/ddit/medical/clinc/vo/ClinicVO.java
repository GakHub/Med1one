package kr.or.ddit.medical.clinc.vo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonFormat;

import kr.or.ddit.medical.vo.ReceptionVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 외래진료 VO CLINIC
 * 
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "clinicCode")
public class ClinicVO {
	@NotBlank
	private String clinicCode; // 외래진료코드 (시퀀스)
	@NotBlank
	private String recCode; // 접수코드 RECEPTION
	@NotBlank
	private String docEmpNo; // 의사사번 DOCTOR_DTL
	@NotBlank
	private String dssCode; // 상병코드 DISEASE
	private Integer dssNo; // 상병일련코드 DISEASE
	@NotBlank
	private String clinicContent; // 진료내용
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	@NotBlank
	private LocalDate clinicDate; // 진료일자 sysdate

	private ReceptionVO recept; // 접수
	private String insYn; //검사여부 NULL이면 검사 X -> 트리거 생성 NULL이 아니면 검사시행
	private PrescriptionVO pres;
	
	private InspOrderVO ins;
	private DiseaseVO disease;

}
