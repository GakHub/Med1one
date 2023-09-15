<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.css">
<!-- project css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">

<style>

.top-color {
	border-top: 3px solid #6aab9c;
}

.card-body {
	height: 100px;
}

tr, td, th.sorting {
	font-size: xx-small;;
	text-align: center; /* 텍스트 정렬을 가운데로 설정 */
}

a.page-link {
	font-size: xx-small;
}

li.pagelink {
	width: 50px;
	font-size: xx-small;;
	text-align: center; /* 텍스트 정렬을 가운데로 설정 */
}

label {
	font-size: 14px; /* 텍스트 크기 설정 */
}

input[type="search"] {
	width: 100px !important; /* 입력칸의 길이 설정 */
}

ui {
	width: 50px;
	font-size: xx-small;;
	text-align: center; /* 텍스트 정렬을 가운데로 설정 */
}

/* 민트색 버튼 스타일 */
.mint-btn {
	margin-left: 10px;
	display: inline-block;
	font-weight: 500;
	line-height: 1.5;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	color: #fff; /* 텍스트 색상 */
	background-color: #6aab9c; /* 배경색 */
	border-color: #6aab9c; /* 테두리 색상 */
	user-select: none;
	padding: 0.375rem 0.75rem;
	font-size: 1.2em;
	border-radius: 0.25rem;
	float: right; /* 버튼을 오른쪽으로 부유(floating)시킴 */
}

/* 민트색 버튼 호버 효과 */
.mint-btn:hover {
	background-color: #5fa192; /* 호버시 배경색 변경 */
	border-color: #5fa192; /* 호버시 테두리 색상 변경 */
	/* 다른 호버 효과 (예: 텍스트 색상 변경) 추가 가능 */
}

/* 민트색 버튼 클릭 효과 */
.mint-btn:active {
	background-color: #5fa192; /* 클릭시 배경색 변경 */
	border-color: #5fa192; /* 클릭시 테두리 색상 변경 */
}

/* 움직이는 텍스트 */
.animated-title {
	color: black;
	font-size: 14px;
	font-family: serif;
	font-weight: 400;
	position: relative;
	width: 100%;
	max-width: 100%;
	height: 50px; /* 높이를 고정으로 설정, 원하는 크기로 조절 */
	overflow: hidden;
}

.animated-title .track {
	position: absolute;
	white-space: nowrap;
	will-change: transform;
	animation: marquee 17s linear forwards;
	/*forwards; 대신 infinite; 사용하면 반복, 애니메이션 시간을 조절 */
}

@
keyframes marquee {from { transform:translateX(0);
	
}

to {
	transform: translateX(-100%);
}

}
.content {
	margin-left: 500px;
}

.custom-input {
	width: 500px;
}

.nav-item {
	width: 100px;
}

.nav-link {
	width: 90px;
	color: #008C8C;
}

.active {
	color: #008C8C;
}

.nav-tabs {
	color: black;
}
</style>
<!-- Body: Body -->
<div class="body d-flex py-3">
	<div class="container-xxl">
		<!-- 1행 3열 카드 시작 -->
		<div class="row g-3 mb-3"
			style="height: 88vh; margin-left: -150px; margin-right: -330px">
			<!-- margin-left:-200px; margin-right:-200px-->
			<!-- 세로로 길게 배치된 card1 -->
			<div class="col-md-4 col-lg-4"
				style="width: 20%; height: 100%; margin-right: 1%;">
				<div class="card top-color" style="height: 100%;">
					<div
						class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
						<h6 class="mb-0 fw-bold">수납 대기 목록</h6>
					</div>
					<div class="card-body">
						<table  class="table">
							<thead>
								<tr>
									<th>접수코드</th>
									<th>환자명</th>
									<th>생년월일</th>
									<th>상태</th>
								</tr>
							</thead>
							<tbody id="patientArea">
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- 나머지 카드들 (2행부터) -->
			<div class="col-md-8 col-lg-8"
				style="display: flex; flex-direction: column; width: 50%;">
				<!-- 2행 1열 카드 시작 -->
<!-- 				<div class="row g-3 mb-3" style="flex: 1; display: flex;"> -->
<!-- 					<div class="col-md-4 col-lg-4" -->
<!-- 						style="width: 30%; margin-right: 1%; flex-grow: 1;"> -->
<!-- 						<div class="card h-100"> -->
<!-- 							<div -->
<!-- 								class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"> -->
<!-- 								<h6 class="mb-0 fw-bold">Card 2</h6> -->
<!-- 							</div> -->
<!-- 							<div class="card-body"></div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				2행 1열 카드 종료 -->
<!-- 				2행 2열 카드 시작 -->
<!-- 				<div class="row g-3 mb-3" style="flex: 1; display: flex;"> -->
<!-- 					<div class="col-md-4 col-lg-4" -->
<!-- 						style="width: 30%; margin-right: 1%; flex-grow: 1;"> -->
<!-- 						<div class="card h-100"> -->
<!-- 							<div -->
<!-- 								class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"> -->
<!-- 								<h6 class="mb-0 fw-bold">Card 3</h6> -->
<!-- 							</div> -->
<!-- 							<div class="card-body"> -->
<!-- 								<div id="#"></div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div class="row g-3 mb-3" style="flex: 1; display: flex;">
						<div class="card h-100">
							<div class="card-body">
									
							</div>
						</div>
				</div>

			</div>
			<!-- 2열 end -->
			<!-- 세로로 길게 배치된 card1 -->
			<div class="col-md-4 col-lg-4"
				style="width: 20%; height: 100%; margin-right: 1%;">
				<div class="card" style="height: 100%;">
					<div
						class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
						<h6 class="mb-0 fw-bold">Card 4</h6>
					</div>
					<div class="card-body">
						<div id="#"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- 1행 3열 카드 종료 -->
	</div>
</div>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/page/doctor-profile.js"></script>
<script>
	// 수납대기 환자 조회
	$.getJSON("<c:url value='/receive/receivePatientView.do' />").done(function(resp){
		let tbody = $("#patientArea");
		tbody.empty();
		console.log(resp);
			
		if(resp.length>0){
			$(resp).each(function(idx,patient){
				console.log(patient);
				let tr = $("<tr>").append(
					$("<td>").html(patient.recCode)
					,$("<td>").html(patient.recep.patnt.patntNm)
					,$("<td>").html(patient.recep.patnt.patntIdentino)
					,$("<td>").append($("<span>").addClass("badge bg-primary").text("수납대기"))
				);
				tbody.append(tr);
			});
		}else{
			tbody.append(
					$("<tr>").html(
						$("<td colspan='4'>").html("해당 환자가 존재하지 않습니다.")		
				)		
			);
		}
	});
	
</script>
