package kr.or.ddit.otp.security;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.web.authentication.WebAuthenticationDetails;

//확장
public class CustomWebAuthenticationDetails extends WebAuthenticationDetails {

	private String otpNum;
	
	public CustomWebAuthenticationDetails(HttpServletRequest request) {
		super(request);
		this.otpNum = request.getParameter("empOtp"); //loginForm.jsp 에서 보낸 값 받기
		
		
	}
	public String getOtpNum() {
		return otpNum;
	}

}
