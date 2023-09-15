package kr.or.ddit.employee.fixtures.vo;

import java.time.LocalDateTime;

import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 약품신청관리
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "mediOrderCd")
public class MediReqmgrVO {
	@NotBlank
	private String mediOrderCd;			//주문코드
	@NotBlank
	private String processStatus;
	@DateTimeFormat(iso = ISO.DATE_TIME)//처리현황
	private LocalDateTime storageDate;		//입고일시 
	@NotBlank
	private String charger;				//담당자
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime reqmgrIndate;	//접수일시 sysdate
	@NotBlank
	private String empNo;				//총무과 사번
}
