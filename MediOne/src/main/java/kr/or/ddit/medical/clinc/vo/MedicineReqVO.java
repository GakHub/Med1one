package kr.or.ddit.medical.clinc.vo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 약품신청 
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "mediOrderCd")
public class MedicineReqVO {
	@NotBlank
	private String mediOrderCd;			//주문코드 (시퀀스)
	private String mediCode;			//약품코드
	@NotNull
	private int mediOrderCo;		//수량
	@NotBlank
	private LocalDate mediOrderDate;	//주문일자 sysdate
	@NotBlank
	private String empNo;				//사번
}
