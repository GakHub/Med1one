package kr.or.ddit.medical.nurse.vo;

import java.time.LocalDate;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.medical.vo.FcltyInfoVO;
import kr.or.ddit.medical.vo.PatientVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 예약 VO
 * @author PC-10
 *
 */
@Data
@EqualsAndHashCode(of = {"resveNum","resveDate","resveTime","fcltyCode"})
public class ReservationVO {
   
   //10분단위로 예약
   
   @NotBlank
   private String resveNum;      //예약번호
   @NotBlank
   private String resveDate;      //예약일자 ex)20230801
   @NotBlank
   private String resveTime;      //예약시각 ex)0910
   @NotBlank
   private String resveEndtime;   //예약종료시각 ex)0920
   @NotBlank
   private LocalDate resveRegist;   //등록일자
   @NotBlank
   private String patntCode;      //환자코드
   @NotBlank
   private String fcltyCode;      //시설코드
   private String patntNm;          //환자명
   
   
   //행정부 예약조회용
   private String birth; //생년월일    
   private String birthCode; //주민번호 7자리        
   private String patntTelno; //환자연락처  
   private String fcltyNm;    //진료과명      
   private String docEmpNm;   //담당의
   private String docEmpNo;  //담당의사번 
   private String patEmail;  //예약환자 이메일
   private String fresveDate;  //예약일자 포맷팅
   private String fpatntRegist;  //최초 등록일 포맷팅
   private String fresveTime;  //예약시간 포맷팅
   private String fresveEndtime;  //예약시간 포맷팅
   private String gen; //성별
   private String patntAddr1; //주소
   private String height; //신장
   private String weight; //체중
   private String convertDate;   //예약일자 0000-00-00형식
   private String age;   //나이
   
   

   
   
}