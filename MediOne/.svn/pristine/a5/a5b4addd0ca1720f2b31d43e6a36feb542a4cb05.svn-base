package kr.or.ddit.medical.nurse.vo;

import java.time.LocalDate;
import java.util.List;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.employee.vo.CommonCodeVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 근무일정_간호사 VO
 * NURSE_SCHDUL
 * @author PC-10
 *
 */
@EqualsAndHashCode(of = {"nurseDate","nurwkCode"})
@Data
public class NurseSchdulVO extends CommonCodeVO{
	@NotBlank
	private String nurseDate; //일자 ex)20230801
	@NotBlank
	private String nurwkCode; //근무코드 COMMON_CODE
	@NotBlank
	private String nurseNm; //이름
	private String nurseWritr; //작성자
	@NotBlank
	private LocalDate nurseRgsde; //등록일자 sysdate
	private LocalDate nurseUpdde; //수정일자
	private String nurseAttend; //출근예정시간
	private String nurseLeaving; //퇴근예정시간
	@NotBlank
	private String empNo; //사번
	
	private List<NurseDtlVO> nurseschList; //리스트
	private List<CommonCodeVO> comList;
	
}
