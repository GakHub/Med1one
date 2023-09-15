package kr.or.ddit.medical.clinc.vo;

import java.time.LocalDateTime;
import java.util.List;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import com.fasterxml.jackson.annotation.JsonFormat;

import kr.or.ddit.medical.vo.ReceptionVO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 진료처방내역
 * 
 * @author PC-10
 *
 */
@Data
@NoArgsConstructor
@EqualsAndHashCode(of = { "presCode", "mediCode", "docEmpNo" })
public class PresDocVO {
	@NotBlank
	private String presCode; // 처방오더코드
	@NotBlank
	private String mediCode; // 약품코드
	@NotBlank
	private String docEmpNo; // 의사사번
	@NotNull
	@Min(0)
	private int presdocAmt; // 금액(주사)
	@NotBlank
	private String presMAmt; // 1일투여량
	@NotBlank
	private Integer presMCo; // 1일투여횟수
	@NotNull
	@Min(0)
	private int mediDay; // 투약일수
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime presDate; // 처방일시 sysdate
	private String recCode; // 접수코드
	private String presSepar;  //처방구분(입원여부) NULL이면 바로 수납대기 NULL이 아니면 입원 
	
	private ReceptionVO rec;
	private MedicineVO medi;
	private PrescriptionVO pre; // 외래진료처방오더
}
