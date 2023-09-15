package kr.or.ddit.employee.fixtures.vo;

import java.time.LocalDateTime;

import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 비품신청관리
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "fxtrsOrdCode")
public class ReqstdocMgrVO {
	@NotBlank
	private String fxtrsOrdCode;		//주문코드
	@NotBlank
	private String reqstdocSttus;		//처리현황
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime reqstdocYmd;	//입고일시
	@NotBlank
	private String reqstdocMgrnm;		//담당자명
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime reqmgrIndate;	//접수일시
	@NotBlank
	private String empNo;				//총무과사번
}
