package kr.or.ddit.medical.nurse.vo;

import java.time.LocalDate;
import java.util.List;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.employee.vo.CommonCodeVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 근무일정 VO
 * DOCTOR_SCHDUL
 *
 */
@Data
@EqualsAndHashCode(of = {"doctrDate","docwkCode"})
public class DoctorSchdulVO extends CommonCodeVO{
	@NotBlank
	private String doctrDate; //일자 ex)20230801
	@NotBlank
	private String docwkCode; //근무코드 COMMON_CODE
	@NotBlank
	private String docEmpNo; //사번
	private String doctrWrter; //작성자
	@NotBlank
	private LocalDate doctrRgsde; //등록일자 sysdate
	private String doctorUpwrter; //수정자
	private LocalDate doctrUpdde; //수정일자
	private String doctrAttend; //출근예정시간
	private String doctrLeaving; //퇴근예정시간

	
	private List<DoctorDtlVO> doctorschList;
	private List<CommonCodeVO> comList;
	
}
