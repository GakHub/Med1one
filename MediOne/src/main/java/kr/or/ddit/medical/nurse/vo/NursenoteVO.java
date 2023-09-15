package kr.or.ddit.medical.nurse.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 간호일지
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = {"nrsnoteCode", "nurwkCode"})
public class NursenoteVO {
	@NotBlank
	private String nrsnoteCode;		//일지코드 (시퀀스)
	@NotBlank
	private String nurwkCode;		//근무코드 (간호사 근무형태)
	@NotBlank
	private String nrsnoteContent;	//기록내용
	@NotNull
	private String nrsnoteDate;	//기록일자
	@NotBlank
	private String nrsnoteNm;		//기록인
	@NotBlank
	private String empNo;			//사번
}
