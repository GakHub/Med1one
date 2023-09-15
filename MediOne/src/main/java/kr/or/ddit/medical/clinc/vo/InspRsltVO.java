package kr.or.ddit.medical.clinc.vo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 검사결과
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "inspRsltCode")
public class InspRsltVO {
	@NotBlank
	private String inspRsltCode;	//검사결과코드 (시퀀스)
	@NotBlank
	private String inspRsltCn;		//검사내용
	@NotBlank
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private LocalDate inspDay;		//검사일자 sysdate
	@NotBlank
	private String clinicCode;		//외래진료코드
	@NotBlank
	private String inspCode;		//검사코드
	@NotBlank
	private String docEmpNo;		//의사사번
	private String recCode;
	
	private InspectionVO insp; 
}
