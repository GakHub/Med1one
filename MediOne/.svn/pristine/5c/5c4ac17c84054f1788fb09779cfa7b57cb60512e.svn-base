package kr.or.ddit.employee.dao;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.authentication.UserServiceBeanDefinitionParser;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;

class PasswordEncoderTest {

	
	private static PasswordEncoder passwordEncoder;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
	
	@Test
	void test2() {
		String savedPass = "{bcrypt}$2a$10$XTyPlkJcWxscpZKVdF3VZu4SGJDcKbhfX6Cz91C8nr9Y.doMAA9UG";
		String inputPass = "java";
		boolean authenticated = passwordEncoder.matches(inputPass, savedPass);
		System.out.println(authenticated);
	}
	
	@Test
	void test() {
		String plain = "java";
		String encoded = passwordEncoder.encode(plain);
		System.out.println(encoded);
	}
	
}
