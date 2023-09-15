package kr.or.ddit.medical.receive.vo;

import java.time.LocalDateTime;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 수납
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "rcvmtCode")
public class ReceiveVO {
	@NotBlank
	private String rcvmtCode;		//수납코드
	@NotNull
	@Min(0)
	private int totalamt;		//총금액
	@NotNull
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime recvmtDay;	//수납일자
	@NotBlank
	private String recvmtMth;		//수납방법
	@NotBlank
	private String recCode;			//접수코드

	//통계용
	private int totalAmount;			//월총매출액
	private String year;			//수납연도
	private String month;			//수납월
}
