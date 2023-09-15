package kr.or.ddit.chat.vo;

import java.time.LocalDateTime;

import javax.validation.constraints.NotBlank;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of="chmsgId")
public class ChatMessageVO {
	@NotBlank
	private String chmsgId;
	private String messageContent;
	@DateTimeFormat(iso = ISO.DATE_TIME)
	private LocalDateTime messageRegdate;
	@NotBlank
	private String empNo;
	private Integer unreadCount;
	private String chroomId;
}
