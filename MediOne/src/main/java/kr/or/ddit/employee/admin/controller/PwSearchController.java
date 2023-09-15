package kr.or.ddit.employee.admin.controller;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;

import javax.mail.internet.MimeMessage;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin")
public class PwSearchController {

	// jsp 접근
	@GetMapping("PwSearch.do") 
    public String pwSearchGet() {
        return "administ/ajax/PwSearch"; 
    }

	@PostMapping(value = "sendEmail.do", produces =MediaType.APPLICATION_JSON_VALUE)
	  @ResponseBody public ResponseEntity<String> sendEmail(
			  @RequestParam String email
			  , @RequestParam String content
			  , @RequestParam String sender
			  , @RequestParam String empNo
			  , @RequestParam String empDept
			  , @RequestParam String empName
			  ) { 
		  Properties props = new Properties();
		  props.put("mail.smtp.host", "smtp.gmail.com"); 
		  props.put("mail.smtp.port","587");
		  props.put("mail.smtp.auth", "true");
		  props.put("mail.smtp.starttls.enable", "true");
		  props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	  
	  Session session = Session.getInstance(props, new Authenticator() {
	  
	  @Override protected PasswordAuthentication getPasswordAuthentication() {
	  return new PasswordAuthentication("soljeong0329@gmail.com","fgkshoqztcbxyfvr"); } });
	  
	  
	  String receiver = email; // 메일 받을 주소
	  String title = "[MED1ONE] 비밀번호 분실 관련 메일";
	  String msgcontent = "성명 : " + empName + "사번 : " +empNo + "부서 : " + empDept + content;
	  Message message = new MimeMessage(session); try { message.setFrom(new
	  InternetAddress("soljeong0329@gmail.com", "관리자", "utf-8"));
	  message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver)); message.setSubject(title);
	  message.setContent(msgcontent, "text/html; " + "charset=utf-8");
	  
	  Transport.send(message); 
	  return ResponseEntity.ok("{\"message\": \"OK\"}"); // 성공 상태 코드 반환
    } catch (Exception e) {
        e.printStackTrace();
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("이메일 전송에 실패하였습니다. " + e.getMessage());
    }
	}
}
