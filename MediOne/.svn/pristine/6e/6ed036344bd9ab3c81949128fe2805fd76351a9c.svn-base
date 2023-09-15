package kr.or.ddit.Free.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;

import javax.validation.constraints.NotBlank;

import org.apache.commons.lang3.StringUtils;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import kr.or.ddit.employee.vo.EmployeeVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of = "cmtNo")
@Data
public class CommentVO {
	
	private long rnum;
	
	@NotBlank
	private String cmtNo; //코멘트번호
	@NotBlank
	private String cmtContent;
	
	
	private Date cmtRegidate;
	public String getCmtRegidateDisplay() {
		String result = "";
		if(cmtRegidate != null) {
			result = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(cmtRegidate);
		}
		return result;
	}
	
	public void setCmtRegidateDisplay(String cmtRegidateDisplay) {
		if(StringUtils.isNotEmpty(cmtRegidateDisplay)) {
			try {
				cmtRegidate = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").parse(cmtRegidateDisplay);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	
	@NotBlank
	private String boardNo;
	@NotBlank
	private String empNo;

	private String empNm;
	private String deptNm;
	private EmployeeVO employee;
	private FreeBoardVO freeBoard;
	
}
