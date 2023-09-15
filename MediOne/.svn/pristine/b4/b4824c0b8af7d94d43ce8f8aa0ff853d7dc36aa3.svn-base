package kr.or.ddit.notice.vo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.File.vo.AtchFileVO;
import kr.or.ddit.validate.groups.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of ="noticeCode")
public class NoticeBoardVO {

//	@NotNull(groups = {UpdateGroup.class, DeleteGroup.class})
	@NotNull(groups = UpdateGroup.class)
	private String noticeCode; //공지글코드
	@NotBlank
	private String noticeTitle; // 제목 -
	@NotBlank
	private String noticeContent; // 내용-

	private LocalDate noticeRegidate; // 등록일시
	
	
	private int noticeReadcount; // 조회수
	private int atchFilenum; // 첨부파일번호

	private String adminEmpNo; //관리자사번
	
	private MultipartFile[] boFiles;
//	@NotNull(groups = {UpdateGroup.class, DeleteGroup.class})
	private Integer atchFileId;
	
	private AtchFileVO fileGroup; // has a
	
	
}

