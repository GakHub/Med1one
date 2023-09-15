<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<script src="<%=request.getContextPath() %>/resources/js/bootstrap5/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<style>
@font-face {
    font-family: 'YESGothic-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_13@1.0/YESGothic-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.fontStyle{
	font-family: YESGothic-Regular;
	font-size : 16px;
}


   .circle-profile {
  display: inline-block;
  width: 40px; /* 조절 가능한 원의 크기 */
  height: 40px;
  border-radius: 50%; /* 동그란 모양으로 만들기 */
  overflow: hidden; /* 내부 컨텐츠를 동그란 영역 내에서 보이도록 설정 */
  background-color: lightgray; /* 원의 배경색 설정 */
}

.circle-profile img {
  width: 100%; /* 이미지를 원에 맞게 확장 */
  height: 100%;
  object-fit: cover; /* 이미지 비율 유지 및 맞춤 */
}

.circle-profile span {
  display: block;
  text-align: center;
  margin-top: 5px; /* 이름과 사진 사이 여백 조절 */
}
.menuHover{
	 border-radius: 10px;
}
.menuHover.active,
.menuHover:hover {
    background-color: #61867D;
    color: white;
}
</style>


   
<div class="navbar">
	<ul class="nav" style="margin-left: 80px; margin-top: 1px;">  
		<li class="nav-item">
			<a class="nav-link text-white fw-bold urlTag" style="font-size: 17px;" href="${pageContext.request.contextPath }/" role="tab"> 
				<i class="icofont-ui-home"></i>&nbsp;
				<span class="fontStyle">MED1ONE</span>
			</a>
		</li>
    </ul>  
   
    <security:authentication property="name" var="authId"/>
	
	<ul class="nav" >  
		<li class="nav-item">
			<a class="nav-link text-white fw-bold menuHover urlTag" style="margin-right: 20px;margin-left: 80px;" href="${pageContext.request.contextPath }/patient/patientReception.do" role="tab">
				<span class="fontStyle">외래진료</span>
			</a>
		</li>
   	</ul>  
	<div class="dropdown">	 
       <button class="btn btn-primary dropdown-toggle fw-bold menuHover" style="margin-right: 20px;" type="button"data-bs-toggle="dropdown" aria-expanded="false">
          <span class="fontStyle">병동</span>
       </button>
       <ul class="dropdown-menu border-0 shadow p-3">
           <li>
	           <a class="dropdown-item py-2 rounded urlTag" href="${pageContext.request.contextPath }/hospital/hospitalPatientView.do">
	           		<span class="fontStyle">병동관리</span>
	           </a>
           </li>
           <li>
	           <a class="dropdown-item py-2 rounded urlTag" href="${pageContext.request.contextPath }/hospital/hospitalInPatientList.do">
	           		<span class="fontStyle">환자관리</span>
	           </a>
           </li>
       </ul>
 	</div>
 	
 	<ul class="nav">  
		<li class="nav-item">
			<a class="nav-link text-white fw-bold menuHover urlTag" style="margin-right: 20px;" href="${pageContext.request.contextPath }/examinate/examPatientList.do" role="tab">
				<span class="fontStyle">검진센터</span>
			</a>
		</li>
   	</ul> 
   	
   	<div class="dropdown">
	    <button class="btn btn-primary dropdown-toggle fw-bold menuHover" style="margin-right: 20px;" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    	<span class="fontStyle">비품·약품</span></button>
	    <ul class="dropdown-menu border-0 shadow p-3">
	        <li>
		        <a class="dropdown-item py-2 rounded urlTag " style="margin-right: 20px;" href="${pageContext.request.contextPath }/nurse/medicineManage.do">
		        	<span class="fontStyle">약품관리</span>
		        </a>
	        </li>
	        <li>
		        <a class="dropdown-item py-2 rounded urlTag" href="${pageContext.request.contextPath }/fixtures/fixturesOrder.do">
		       		<span class="fontStyle">비품신청</span>
		        </a>
	        </li>
    	</ul>
	</div>
	
   	<ul class="nav">  
        <li class="nav-item">
	        <a class="nav-link text-white fw-bold menuHover urlTag"  style="margin-right: 20px;" href="<%=request.getContextPath() %>/nurse/docScheduleList.do" role="tab">
	        	<span class="fontStyle">근무일정</span>
	        </a>
        </li>
   	</ul>   
   
	<div class="dropdown">
	    <button class="btn btn-primary dropdown-toggle fw-bold menuHover" style="margin-right: 20px;" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    	<span class="fontStyle">커뮤니티</span></button>
	    <ul class="dropdown-menu border-0 shadow p-3">
	        <li>
		        <a class="dropdown-item py-2 rounded  urlTag" style="margin-right: 20px;" href="${pageContext.request.contextPath }/notice/noticeList.do">
		        	<span class="fontStyle">공지사항</span>
		        </a>
	        </li>
	        <li>
		        <a class="dropdown-item py-2 rounded urlTag" href="${pageContext.request.contextPath }/free/newFreeBoard.do">
		        	<span class="fontStyle">자유게시판</span>
		        </a>
	        </li>
    	</ul>
	</div>

  <ul class="nav">  
    	<li class="profile"  style="margin-left: 497px;">
	   		<div class="circle-profile">
		    	<img id="profileImage2"  alt="이미지">
		    </div>
   			<span>${employee.atchSn }</span>
  		</li>
      	<li id="nav-item" class="nav-item">
		    <a class="nav-link text-white" href="${pageContext.request.contextPath}/mypage/mypage.do" role="tab" style=" margin-top: 5px;">
		        <span class="fontStyle">간호부 ${authMember.empNm}님</span>
		    </a>
		</li>
		<li id="nav-item" class="nav-item menuHover">
		    <a class="nav-link text-white" href="${pageContext.request.contextPath}/admin/treeList.do" role="tab" style=" margin-top: 5px;">
		        <i class="fas fa-sitemap fa-lg"></i>
		    </a>
		</li>
	     <li class="nav-item" style="margin-top: 5px; margin-left:7px;">
		     <a class="nav-link text-white fw-bold" href="<%=request.getContextPath()%>/login/logout" role="tab">
		     	<i class="fas fa-sign-in-alt fa-lg"></i>
		     </a>
	     </li>
	</ul>
