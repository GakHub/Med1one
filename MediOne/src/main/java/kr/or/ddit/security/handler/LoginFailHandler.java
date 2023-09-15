package kr.or.ddit.security.handler;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

import kr.or.ddit.otp.security.OtpException;

public class LoginFailHandler extends SimpleUrlAuthenticationFailureHandler{
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException e) throws IOException, ServletException {
		logger.info("login fail handler");
		
		String errorMessage;
		
		if(e instanceof BadCredentialsException || e instanceof InternalAuthenticationServiceException){
			errorMessage = "아이디 또는 비밀번호가 맞지 않습니다.";
		} else if(e instanceof UsernameNotFoundException) {
			errorMessage = "존재하지 않는 아이디 입니다.";
		} else if (e instanceof OtpException){
			errorMessage = e.getMessage(); //otp 에러
		}
		else {
			errorMessage = "접근할 수 있는 권한이 없습니다. 사용자 승인 권한을 신청해주세요. ";
		}
		
		
		request.getSession().setAttribute("loginErrorMessage", errorMessage);
		
		setDefaultFailureUrl("/login/loginForm.jsp");
		
		super.onAuthenticationFailure(request, response, e);
	}
}
