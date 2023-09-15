package kr.or.ddit.Free.vo;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotBlank;

import org.apache.commons.lang3.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.File.vo.AtchFileVO;
import kr.or.ddit.employee.vo.EmployeeVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 자유게시판 VO
 * @author PC-10
 *
 */
@EqualsAndHashCode(of = "boardNo")
@Data
public class FreeBoardVO {
	
	private long rnum;
	
	@NotBlank 
	private String boardNo; //게시글번호 (시퀀스 FREE_NO_SEQ)
	
	
	@NotBlank
	private String boardTitle; //제목

	@NotBlank
	private String boardWrtr; //작성자
	
	@NotBlank 
	private String empNo; //사번, 아이디, 삭제조건
	
	@NotBlank
	private String boardContent; //내용
	
	private String freeEmpCount; //사번당게시글작성수
	
	
//	@DateTimeFormat(iso = ISO.DATE_TIME)
	private Date boardRegidate; //등록일시 sysdate
	
	public String getBoardRegidateDisplay() {
		String result = "";
		if(boardRegidate != null) {
			result = new SimpleDateFormat("yyyy-MM-dd").format(boardRegidate);
		}
		return result;
	}
	
	public void setBoardRegidateDisplay(String boardRegidateDisplay) {
		if(StringUtils.isNotEmpty(boardRegidateDisplay)) {
			try {
				boardRegidate = new SimpleDateFormat("yyyy-MM-dd").parse(boardRegidateDisplay);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
//	
//	 public static void main(String[] args) {
//		System.out.println(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date())); 
//	}
	

	private EmployeeVO employee;

	
	private Integer boardReadcount; //조회수(기본값 0) boHit
	
	private List<CommentVO> commentList; //댓글리스트
	
	long boardCmtRecord; //댓글개수
	
	
	private int boardAtchnum; //첨부파일 번호 ATCH_FILE
	
		//존재하지않는 경우가 있기때문에 Integer
		private Integer atchFileId;
		
		//파일 여러개 받기 위해 배열형태로 
		private MultipartFile[] boFiles; //DB에 저장 대신 이진데이터와 메타데이터를 분리해서 저장 -> 몇개의 파일이 첨부될지 모르고 용량이 얼마일지 모르기때문에 부하를 막기위해서 
										// 이진데이터와 메타데이터를 분리해서 저장 하려면 : 어디다가 저장할지가 먼저 결정되어야함 ->파일시스템에 저장

		//atchfilevo와 1:1 관계 1개의 게시물이 1개의 그룹
		private AtchFileVO fileGroup;

}
