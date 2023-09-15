package kr.or.ddit.employee.vo;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

/**
 * 권한 관련 클래스
 *
 */
public class EmployeeVOWrapper extends User{

	private EmployeeVO realUser;
	HttpSession session;
	public EmployeeVOWrapper(EmployeeVO realUser) {
		super(
				realUser.getEmpNo()
				,realUser.getEmpPw()
				,realUser.isAprvYn()
				,true
				,true
				,true
				,AuthorityUtils.createAuthorityList(realUser.getEmpRole())
				);
		this.realUser = realUser;
		
//		session.setAttribute("empRole", realUser.getEmpRole());
	}
	
	public String getName() {
		return realUser.getEmpNo();
	}

	public EmployeeVO getRealUser() {
		return realUser;
	}

}
