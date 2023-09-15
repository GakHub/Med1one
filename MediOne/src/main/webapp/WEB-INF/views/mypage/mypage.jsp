<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value='/employee/empUpdate.do' var="updateURL">
	<c:param name="who" value="${employee.empNo }"/>
</c:url>



<style>

#mypageInfo {
margin-left: 65px;
width:90%
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

.about .content h5 {
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
	margin-top:-70px;
	display:flex;
	padding-right: 50px;
}

.row {
    --bs-gutter-x: 2.5rem;
    --bs-gutter-y: 0;
    display: flex;
    flex-wrap: wrap;
    margin-top: calc(-1 * var(--bs-gutter-y));
    margin-right: calc(-.5 * var(--bs-gutter-x));
    margin-left: calc(-.5 * var(--bs-gutter-x));
}
</style>


<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<!-- ======= About Section ======= -->


   <section id="about" class="about">
    <div class="container">
        <br><br><br><br><br>
        <div class="totalDiv">
            <div class="left" style="width: 2150px;">
                <div class="section-title">
                    <h2>${employee.empNm }님의 마이페이지 <a href="${updateURL}" class="btn btn-primary" style="margin-left: 20px; background-color: #173b6c; color: white;">정보 수정</a></h2> 
                </div>
                <div class="row">
                    <div class="col-lg-4" data-aos="fade-right">
                        <img id="profileImage1" class="img-thumbnail" alt="프로필 이미지" style="max-height: 100%; height: 250px; width: 210px; margin-bottom: 35px;" src="<c:url value='/mypage/imgNameSearch.do' />?empNo=${employee.empNo}">
                    </div>
                    <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left" id="mypageInfo">
                    	<ul>
                    		<li>
                        <h3 class="deptNm" style="margin-bottom: 25px;">담당과&nbsp;<i class="bi bi-chevron-right"></i>&nbsp;&nbsp;${employee.dept.deptNm }</h3>
                    		</li>
                    	</ul>
                        <div class="row">
                            <div class="col-lg-6">
                                <ul>
					                  <li><i class="bi bi-chevron-right"></i> <h5>성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명 : </h5> <strong>&nbsp;&nbsp;${employee.empNm }</strong></li>
					                  <li><i class="bi bi-chevron-right"></i> <h5>사&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;번 : </h5> <strong>&nbsp;&nbsp;${employee.empNo }</strong></li>
					                  <li><i class="bi bi-chevron-right"></i> <h5>주민&nbsp;번호 : </h5> <strong>&nbsp;&nbsp;${employee.empIdentino }</strong></li>
					                  <li><i class="bi bi-chevron-right"></i> <h5>전화&nbsp;번호 : </h5> <strong>&nbsp;&nbsp;${employee.empTelno }</strong></li>
					                  <li><i class="bi bi-chevron-right"></i> <h5>입사&nbsp;일자 : </h5> <strong>&nbsp;&nbsp;${employee.jncmpYmd }</strong></li>
				                 </ul>
                    	    </div>
                  <div class="col-lg-6" >
                   	 <ul>
		                  <li><i class="bi bi-chevron-right"></i> <h5>이&nbsp;&nbsp;메&nbsp;&nbsp;일 &nbsp;: </h5> <strong>&nbsp;&nbsp;${employee.empEmail }</strong></li>
		                  <li><i class="bi bi-chevron-right"></i> <h5>우편&nbsp;번호 : </h5> <strong>&nbsp;&nbsp;${employee.empZipcode }</strong></li>
		                  <li><i class="bi bi-chevron-right"></i> <h5>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소 &nbsp;: </h5> <strong>&nbsp;&nbsp;${employee.empAddr1 }</strong></li>
		                  <li><i class="bi bi-chevron-right"></i> <h5>상세&nbsp;주소 : </h5> <strong>&nbsp;&nbsp;${employee.empAddr2 }</strong></li>
					       <!-- 면허번호가 있을 경우에만 표시 -->
                                    <c:if test="${not empty employee.doctrList.doctrNum }">
                                        <li><i class="bi bi-chevron-right"></i> <h5>면허&nbsp;번호 : </h5> <strong>&nbsp;&nbsp;${employee.doctrList.doctrNum }</strong></li>
                                    </c:if>
                                    <c:if test="${not empty employee.nurseList.nursNum }">
                                        <li><i class="bi bi-chevron-right"></i> <h5>면허&nbsp;번호 : </h5> <strong>&nbsp;&nbsp;${employee.nurseList.nursNum }</strong></li>
                                    </c:if>
                                    <c:if test="${not empty employee.techList.techNum }">
                                        <li><i class="bi bi-chevron-right"></i> <h5>면허&nbsp;번호 : </h5> <strong>&nbsp;&nbsp;${employee.techList.techNum }</strong></li>
                                    </c:if>
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
				</div>
			</div> <!-- rignt -->
        </div>
    </div>
</section><!-- End About Section -->



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- <script -->
<%-- 	src="<%=request.getContextPath()%>/resources/js/page/virtual2.js"></script> --%>

<script>
$(document).ready(function() {
    // empNo 값을 어떻게 가져오는지에 따라 수정
    let empNo = "${employee.empNo}";
    
    $.getJSON("<c:url value='/mypage/imgNameSearch.do' />", { empNo: empNo }).done(function(resp) {
//         let atchSn = resp.atchSn;
        let streFileNm = resp.streFileNm;
//         let empNo = resp.empNo;
        let attachmentUrl = "${pageContext.request.contextPath}/resources/images/atch/" + streFileNm;
        console.log("attachmentUrl",attachmentUrl);
        let imgElement = document.getElementById("profileImage1");
        imgElement.src = attachmentUrl;
    });
});
</script>
