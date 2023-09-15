package kr.or.ddit.otp.security;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;

import kr.or.ddit.employee.vo.EmployeeVOWrapper;
import kr.or.ddit.otp.Utils;
//DaoAuthenticationProvider 에서 otp 인증 구현을 하기 위해 확장 -> 상속 받아서 코드 구현하기
public class CustomDaoAuthenticationProvider extends DaoAuthenticationProvider {

	@Override
	protected void additionalAuthenticationChecks(UserDetails userDetails,
			UsernamePasswordAuthenticationToken authentication) throws AuthenticationException {
		// TODO Auto-generated method stub
		super.additionalAuthenticationChecks(userDetails, authentication); //여기까지 원래 코드
		EmployeeVOWrapper wrapper = (EmployeeVOWrapper)userDetails; //로그인 정보를 받아서
		String otpNum = Utils.getTOTPCode(wrapper.getRealUser().getEmpOtp()); //그 안에 있는 otp를 꺼내 디코딩함

		
		CustomWebAuthenticationDetails details = (CustomWebAuthenticationDetails) authentication.getDetails(); //deatils 값 가져오기
		
//		if(!otpNum.equals(details.getOtpNum())){ //값 같은지 비교하기
//			throw new  OtpException("otp 인증에 실패했습니다.");  //otpException 만들어서 메세지 작성
//		}
		
		
	}
}
