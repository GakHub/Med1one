package kr.or.ddit.File.vo;

import java.time.LocalDateTime;
import java.util.List;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "atchFileId")
public class AtchFileVO {
	@NotBlank 
	private int atchFileId;
	@NotBlank 
	private LocalDateTime creatDt;
	
	private List<AtchFileDtlVO> detailList;
}
