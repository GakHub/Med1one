package kr.or.ddit.medical.examinate.vo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonFormat;

import kr.or.ddit.employee.vo.CommonCodeVO;
import kr.or.ddit.medical.vo.PatientVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "mdexRstCode")
public class MdexmnRstltVO {
	@NotBlank
	private String mdexRstCode;
	@NotBlank
	private LocalDate mdexmnDate;
	@NotBlank
	private String mdexmnRs;
	@NotBlank
	private String inspNm;
	@NotBlank
	private String mdexmnCode;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	private LocalDate mdexmnRsdate;
	
	private PatientVO patnt;
	private CommonCodeVO com;
}
