package kr.or.ddit.message.vo;

import java.time.LocalDateTime;
import java.util.List;

import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import com.fasterxml.jackson.annotation.JsonFormat;

import kr.or.ddit.medical.vo.PatientVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 문자 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = "msgCode")
public class MessageVO{
	@NotBlank
	private String msgCode;		//문자발송코드
	@NotBlank
	private String msgSend;		//발송인
	private String msgRec;		//수신인
	private String formCode;	//문자양식코드
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd HH:mm") 
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime msgInsDate; //문자보낸시각
	
	private List<MessageDtlVO> formList; //문자양식리스트
	private PatientVO patient;
	private String form; // 문자양식
}
