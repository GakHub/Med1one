package kr.or.ddit.medical.vo;

import java.time.LocalDateTime;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 환자위치정보
 * 
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = { "statCode", "recCode", "fcltyCode", "statTime" })
public class PatntStatVO {
	@NotBlank
	private String statCode; // 상태코드 COMMON_CODE
	@NotBlank
	private String recCode; // 접수코드
	@NotBlank
	private String fcltyCode; // 시설코드
	
	@NotNull
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd") //컨트롤러 (json형태로 포맷할 때)
	@DateTimeFormat(iso = ISO.DATE_TIME) //데이터베이스 연동되는 포맷 (?)
	private LocalDateTime statTime; // 현재위치시각 sysdate

	private ReceptionVO recep; // 접수 객체
	
	//통계용
	private String year;	//연도
	private String month;	//월
	private int monthCount;	//월별 환자수
	private int yearCount;	//연도별 환자수
	
	private FcltyInfoVO fcInfo;
}
