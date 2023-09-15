<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>

.expanded-input {
		color:red;
        width: 100%;
        max-width: 400px; /* 최대 크기 설정 */
    }

.form-control{
	width: 150px;
    margin-left: 10px;
}

#mypageInfo {
margin-left: 65px;
width:93%
}

#rightmypageInfo {
margin-left: 65px;
width:93%;
height: 0px;
margin-top: 192px;
}

.container {
margin-left: 100px;
}


.col-lg-4 {
    margin-left: 200px;
}
.section-title {
  padding-bottom: 20px;
  padding: 60px;
  margin-bottom: -40px;
}

.section-title h2 {
  font-size: 32px;
  font-weight: bold;
  margin-bottom: 20px;
  padding-bottom: 20px;
  position: relative;
  color: #173b6c;
}

.section-title h2::after {
  content: "";
  position: absolute;
  display: block;
  width: 95px;
  height: 3px;
  background: #149ddd;
  bottom: 0;
  left: 0;
  margin-bottom: 11px;
}

/* .deptNm { */
/* content: ""; */
/*   position: absolute; */
/*   display: block; */
/*   width: 95px; */
/*   height: 3px; */
/*   background: #149ddd; */
/*   bottom: 0; */
/*   left: 0; */
/* } */

.section-title p {
  margin-bottom: 0;
}

.about .content h3 {
  font-weight: 700;
  font-size: 26px;
  color: #173b6c;
}

.about .content h6 {
  font-weight: 700;
  font-size: 18px;
  color: #173b6c;
}
.about .content ul {
  list-style: none;
  padding: 0;
}

.about .content ul li {
  margin-bottom: 20px;
  display: flex;
  align-items: center;
}

.about .content ul strong {
  margin-right: 10px;
}

.about .content ul i {
  font-size: 16px;
  margin-right: 5px;
  color: #149ddd;
  line-height: 0;
}

.about .content p:last-child {
  margin-bottom: 0;
}

.right{
    display: flex;
    justify-content: center;
    align-items: center;
    
}

body {
	 background-image: url("<%=request.getContextPath()%>/resources/images/hospitalGround.jpg");
	 background-size: cover; /* 이미지를 컨테이너에 맞게 크기 조절 */
	background-repeat: no-repeat; /* 이미지 반복 안 함 */
	
}

.totalDiv {
	background-color: rgba(255, 255, 255, 0.9);
	height: 80vh;
	margin-top:-10px;
	display:flex;
	padding-right: 50px;
}

.row {
    --bs-gutter-x: 1.5rem;
    --bs-gutter-y: 0;
    display: flex;
    flex-wrap: wrap;
    margin-top: calc(-1 * var(--bs-gutter-y));
    margin-right: calc(-.5 * var(--bs-gutter-x));
    margin-left: calc(-.5 * var(--bs-gutter-x));
}
</style>

<div>
<form:form method="post" modelAttribute="employee" enctype="multipart/form-data">
	<form:hidden path="deptCode"/>
	<form:hidden path="hdofYn"/>
	<form:hidden path="aprvYn"/>
	<form:hidden path="empRole"/>
	
	
	
