package kr.or.ddit.medical.hospital.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 식이기록
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of={"drcdrCode", "dietRcddate", "dietTime", "hsptlzCode"})
public class DietRcdrVO {
	@NotBlank
	private String drcdrCode; //식이기록코드
	@NotBlank
	private String hsptlzCode; //입원코드
	private String dietCode; //식이코드 -> common_code테이블
	@NotBlank
	private String dietRcddate; //기록일자 ex)20230802
	@NotBlank
	private String dietTime; //시간기록 0900
	@NotBlank 
	private String rcdrNm; //기록자
}