</div>

<script>
$(document).ready(function() {
    // empNo 값을 어떻게 가져오는지에 따라 수정
    let empNo = "${authId}";
    $.getJSON("<c:url value='/mypage/imgNameSearch.do' />", { empNo: empNo }).done(function(resp) {
        let streFileNm = resp.streFileNm;
        let attachmentUrl = "${pageContext.request.contextPath}/resources/images/atch/" + streFileNm;
        let imgElement = document.getElementById("profileImage2");
        imgElement.src = attachmentUrl;
        
        imgElement.onload = function() {
            imgElement.style.display = "block";
        };
    });
    
    var clickedMenuIndex = -1;

    // 클릭한 메뉴의 인덱스를 로컬 스토리지에서 가져옴 (최초 로드 시)
    if (localStorage.getItem('clickedMenuIndex')) {
        clickedMenuIndex = parseInt(localStorage.getItem('clickedMenuIndex'));
    }

    // 페이지 로드 시 클릭한 메뉴에 'active' 클래스 추가
    if (clickedMenuIndex >= 0) {
        $('.menuHover').eq(clickedMenuIndex).addClass('active');
    }

    // 메뉴 클릭 시
    $('.menuHover').on('click', function() {
        // 이전에 클릭한 메뉴의 'active' 클래스 제거
        $('.menuHover').removeClass('active hover'); // 'hover' 클래스도 함께 제거
        // 클릭한 메뉴에 'active' 클래스 추가
        $(this).addClass('active');

        // 클릭한 메뉴의 인덱스 저장
        clickedMenuIndex = $('.menuHover').index(this);
        localStorage.setItem('clickedMenuIndex', clickedMenuIndex.toString());

        // 모든 메뉴의 호버 효과 제거
        $('.menuHover').removeClass('hover');
    });

    // 호버 효과 제거 및 복원
    $('.menuHover').hover(
        function() {
            // 호버 효과 추가
            $(this).addClass('hover');
        },
        function() {
            // 호버 효과 제거 (클릭한 메뉴는 제외)
            if ($('.menuHover').index(this) !== clickedMenuIndex) {
                $(this).removeClass('hover');
            }
        }
    );
    
 // 호버 효과가 적용되지 않은 다른 메뉴 클릭 시
    $('.navbar .nav-link.text-white.fw-bold:not(.menuHover)').on('click', function() {
        // 모든 메뉴의 호버 효과 제거
        $('.menuHover').removeClass('hover');
    });
    
    // 페이지 로드 시 localStorage 초기화
    localStorage.removeItem('clickedMenuIndex');
    
    
//     $(".urlTag").on("click", function(event) {
    	
//         // 기본 동작(페이지 이동) 막기
//         event.preventDefault();
//         // 로딩 스피너 표시
//         $.LoadingOverlay("show", {  
<%--             image: "<%=request.getContextPath() %>/resources/images/mainSpinnerIcon.gif", --%>
//             imageAnimation: false
//         });

//         // 페이지 이동 (예: 링크의 href 속성에 지정된 URL로 이동)
//         setTimeout(function() {
//        		window.location.href = $(this).attr("href"); // 절대 경로로 이동
//     	}.bind(this), 1000); // 1초 후에 실행 (로딩 스피너를 좀 더 오래 표시하려면 시간을 조정)
//     });
    
    
});



</script>

   