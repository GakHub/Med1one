<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/dist/assets/css/ihealth.style.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
 <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            background-color: #f5f5f5;
        }
        .content-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .barcode-container {
            text-align: center;
            padding:40px;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            margin-bottom: 30px;
        }
        .barcode-image {
            max-width: 100%;
            height: auto;
        }
        .btn-container {
            text-align: center;
            margin-top: 20px;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            margin-top: 10px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        #titleOtp{
        	font-size : 30px;
        	background-color: #6aab9c; /* 배경색 */
			border-color: #6aab9c; /* 테두리 색상 */
			color: white;
        }
        .contentOtp{
        	color : gray;
        	text-align : left;
        	font-size : 15px;
        }
        .saveBtn{
        	font-size : 17px;
        }
    </style>

</head>
<div class="content-container">
        <div class="barcode-container mb-4 mt-4">
	       	<div id="titleOtp" class="mb-5 mt-2">OTP 인증</div><br>
	       	<div class="mb-2 mt-5 contentOtp">(1) 처음 인증을 하시는 경우에는, 먼저 구글 OTP를 설치하세요.</div>
	       	<div class="mb-3 mt-3 contentOtp">(2) 구글 OTP 앱을 실행하신 후, 아래 QR코드를 스캔하세요.</div>
	       	<hr />
            <img src="${qrUrl}" alt="바코드 이미지" class="barcode-image">
	        <div class="btn-container mb-5 mt-5">
	            <button type="button" class="btn btn-dark saveBtn btn-lg" onclick="backTab()">등록</button>
	        </div>
        </div>
    </div>

<script>
        function backTab() {
            var secret = "${secret}";

            $.ajax({
                url: '<c:url value="/employee/updateOtp.do" />',
                method: 'GET',
                data: { "secret": secret },
                dataType: 'json',
                success: function(data) {
                    console.log(data);
                    Swal.fire({
                        icon: 'success',
                        title: 'OTP가 등록되었습니다.',
                        showConfirmButton: false,
                        timer: 1500
                    }).then(() => {
                    	$.LoadingOverlay("show", {
                	        image: "<%=request.getContextPath() %>/resources/images/mainSpinnerIcon.gif" // 로딩 중에 표시될 이미지 경로
                	        ,imageAnimation: false  //빙글빙글 돌아가는거 막음
                	    });
                    	setTimeout(function () {
                	        // 여기에 함수 실행 코드 추가 (pdf저장)
	                        window.location.href = "<%=request.getContextPath() %>/loginForm.jsp"; // loginForm.jsp로 이동
                	    }, 1000); // 1초 후에 실행
                    });
                },
                error: function(xhr, textStatus, error) {
                    console.log(xhr, textStatus, error);
                    Swal.fire({
                        icon: 'error',
                        title: '다시 시도해주세요.',
                        showConfirmButton: false,
                        timer: 1500
                    });
                }
            });
        }
    </script>
</body>
</html>