package kr.or.ddit.medical.examinate.controller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.inject.Inject;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.medical.examinate.service.CheckUpMailService;
import kr.or.ddit.medical.vo.PatientVO;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/examinate/")
@RequiredArgsConstructor
public class CheckUpMailController {

		@Inject
		private final CheckUpMailService service;
	
		// jsp 접근
		@GetMapping("checkupMail.do") 
	    public String pwSearchGet() {
	        return "examinate/ajax/checkupMail"; 
	    }
		
		// 메일 환자 정보 조회
		@GetMapping(value = "checkupPatient.do", produces = MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody
		public List<PatientVO> checkupPatntView(
				@RequestParam("patntCode")String patntCode
				
				) {
			List<PatientVO> patient = service.retrieveCheckupPatient(patntCode);
			return patient;
		}
		
		// 메일 보내기(API)
		@PostMapping(value = "sendEmail.do", produces =MediaType.APPLICATION_JSON_VALUE)
		@ResponseBody 
		  public ResponseEntity<String> sendEmail(
				  @RequestParam String email
				  , @RequestParam String content
				  , @RequestParam String sender
				  , @RequestParam MultipartFile[] files
		  ) { 
			 
			final String UPLOAD_DIR = "D:\\test";
			 List<String> mailPathList = new ArrayList();
			 
			 
			
			 for (MultipartFile mailFile : files) {
		         if (mailFile.isEmpty())
		            continue;

		         String originalFilename = mailFile.getOriginalFilename();

		         String fileName = originalFilename;
		         String filePath = UPLOAD_DIR + File.separator + fileName;
		         try {
		        	    Files.copy(mailFile.getInputStream(), Paths.get(filePath), StandardCopyOption.REPLACE_EXISTING);
		        	    mailPathList.add(filePath);
		        	} catch (IOException e) {
		        	    e.printStackTrace();
		        	}
		      }

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
		  String title = "[MED1ONE] 건강검진결과 관련 메일";
		  String msgcontent = content;
		  
		  try {
			  Message message = new MimeMessage(session);
			  message.setFrom(new InternetAddress("soljeong0329@gmail.com", "관리자", "utf-8"));
		  message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver)); 
		  //message.setSubject(title);
		  //message.setContent(msgcontent, "text/html; " + "charset=utf-8");
		  
		  BodyPart textBodyPart = new MimeBodyPart();

          message.setSubject(title);
          textBodyPart.setText(msgcontent);

          Multipart multipart = new MimeMultipart();
          multipart.addBodyPart(textBodyPart);

          BodyPart fileBodyPart = new MimeBodyPart();
          
          String filePath = mailPathList.get(0);
          
          DataSource dataSource = new FileDataSource(filePath);
          DataHandler handler = new DataHandler(dataSource);
          
          fileBodyPart.setDataHandler(handler);
          fileBodyPart.setFileName(handler.getName());
          multipart.addBodyPart(fileBodyPart);

          message.setContent(multipart);
		  
		  Transport.send(message); 
		  return ResponseEntity.ok("{\"message\": \"OK\"}"); // 성공 상태 코드 반환
	    } catch (Exception e) {
	        e.printStackTrace();
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("이메일 전송에 실패하였습니다. " + e.getMessage());
	    }
}
}
