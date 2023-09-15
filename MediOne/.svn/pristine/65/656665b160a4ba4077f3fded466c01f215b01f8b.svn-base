package kr.or.ddit.employee.fixtures.vo;

import java.time.LocalDate;
import java.util.List;

import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;
import lombok.EqualsAndHashCode;


/**
 * 비품신청 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "fxtrsOrdCode")
public class FixturesReqVO {
	@NotBlank
	private String fxtrsOrdCode; //주문코드 (시퀀스)
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	@NotBlank
	private LocalDate fxtrsDate; //주문일자 sysdate
	@NotBlank
	private int fxtrsCount; //수량
	@NotBlank
	private String fxtrsCode; //비품코드
	@NotBlank 
	private String empNo; //사번
	@NotBlank
	private String fxtrsSeCode; //비품분류코드
	@NotBlank
	private String fxtrsSe;	//비품분류명
	@NotBlank
	private String fxtrsNm;	//비품명
	@NotBlank
	private int fxtrsUntpc;	//단가
	@NotBlank
	private String fxtrsMfbiz;	//제조사
	
	@NotBlank 
	private String empNm;	//사원명
	@NotBlank
	private int totalSum;	//총금액
	@NotBlank
	private String deptNm;	//부서명
	@NotBlank
	private String deptCode;	//부서코드
	
	private String fxtrsSttus;	//지급상태
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private LocalDate fxtrsGvDate;	//지급일자
	
	
	private FixturesVO fix;
	private List<FixturesVO> fixtureList; //비품리스트
}
