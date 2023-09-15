package kr.or.ddit.employee.dao;

import static org.junit.jupiter.api.Assertions.assertTrue;

import javax.inject.Inject;

import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.junit.jupiter.web.SpringJUnitWebConfig;

import kr.or.ddit.employee.vo.EmployeeVO;

@SpringJUnitWebConfig(locations="file:src/main/resources/kr/or/ddit/spring/conf/*-context.xml")
class EmployeeDaoTest {

	@Inject
	private EmployeeDao dao;
	
	@Inject
	private PasswordEncoder encoder;
	
	@Test
	void testSelectEmpForAuth() {
		EmployeeVO emp = dao.selectEmpForAuth("DHT0005");
		assertTrue(encoder.matches("java",emp.getEmpPw()));
	}

}
