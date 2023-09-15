package kr.or.ddit.medical.clinc.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 상병정보VO
 * 
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "dssCode")
public class DiseaseVO {
	@NotBlank
	private String dssCode; //상병코드
	private String dssNm;   //질병명
	private String dssEnnm; //질병영문명
	private Integer dssNo;  //상병일련번호
}