<!-- ======= About Section ======= -->


   <div id="mypageFrom" class="about">
    <div class="container">
        <br><br><br><br><br>
        <div class="totalDiv">
            <div class="left" style="width: 2150px;">
                <div class="section-title">
                    <h2>${employee.empNm}님의 마이페이지
					    <span>
					        <input type="submit" class="btn btn-primary" value="수정" style="margin-left: 20px; background-color: #173b6c; color: white;"/>
					    </span>
					    <span style="display: inline-block; margin-left: 1px;">
						    <a href="${pageContext.request.contextPath}/mypage/mypage.do" class="btn btn-primary" style="background-color: #173b6c; color: white;">취소</a>
						</span>
					</h2>
                    
                </div>
                
                <div class="row">
                    <div class="col-lg-4" data-aos="fade-right">
                        <img id="profileImage1" class="img-thumbnail" alt="프로필 이미지" style="max-height: 100%; height: 250px; width: 210px; margin-bottom: 35px;" src="<c:url value='/mypage/imgNameSearch.do' />?empNo=${employee.empNo}">
                    </div>
                    
                    <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left" id="mypageInfo">
			    <ul>
			        <li>
			            <h3 class="deptNm" style="margin-bottom: 25px;">담당과&nbsp;<i class="bi bi-chevron-right"></i>&nbsp;&nbsp;${employee.dept.deptNm}</h3>
			        </li>
			    </ul>
			    <div class="row">
			        <div class="col-lg-6">
			           <ul>
			           		<li >
			           			<i class="bi bi-chevron-right"></i>
			           			<h6>성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명 :&nbsp; </h6> <strong>&nbsp;&nbsp;${employee.empNm }</strong>
			           			<form:input path="empNm" readonly="true" style="display: none;"/>
			           		</li>
			           		<li class="notIn">
			           			<i class="bi bi-chevron-right"></i>
			           			<h6>사&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;번 :&nbsp; </h6> <strong>&nbsp;&nbsp;${employee.empNo }</strong>
			           			<form:input path="empNo" readonly="true" style="display: none;"/>
			           		</li>
			           		<li class="notIn">
			           			<i class="bi bi-chevron-right"></i>
			           			<h6>주민&nbsp;번호 :&nbsp; </h6> <strong>&nbsp;&nbsp;${employee.empIdentino }</strong>
			           			<form:input path="empIdentino" readonly="true" style="display: none;"/>
			           		</li>
			           		<li class="notIn">
			           			<i class="bi bi-chevron-right"></i>
			           			<h6>입사&nbsp;일자 :&nbsp; </h6> <strong>&nbsp;&nbsp;${employee.jncmpYmd }</strong>
			           			<form:input path="jncmpYmd" readonly="true" style="display: none;"/>
			           		</li>
			       		    <c:if test="${not empty employee.doctrList.doctrNum }">
			                     <li><i class="bi bi-chevron-right"></i> <h6>면허&nbsp;번호 :&nbsp; </h6> <strong>&nbsp;&nbsp;${employee.doctrList.doctrNum }</strong></li>
			                 </c:if>
			                 <c:if test="${not empty employee.nurseList.nursNum }">
			                     <li><i class="bi bi-chevron-right"></i> <h6>면허&nbsp;번호 :&nbsp; </h6> <strong>&nbsp;&nbsp;${employee.nurseList.nursNum }</strong></li>
			                 </c:if>
			                 <c:if test="${not empty employee.techList.techNum }">
			                     <li><i class="bi bi-chevron-right"></i> <h6>면허&nbsp;번호 :&nbsp; </h6> <strong>&nbsp;&nbsp;${employee.techList.techNum }</strong></li>
			                 </c:if>
			                
			            </ul>
			        </div>
			        <div class="col-lg-6">
			            <ul>
			            	<li>
			           			<i class="bi bi-chevron-right"></i>
			           			<h6>비밀번호 :&nbsp;</h6>
			           			<form:input path="empPw" class="form-control" type="password" />
			         		   <form:errors path="empPw" class="error" />
			           		</li>
			            	<li>
			           			<i class="bi bi-chevron-right"></i>
			           			<h6>전화번호 :&nbsp; </h6> 
			           			<form:input path="empTelno" class="form-control" type="text" />
			          		    <form:errors path="empTelno" class="error" />
			           		</li>
			           		 <li>
			           			<i class="bi bi-chevron-right"></i>
			           			<h6>이&nbsp;&nbsp;메&nbsp;&nbsp;일 :&nbsp; </h6> 
			           			<form:input path="empEmail" class="form-control" type="text" />
			         		   <form:errors path="empEmail" class="error" />
			           		</li>
			            	
			            
			<!-- 면허번호가 있을 경우에만 표시 -->
			                                    
			            </ul>
			        </div>
			        
			       
			        
			    </div>
			</div>
                </div>
            </div>
            <div class="right">
            	<div class="row">
	            	<div class="logoImage">
	            	    <img src="${pageContext.request.contextPath}/resources/images/indexlogo.png" alt="space-imgs" style=" width: 600px; height: 80px;">
	          		 </div>	
	          		 
	          		 <!-- 주소 -->
	          		 <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left" id="rightmypageInfo">
			<div class="col-lg-7" style="width: 90%;">
            <ul>
            	<li>
           			<i class="bi bi-chevron-right"></i>
           			<h6>우편번호 : </h6> 
           			<form:input path="empZipcode" class="form-control" type="text"/>
         		   <form:errors path="empZipcode" class="error" />
           		</li>
            	<li>
           			<i class="bi bi-chevron-right"></i>
           			<h6>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소 : </h6> 
           			<form:input path="empAddr1" class="form-control" type="text" />
         		    <form:errors path="empAddr1" class="error" />
         		    <button type="button" id="addrBtn" class="btn btn-primary" style="margin-left: 20px; background-color: #173b6c; color: white;">주소검색</button>
           		</li>
            	<li>
           			<i class="bi bi-chevron-right"></i>
           			<h6>상세주소 : </h6> 
           			<form:input path="empAddr2" class="form-control" type="text"/>
          		    <form:errors path="empAddr2" class="error" />
           		</li>
            </ul>
            
         </div>
         </div>
         	 <!-- 주소 -->
         
				</div> <!-- row -->
			</div> <!-- rignt -->
        </div>
    </div>
    
   
</div><!-- End About Section -->
	
	
</form:form>
</div>
<script>

// 입력 폼 
// function expandInput(inputElement) {
//         inputElement.classList.add('expanded-input');
//     }

//     function shrinkInput(inputElement) {
//         inputElement.classList.remove('expanded-input');
//     }

  //사진출력
    $(document).ready(function() {
        // empNo 값을 어떻게 가져오는지에 따라 수정
        let empNo = "${employee.empNo}";
        
        $.getJSON("<c:url value='/mypage/imgNameSearch.do' />", { empNo: empNo }).done(function(resp) {
//             let atchSn = resp.atchSn;
            let streFileNm = resp.streFileNm;
//             let empNo = resp.empNo;
            let attachmentUrl = "${pageContext.request.contextPath}/resources/images/atch/" + streFileNm;
            console.log("attachmentUrl",attachmentUrl);
            let imgElement = document.getElementById("profileImage1");
            imgElement.src = attachmentUrl;
        });
    });
//주소찾기
$('#addrBtn').on('click',function() {
	//daum 주소 api로 검색하여 긁어온 코드
	new daum.Postcode(
			{
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== ''
							&& /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== ''
							&& data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName
								: data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' ('
								+ extraRoadAddr + ')';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('empZipcode').value = data.zonecode;
					document.getElementById("empAddr1").value = roadAddr;
					//document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
				}
			}).open();
});
</script>
