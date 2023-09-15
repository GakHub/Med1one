package kr.or.ddit.chat.vo;

import java.time.LocalDateTime;

import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = {"chroomId","empNo"})
public class ChatUserVO {
	@NotBlank
	private String chroomId;
	@NotBlank
	private String empNo;
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime regdate;
}
