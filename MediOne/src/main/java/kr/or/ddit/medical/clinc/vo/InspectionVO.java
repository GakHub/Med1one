package kr.or.ddit.medical.clinc.vo;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import kr.or.ddit.medical.vo.FcltyInfoVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 검사
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "inspCode")
public class InspectionVO {
	@NotBlank
	private String inspCode;	//검사코드
	@NotBlank
	private String inspNm;		//검사명
	@NotNull
	@Min(0)
	private int inspCost;	//검사비
	
	private FcltyInfoVO fc;
}
