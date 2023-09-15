package kr.or.ddit.otp.security;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;

//확장
public class CustomWebAuthenticationDetailsSource extends WebAuthenticationDetailsSource{

	@Override
	public WebAuthenticationDetails buildDetails(HttpServletRequest context) {
		CustomWebAuthenticationDetails detail = new CustomWebAuthenticationDetails(context);
		
		return detail;
	}
}
