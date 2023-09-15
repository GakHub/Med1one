<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<style>
.card.mb-3.top-color {
    text-align: center;
}

.card-body {
	width: 100px;
	hieght: 100px;
}

.form-control {
	border-radius: 1cm;
	background-color: #f0f0f0;
}

.form-select {
	border-radius: 1cm;
	background-color: #f0f0f0;
}

.form-label {
	color: #5fa192;
	font-weight: bold;
}

.btn-primary {
	display:right;
}
</style>

<div id="ihealth-layout" class="theme-tradewind">
    
    <!-- main body area -->
    <div class="main px-lg-4 px-md-4">
    
        <!-- Body: Body -->
        <div class="body d-flex py-3">

      <!--컨테이너  -->
            <div class="container">
    <div class="row">
    	<h3 style="text-align: center; color: #5fa192; font-weight: bold;">비밀번호 찾기</h3>
    	<br>
    	<br>
    	<h6 style="text-align: center;">비밀번호 분실시 문의해주세요.</h6>
    	<br>
    	<br>
        <div class="col mb-3">
            <div class="mb-3">
                <label class="form-label">사번</label>
                <input type="text" class="form-control">
            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="mb-3">
                <label class="form-label">부서</label>
                <select class="form-select" id="department">
                    <option selected>진료과</option>
                    <option value="B">호흡기내과</option>
                    <option value="A">소화기내과</option>
                    <option value="C">심장내과</option>
                    <option value="E">감염내과</option>
                    <option value="F">내분비내과</option>
                    <option value="C">영상의학과</option>
                </select>
            </div>
        </div>
       
        <div class="col-md-6 mb-3">
            <div class="mb-3">
                <label  class="form-label">핸드폰 번호</label>
                <input type="text" class="form-control" >
            </div>
        </div>
        
         <div class="col-md-6 mb-3">
            <div class="mb-3">
                <label  class="form-label">이메일</label>
                <input type="text" class="form-control" id="email" >
            </div>
        </div>
        
        <div class="col-md-6 mb-3">
    		<div class="mb-3">
        	<label class="form-label">발신자</label>
       		 <input type="text" class="form-control" placeholder="MED1ONE" id="sender">
    	</div>
    
    		<div class="mb-3">
        	<label class="form-label">내용</label>
        		<input type="text" class="form-control" style="width:690px; height:100px;" id="content">
    		</div>
		
        
    		<div class="mb-3 form-check">
        		<input type="checkbox" class="form-check-input" >
        		<label class="form-check-label" for="agreement">개인정보 제공동의</label>
    		</div>
        	
        	<div class="col-md-6 mb-3 text-end">
            	<button class="btn btn-primary" onclick="sendEmail()">제출하기</button>
        	</div>
		</div>
    </div>
</div>
        </div>
    </div>
</div>

<script>
function sendEmail() {
    var email = $("#email").val();
    var sender = $("#sender").val();
    var content = $("#content").val();

    $.ajax({
        url: "<%=request.getContextPath()%>/admin/sendEmail.do", // 경로 앞에 '/admin' 추가
        type: "POST",
        /* dataType: "json", */
        data: {
            email: email,
            sender: sender,
            content: content
        },
        success: function(response) {
            console.log(response);
            alert("이메일이 성공적으로 전송되었습니다.");
        },
        error: function(xhr, status, error) {
            alert("이메일 전송에 실패하였습니다.");
        }
    });
}
</script>