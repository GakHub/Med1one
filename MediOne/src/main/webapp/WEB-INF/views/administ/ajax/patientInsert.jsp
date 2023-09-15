<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">

<meta name="generator" content="Hugo 0.88.1">
<meta name="theme-color" content="#6aab9c">

<title>WELCOME MED1ONE<%-- <tiles:getAsString name="title" /> --%></title>

<tiles:insertAttribute name="preScript" />

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.navbar {
	background-color: #6aab9c;
	font-size: 14px;
	font-weight: bolder;
}
</style>
<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/resources/css/dashboard.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">

<!-- Plugin css file  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/dist/assets/plugin/owlcarousel/owl.carousel.min.css">


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 주소 api -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>


<body class="d-flex flex-column vh-100">

	<div
		class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"
		style="height: 0px;">
		<h6 class="mb-0 fw-bold">환자 등록</h6>
		<br>
		<br>
	</div>

	<form:form modelAttribute="patient"
		enctype="multipart/form-data" id="patntInsertForm">
		<form:hidden path="patntCode" />
		<form:hidden path="patntUpdate" />
		<form:hidden path="mdexmnYn" />
		<table id="patientFrom" class="table table-border">

			<tr>
				<th>성명</th>
				<td><form:input path="patntNm" name="patntNm"
						class="form-control" placeholder="홍길동" /> <form:errors path="patntNm" class="error" />
				</td>
			</tr>
			<tr>
				<th>주민번호</th>
				<td><form:input path="patntIdentino" name="patntIdentino"
						class="form-control" placeholder="991010-1111111" /> <form:errors path="patntIdentino"
						class="error" /></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><form:input path="patntTelno" name="patntTelno"
						class="form-control" placeholder="010-1111-1111"/> <form:errors path="patntTelno"
						class="error" /></td>
			</tr>
			<tr>
				<th>우편번호</th>
				<td><form:input path="patntZipcode" name="patntZipcode"
						class="form-control" /> <form:errors path="patntZipcode"
						class="error" />
					<button type="button" id="addrBtn" class="btn btn-primary">주소검색</button>
				</td>
			</tr>
			<tr>
				<th>주소</th>
				<td><form:input path="patntAddr1" name="patntAddr1"
						class="form-control" readonly="true" /> <form:errors
						path="patntAddr1" class="error" /></td>
			</tr>
			<tr>
				<th>상세주소</th>
				<td><form:input path="patntAddr2" name="patntAddr2"
						class="form-control" /> <form:errors path="patntAddr2"
						class="error" /></td>
			</tr>
			<tr>
				<th>키</th>
				<td><form:input path="height" name="height"
						class="form-control" placeholder="160cm" /> <form:errors path="height" class="error" />
				</td>
			</tr>
			<tr>
				<th>몸무게</th>
				<td><form:input path="weight" name="weight"
						class="form-control" placeholder="50kg" /> <form:errors path="weight" class="error" />
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td><form:radiobutton path="gen" name="gen" value="M" label="남" />
					<form:radiobutton path="gen" name="gen" value="F" label="여" id="genF"/> <form:errors
						path="gen" class="error" /></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><form:input path="patEmail" name="patEmail"
						class="form-control" placeholder="nnn@naver.com" /> <form:errors path="patEmail"
						class="error" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="d-flex">
						<input class="btn btn-success" type="submit" value="등록" id="submitButton"> 
						<input class="btn btn-danger" type="reset" value="취소" id="revoke"> 
						 <div  class="ms-auto">
				            <input class="btn btn-secondary" type="button" value="click" id="dataInsert">
				        </div>
				     </div>
				</td>
			</tr>
		</table>
	</form:form>
	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<script>
	
	const Toast = Swal.mixin({
	    toast: true,
	    position: 'center-center',
	    showConfirmButton: false,
	    timer: 1000,
	    timerProgressBar: true,
	    didOpen: (toast) => {
	        toast.addEventListener('mouseenter', Swal.stopTimer)
	        toast.addEventListener('mouseleave', Swal.resumeTimer)
	    }
	});	
	
	// 등록버튼 버튼 클릭시
	$(document).ready(function() {
	    $('#submitButton').on('click', function(event) {
	        event.preventDefault(); // 기본 동작 차단
	        
	        var formData = $('#patntInsertForm').serialize(); // 폼 데이터를 직렬화
	        
	        $.ajax({
	            url: 'patientInsert.do', 
	            type: 'POST', 
	            data: formData,
	            success: function(response) {
	                // 폼 초기화 또는 다른 작업 수행
	                $('#patntInsertForm')[0].reset();

	                // 등록 성공 후에 Toast 표시
	                Toast.fire({
	                    icon: 'success',
	                    title: '등록하였습니다.',
	                    showConfirmButton: true, // 확인 버튼 보이도록 설정
	                    onClose: () => {
	                        window.close(); // 창 닫기
	                    }
	                });
	            },
	            error: function() {
	                // 오류 발생 시 처리할 코드
	                Toast.fire({
	                    icon: 'error',
	                    title: '오류가 발생했습니다.',
	                });
	            }
	        });
	    });
	});

	
	
		//주소찾기
		$('#addrBtn')
				.on(
						'click',
						function() {
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
													&& /[동|로|가]$/g
															.test(data.bname)) {
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
											document
													.getElementById('patntZipcode').value = data.zonecode;
											document
													.getElementById("patntAddr1").value = roadAddr;
											//document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
										}
									}).open();
						});

		// 취소버튼
		document.getElementById("revoke").addEventListener("click", function() {
			window.close();
		});

	/* 	document.getElementById("submitButton").addEventListener("click",
				function() {
					alert("환자를 등록하였습니다.");
					window.close();
		}); */
		//시연용
		document.getElementById("dataInsert").addEventListener("click",
				function() {
			document.getElementById("patntNm").value = "김자바"; 
		    document.getElementById("patntIdentino").value = "950516-1100111"; 
		    document.getElementById("patntTelno").value = "01027023624"; 
		    document.getElementById("patntZipcode").value = "34908"; 
		    document.getElementById("patntAddr1").value = "대전 중구 계룡로 846"; 
		    document.getElementById("patntAddr2").value = "4층 403호"; 
		    document.getElementById("height").value = "175cm"; 
		    document.getElementById("weight").value = "65kg"; 
		    document.getElementById("patEmail").value = "sohee950516@naver.com"; 
		    document.getElementById("genF").checked  = true; 
			
		});
		
	</script>

</body>
</html>