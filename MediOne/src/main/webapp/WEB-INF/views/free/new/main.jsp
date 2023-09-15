<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- modul page(제이쿼리 사용을 위해 필요한 스크립트만 넣은) --%>
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/dist/assets/css/ihealth.style.min.css">
 --%>
<script
	src="<%=request.getContextPath()%>/resources/js/jquery-3.7.0.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/customLibs.js"></script>

<style>
img{

max-height: 270px !important;


}

</style>


<div class="row g-3">

	<div class="card" style="border-color: white;">
<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<h6 class="mb-0 fw-bold">사내동호회 모집</h6>
			</div>
		<div class="card-body">
			<div class="team_members video-list">
				<div class="owl-carousel owl-theme owl-carouselthree">
					<div class="item text-center">
						<img
							src="<%=request.getContextPath()%>/resources/images/골프.png"
							alt="" class="rounded-3 img-thumbnail shadow-sm"
							onclick="redirectToController('680')">
					</div>
					<div class="item text-center">
						<img
							src="<%=request.getContextPath()%>/resources/images/유기견봉사.jpg"
							alt="" class="rounded-3 img-thumbnail shadow-sm"
							onclick="redirectToController('679')">
					</div>
					<div class="item text-center">
						<img
							src="<%=request.getContextPath()%>/resources/images/볼링.jpg"
							alt="" class="rounded-3 img-thumbnail shadow-sm"
							onclick="redirectToController('675')">
					</div>
					<div class="item text-center">
						<img
							src="<%=request.getContextPath()%>/resources/images/탁구.png"
							alt="" class="rounded-3 img-thumbnail shadow-sm"
							onclick="redirectToController('678')">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row g-3">
	<!-- 두 번째 열의 내용을 여기에 작성 -->
	<div class="col">
		<div class="card" style="border-color: white;">
			<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<h6 class="mb-0 fw-bold">임직원 경조사</h6>
			</div>
			<div class="card-body" style="height: 280px;">
				<img
					src="<%=request.getContextPath()%>/resources/images/sample1.jpg"
					style="height: 255px; margin-bottom: 20px;" alt="sample"
					class="rounded-3 img-thumbnail shadow-sm"
					onclick="redirectToController('725')">
			</div>
		</div>
	</div>

	<div class="col">
		<div class="card" style="border-color: white;">
			<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<h6 class="mb-0 fw-bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h6>
			</div>
			<div class="card-body" style="height: 280px;">
				<img src="<%=request.getContextPath()%>/resources/images/돌잔치.jpg"
   		 			style="height: 255px; margin-bottom: 20px;"
    				alt="sample"
    				class="rounded-3 img-thumbnail shadow-sm"
    				onclick="redirectToController('681')">
			</div>
		</div>
	</div>
</div>


<!-- Row End -->


	

<script
	src="<%=request.getContextPath()%>/resources/js/page/virtual3.js"></script>
<script>
function redirectToController(boardNo) {
    var viewURL = "<c:url value='/free/freeView.do' />";
    viewURL += "?what=" + boardNo;

    $.ajax({
        type: "GET",
        url: viewURL,
        success: function(resp) {
            $("#freeView").html(resp);
            
            defaultPage();/*왼쪽 게시물 목록 새로고침 */
            
        },
        error: function() {
        	Toast.fire({
    		    icon: 'error',
    		    title: '다시 시도해주세요'
    		});
        }
    });
    
    
    
}
</script>

