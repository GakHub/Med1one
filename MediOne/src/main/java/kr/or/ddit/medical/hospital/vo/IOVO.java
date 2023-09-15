package kr.or.ddit.medical.hospital.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * IO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = {"ioCode", "hsptlzCode", "ioDate", "ioTime"})
public class IOVO {
	@NotBlank
	private String ioCode;	//IO코드 (시퀀스)
	@NotBlank
	private String hsptlzCode; //입원코드
	@NotBlank
	private int ioIn;	//섭취
	@NotBlank
	private int ioOut;	//배출
	@NotBlank
	private String ioDate;	// 기록일자 ex)20230801
	
	@NotBlank
	private String ioTime;	//시간기록 ex)1300
	@NotBlank
	private String rcdrNm; //기록자
	
	private String ioMedi; //투약여부
}
