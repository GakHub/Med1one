package kr.or.ddit.employee.fixtures.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 비품목록 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "fxtrsCode")
public class FixturesVO {
	@NotBlank
	private String fxtrsCode; //비품코드
	private String fxtrsNm; //비품명
	@NotNull
	@Min(0)
	private int fxtrsUntpc; //단가
	@NotNull
	@Min(0)
	private int fxtrsInv; //재고
	@NotBlank
	private String fxtrsMfbiz; //제조업체
	@NotBlank
	private String fxtrsLclas; //분류코드 FIXTURES_DTL
	
	private FixturesDTLVO fixtureDtl; //분류
	
	private String fxtrsSe; //분류명
	
	private String fxtrsSeCode;
}
