<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>


<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.data
s.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.css">
<!-- project css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">

<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>

<style type="text/css">

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

nav-tabs {
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

.item {
	width: 100px;
}

.link {
	width: 90px;
	color: #008C8C;
}

.active {
	color: #008C8C;
}

.nav-tabs {
	color: black;
}

.custom-style:hover{
	cursor:pointer;
}

.callPatient:hover {
	cursor:pointer;
}
</style>

<security:authorize access="isAuthenticated()">
	<security:authentication property="principal.realUser" var="authMember" />
	 <div id="empNo" style="display: none;">${authMember.empNo}</div>
</security:authorize>
<div class="body d-flex py-5" style="margin-top:40px;">
	<div class="container-xxl">

		<!-- 1행 카드 시작 환자정보 & 처방내역 & 사진 -->
		<div class="row g-3 mb-3 custom-box" style="height: 90vh; margin-left: -150px; margin-right: -320px; margin-top: -66px;">
			<div class="col-md-4 col-lg-4" style="width: 25%; height: 100%;">

				<div class="card mb-3 top-color" style="height: 46.4%; width: 97%;">
					<div
						class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"
						style="height: 50px">
						<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">환자정보</h6>
						<select class="form-select" id="fcltySelect"
							style="width: 150px; height: 40px">
							<option value="A">호흡기내과</option>
							<option value="B">소화기내과</option>
							<option value="C">영상의학과</option>
							<option value="D">심장내과</option>
							<option value="E">감염내과</option>
							<option value="F">내분비내과</option>
						</select>
					</div>
					<div class="card-body" style="font-size: xx-small;">
						<div style="overflow: auto; width: 460px; height: 280px;">
							<table class="table" id="patTable">
								<thead>
									<tr>
										<th style="width:82px">환자코드</th>
										<th style="width:70px">환자명</th>
										<th style="width:100px">생년월일</th>
										<th>증상</th>
										<th>상태</th>
									</tr>
								</thead>
								<tbody id="tbody">

								</tbody>

							</table>
						</div>
					</div>
					</div>
					
					<div class="card mb-3 top-color" style="height: 51%; width: 97%; margin-top:-9px;">

					<div style="height: 423px">
						<div
							class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
							<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c; ">검사내역</h6>

						</div>
						<div class="card-body" style="font-size: xx-small; height: 40%; margin-top:-40px">
							<div style="overflow: auto; width: 460px; height: 200px;">
								<table class="table">
									<thead>
										<tr>
											<th>검사명</th>
											<th>검사결과</th>
											<th>검사일자</th>
										</tr>
									</thead>
									<tbody id="inspResult">

									</tbody>
								</table>
							</div>
						</div>

						<div
							class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
							<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c; margin-top: 34px;">과거내역</h6>

						</div>
						<div class="card-body" style="font-size: xx-small; height: 40%; margin-top:-40px">
							<div style="overflow: auto; width: 460px; height: 175px;">
								<table class="table">
									<thead>
										<tr>
											<th>처방코드</th>
											<th>처방약품</th>
											<th>처방날짜</th>
										</tr>
									</thead>
									<tbody id="pastMedi">

									</tbody>
								</table>
							</div>
						</div>

					</div>
					<!--cardbody  -->
				</div>
				<!-- 1행 end -->

			</div>


			<div class="col-md-8 col-lg-8 d-flex"
				style="display: flex; flex-direction: column;">
				<div class="row g-3 mb-3" style="flex: 1; display: flex;">
					<!-- 처방 오더 시작 -->
					<div class="col-md-4 col-lg-4"
						style="width: 55%; margin-right: 1%; flex-grow: 1; height:102.5%" >
						<div class="card h-100 top-color" >
							<div
								class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"
								style="height: 0;">
								<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">처방</h6>
							</div>
							<div class="card-body">


								<ul class="nav nav-tabs mb-3" id="myTab2" role="tablist">

									<li class="nav-item item" role="presentation" style="width: 70px;"><a
										class="nav-link active link" id="tab5-tab" data-bs-toggle="tab"
										href="#tab5" role="tab" aria-controls="tab5"
										aria-selected="true" style="width: 70px;">상병 진단</a></li>
									<li class="nav-item  item" role="presentation" style="width: 70px;"><a
										class="nav-link link" id="tab6-tab" data-bs-toggle="tab"
										href="#tab6" role="tab" aria-controls="tab6"
										aria-selected="false" style="width: 70px;">약품 검색</a></li>
									<li class="nav-item item" role="presentation" style="width: 70px;"><a
										class="nav-link link" id="tab7-tab" data-bs-toggle="tab"
										href="#tab7" role="tab" aria-controls="tab7"
										aria-selected="false" style="width: 70px;">즐겨찾기</a></li>
									<li class="nav-item item" role="presentation" style="width: 70px;"><a
										class="nav-link link" id="tab1-tab" data-bs-toggle="tab"
										href="#tab1" role="tab" aria-controls="tab1"
										aria-selected="true" style="width: 70px;">일반검사</a></li>
									<li class="nav-item item" role="presentation" style="width: 70px;"><a
										class="nav-link link" id="tab2-tab" data-bs-toggle="tab"
										href="#tab2" role="tab" aria-controls="tab2"
										aria-selected="false" style="width: 70px;">장비검사</a></li>
									<li class="nav-item item" role="presentation" style="width: 70px;"><a
										class="nav-link link" id="tab3-tab" data-bs-toggle="tab"
										href="#tab3" role="tab" aria-controls="tab3"
										aria-selected="false" style="width: 70px;">입원오더</a></li>

									<!-- search -->
									<li class="nav-item item" role="presentation">
										<div class="input-group mb-3" style="width: 180px; margin-left: 130px;">
											<!-- mb-4 -->
											<span class="input-group-text" id="basic-addon1"> <svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-search-heart"
													viewBox="0 0 16 16">
														  <path
														d="M6.5 4.482c1.664-1.673 5.825 1.254 0 5.018-5.825-3.764-1.664-6.69 0-5.018Z" />
														  <path
														d="M13 6.5a6.471 6.471 0 0 1-1.258 3.844c.04.03.078.062.115.098l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1.007 1.007 0 0 1-.1-.115h.002A6.5 6.5 0 1 1 13 6.5ZM6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11Z" />
														</svg>
											</span> <input type="search" class="form-control" id="searchForm"
												aria-controls="myDataTable" aria-label="Input group example"
												aria-describedby="basic-addon1" />
										</div>
									</li>
									<li class="nav-item item" role="presentation"></li>

								</ul>
								<!-- 처방 li 탭 -->
								<div class="tab-content" id="myTabContent">

									<!-- 상병 -->
									<div class="tab-pane fade show active" id="tab5"
										role="tabpanel" aria-labelledby="tab5-tab">
										<div style="overflow: auto; width: 742px; height: 250px;">
											<!-- 스크롤링 -->
											<table class="table table-hover align-middle mb-0"
												style="width: 710px; height: 100px;">
												<thead>
													<tr>
														<th>상병코드</th>
														<th>질병명</th>
														<th>선택</th>
													</tr>
												</thead>
												<tbody id="myProjectTable6">

												</tbody>
											</table>
										</div>
									</div>
									<!-- 상병 end -->


									<!-- 약품 -->
									<div class="tab-pane fade" id="tab6" role="tabpanel"
										aria-labelledby="tab6-tab">
										<div style="overflow: auto; width: 742px; height: 250px;">
											<!-- 스크롤링 -->
											<table class="table table-hover align-middle mb-0"
												style="width: 710px; height: 100px;">
												<thead>
													<tr>
														<th>약품코드</th>
														<th>약품명</th>
														<th style="width: 100px;">투여법</th>
														<th style="width: 100px;">선택</th>
													</tr>
												</thead>
												<tbody id="myProjectTable7">

												</tbody>
											</table>
										</div>
									</div>
									<!-- 약품 end -->


									<div class="tab-pane fade" id="tab7" role="tabpanel"
										aria-labelledby="tab7-tab">
										<div style="overflow: auto; width: 742px; height: 250px;">
											<table class="table table-hover align-middle mb-0"
												style="height: 100px;">
												<thead>
													<tr>
														<th>약품코드</th>
														<th>약품명</th>
														<th style="width: 100px;">투여법</th>
														<th style="width: 100px;">선택</th>
													</tr>
												</thead>
												<tbody id="myProjectTable8">
	
												</tbody>
											</table>
										</div>
									</div>
									<!-- 약품 end -->
									<!-- 첫 번째 탭 일반검사 -->
									<div class="tab-pane fade" id="tab1" role="tabpanel"
										aria-labelledby="tab1-tab">
										<div style="overflow: auto; width: 742px; height: 250px;">
											<table id="myProjectTable2"
												class="table table-hover align-middle mb-0"
												style="width: 710px; height: 100px;">
												<thead>
													<tr>
														<th>검사코드</th>
														<th>검사명</th>
														<th>가격</th>
														<th>선택</th>
													</tr>
												</thead>
												<tbody>

													<c:forEach items="${genInsList }" var="gen">
														<tr>
															<td>${gen.inspCode }</td>
															<td>${gen.inspNm }</td>
															<td>${gen.inspCost }</td>
															<td><input type="checkbox" class="myCheckbox3"
																value="${gen.inspCode}"></td>
														</tr>
													</c:forEach>


												</tbody>
											</table>
										</div>
									</div>
									<!-- 첫 번째 탭 내용 끝 -->

									<!-- 두 번째 탭 장비검사 -->
									<div class="tab-pane fade" id="tab2" role="tabpanel"
										aria-labelledby="tab2-tab">
										<div style="overflow: auto; width: 742px; height: 250px;">
											<!-- 스크롤링 -->
											<table id="myProjectTable3"
												class="table table-hover align-middle mb-0"
												style="width: 710px; height: 100px;">
												<thead>
													<tr>
														<th>검사코드</th>
														<th>검사명</th>
														<th>가격</th>
														<th>선택</th>
													</tr>
												</thead>

												<tbody>
													<c:forEach items="${equInsList}" var="equ">
														<tr>
															<td>${equ.inspCode}</td>
															<td>${equ.inspNm}</td>
															<td>${equ.inspCost}</td>
															<td><input type="checkbox" class="myCheckbox3"
																value="${equ.inspCode}"></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
									<!-- 두 번째 탭 내용 끝 -->
									<!-- 세번째 탭 -->
									<div class="tab-pane fade" id="tab3" role="tabpanel"
										aria-labelledby="tab3-tab">
										<table id="myProjectTable4"
											class="table table-hover align-middle mb-0"
											style="width: 742px; height: 100px;">
											<thead>
												<tr>
													<th>입원오더</th>
													<th>오더내용</th>
													<th>
														<button type="button" id="hosOrderBtn"
															class="mint-btn mt-1 fw-bold"
															style="width: 80px; height: 40px">등록</button>
													</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>입원권고</td>
													<td colspan="2"><input type="checkbox" id="hosCheck"
														class="myCheckbox4" value="입원권고"></td>
												</tr>
												<tr>
													<td>식이</td>
													<td colspan="2"><select id="dietSelect">
															<option value>전체</option>
													</select></td>
												</tr>
												<tr>
													<td>권고기간</td>
													<td colspan="2"><input type="text" id="hspodTotal"
														class="myTextInput1"></td>
												</tr>
												<tr>
													<td>기타오더</td>
													<td colspan="2"><input type="text"
														class="myTextInput2"></td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- 세번째 탭 내용 끝 -->

								</div>
								<!-- 처방 li탭 end -->

							</div>
						</div>
					</div>
					<div class="col-md-4 col-lg-4"
						style="width: 40%; margin-right: 1%; flex-grow: 1;">
						<div class="card h-100 top-color">
							<div class="card-body" style="height: 300px;">
								<div class="card-body" id='my_calendar'></div>

								<script>
                                document.addEventListener('DOMContentLoaded', function() {
                                var calendarEl = document.getElementById('my_calendar');
                            
                                var calendar = new FullCalendar.Calendar(calendarEl, {
                                    timeZone: 'UTC',
                                    initialView: 'dayGridMonth',
                                    locale:'ko',
                                    headerToolbar: {
                                        left: 'prev,next today',
                                        center: 'title',
                                        right: 'dayGridMonth,timeGridWeek,timeGridDay'
                                    },
                                    height: '400px',
                                    selectable: true,
                            	    droppable: true,
                            	    editable: true
                                });
                                calendar.render();
                                });
                            </script>
							</div>
						</div>
					</div>
					<!-- 달력 end -->
				</div>
				<!-- 1열 end -->

				<!-- 2열 시작 -->
				<div class="row g-3 mb-3" style="flex: 1; display: flex;">
					<div class="col-md-4 col-lg-4"
						style="width: 60%; margin-right: 1%; flex-grow: 1;">
						<div class="card h-100 top-color">

							<div
								class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
								<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">그룹 오더</h6>
							</div>

							<div class="card-body">

								<div class="row" style="margin-bottom: 10px; height: 20%;">
									<div class="row">
										<div class="col-md-10">
											<div class="card p-3">
												<div id="selectedValues2"
													style="font-size: 14px; color: blue;">
													필요한 오더를 선택해주세요 <input type="hidden" id="hiddenInspCode"
														value="">
												</div>
											</div>

										</div>
										<div class="col-md-2">
											<button type="button" id="insOrder"
												class="mint-btn mt-1 fw-bold"
												style="width: 100px; height: 40px">등록</button>
										</div>
									</div>

								</div>

								<!-- 	row end -->
								<div class="row" style="margin-bottom: 0px; height: 75%;">
									<!-- 		가로로 정렬되도록 row 추가 -->

									<div class="col-md-2">
										<p
											style="font-size: 14px; margin-top: 5px; margin-left: 10px;">
										<h6>
											<b class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">약품처방</b>
										</h6>
										</p>
									</div>
									<div style="height: 90%;">
										<div style="overflow: auto; width: 810px; height: 200px;">
											<table class="table" style="height: 200px">
												<thead>
													<tr>
														<th>약품코드</th>
														<th>약품명</th>
														<th>1회투약량</th>
														<th>1일투약횟수</th>
														<th>총투약일수</th>
													</tr>
												</thead>
												<tbody id="selectedValues3">
													<input type="hidden" id="clinicCd" />
													<input type="hidden" id="presCode" />
												</tbody>

											</table>
										</div>
										추가 입원 필요 <input type="checkbox" id="presSepar"
											name="presSepar" />
										<button class="mint-btn mt-1 fw-bold" style="float: right;"
										id="mediOrderClearBtn">취소</button>
										<button class="mint-btn mt-1 fw-bold" style="float: right;"
											id="mediOrderBtn">등록</button>
									</div>

									<!-- 		약품 처방 end -->
								</div>

							</div>
							<!--card-body -->
						</div>
					</div>

					<!-- 진료 소견 시작 -->
					<div class="col-md-4 col-lg-4"
						style="width: 35%; margin-right: 1%; flex-grow: 1;">
						<div class="card h-100 top-color">
							<div
								class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
								<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">처방</h6>
							</div>
							<div style="height: 80%">
								<form>
									<div class="card-body">

										<div class="card p-3">
											<div id="selectedValues1"
												style="font-size: 14px; color: blue;">환자의 상병코드를 선택해주세요</div>
										</div>

										<textarea class="form-control mb-3"
											style="height: 200px; font-size: medium;"
											name="clinicContent" placeholder="진료소견 작성"></textarea>
										<input type="hidden" id="dssCd" name="dssCode" /> <input
											type="hidden" id="dssNum" name="dssNo" /> <input
											type="hidden" id="recCd" name="recCode" /> 추가 검사 요망 <input
											type="checkbox" id="insYn" name="insYn" />
										<button type="reset" class="mint-btn mt-1 fw-bold">취소</button>
										<button type="button" class="mint-btn mt-1 fw-bold"
											id="dssOrderBtn">등록</button>
									</div>
								</form>
							</div>
							<div>
								<button type="submit" class="mint-btn mt-1 fw-bold">서류목록</button>
								<button type="submit" class="mint-btn mt-1 fw-bold">소견서
									생성</button>
							</div>
						</div>
					</div>
					<!-- 진료 소견 end -->
				</div>
			</div>
		</div>
		<!-- end -->


	</div>
	<!--컨테이너  -->
</div>
<!--바디  -->



<!-- Plugin Js-->

<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/page/doctor-profile.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
const docEmpNo = document.getElementById("empNo").textContent;
//toast
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

    
    /* 상병코드 */
    $('#myDataTable')
    .addClass( 'nowrap' )
    .dataTable( {
        responsive: true,
        columnDefs: [
            { targets: [-1, -3], className: 'dt-body-right' }
        ]
    });
    
    /* 약품코드 */
    $('#myDataTable2')
    .addClass( 'nowrap' )
    .dataTable( {
        responsive: true,
        columnDefs: [
            { targets: [-1, -3], className: 'dt-body-right' }
        ]
    });
    
    let defaultFcltyCode = "A"; 
    loadClinicPatient(defaultFcltyCode);
    
    $("#fcltySelect").on("change",function(){
    	let fcltyCode = $(this).val(); 
    	loadClinicPatient(fcltyCode);
    });
    
    
    /* 진료중 + 진료대기중인 환자 조회 */
    function loadClinicPatient(fcltyCode){
	    $.getJSON("<c:url value='/clinic/patientView.do' />",{fcltyCode:fcltyCode}).done(function(resp){
	    	let tbody = $("#tbody");
	    	tbody.empty();
	    	if(resp.length>0){
	    		$(resp).each(function(idx,patient){
	    			if(patient.statCode === '006') { //진료중이면
	    				let tr = $("<tr>").append(
	    					    $("<td>").html(patient.recep.patntCode)
	    					    ,$("<td>").html(patient.recep.patnt.patntNm).addClass("custom-style").css({
	                                "text-decoration": "underline",
	                                "font-weight": "bold",
	                                "font-size": "14px"
	                              })
	    					    ,$("<td>").html(patient.recep.patnt.patntIdentino)
	    					    ,$("<td>").html(patient.recep.symptom)
	    					    ,$("<td>").append($("<span>").addClass("badge bg-primary").text("진료중"))
	    				    );
	    				let recCode = patient.recCode;
	    				$("#recCd").val(recCode);
	    				
	    				tbody.prepend(tr);
	    			} else if(patient.statCode === '005'){ //진료대기이면
	    				let tr = $("<tr>").append(
	    					    $("<td>").html(patient.recep.patntCode)
	    					    ,$("<td>").html(patient.recep.patnt.patntNm).addClass("custom-style").css({
	                                "text-decoration": "underline",
	                                "font-weight": "bold",
	                                "font-size": "14px"
	                              })	
	    					    ,$("<td>").html(patient.recep.patnt.patntIdentino)
	    					    ,$("<td>").html(patient.recep.symptom)
	    					    ,$("<td>").append($("<span>").addClass("badge bg-secondary callPatient").text("호출하기")
	    					    				.attr("data-rec-code", patient.recCode)
	    					    				.attr("data-fclty-code", patient.fcltyCode))
	    				    );
	    				tbody.append(tr);
	    			}
	    		});
	    	}else{
	    		tbody.append(
						$("<tr>").html(
							$("<td colspan='5'>").html("해당 환자가 존재하지 않습니다.")		
						)		
					);
	    	}
	    });
    }
    
   
    /* 약품검색 */
   let mediSearchForm = $("#searchForm").on("change",function(event){
	   let what = $(this).val();
	   $.getJSON("<c:url value='/clinic/medicineSearch.do' />", {what:what}).done(function(resp){
			let tbody = $("#myProjectTable7");
			$("#searchForm").val("");
			tbody.empty();
				if(resp.length>0){
					$(resp).each(function(idx,mediList ){
						let tr = $("<tr>").append(
							$("<td>").html(mediList.mediCode)
							,$("<td>").html(mediList.mediNm)
							,$("<td>").html(mediList.mediMth).attr("data-medi-amt", mediList.mediAmt)
							,$("<td>").append(
								$("<input>").attr({
			                        type: "checkbox",
			                        class: "myCheckbox2",
			                        value: mediList.mediCode
			                     })
							) 
							
						);
						tbody.append(tr);
					});
					
				}else {
					tbody.append(
						$("<tr>").html(
							$("<td colspan='4'>").html("해당 약품이 존재하지 않습니다.")		
						)		
					);
				}
	   });
   
   });
    
    
   /* 상병검색 */
   let disSearchForm = $("#searchForm").on("change",function(event){
	   let what = $(this).val();
	   $.getJSON("<c:url value='/clinic/diseaseSearch.do' />", {what:what}).done(function(resp){
			let tbody = $("#myProjectTable6");   
			tbody.empty();
			$("#searchForm").val("");
			
				if(resp.length>0){
					$(resp).each(function(idx,disList ){
						let tr = $("<tr>").append(
							$("<td>").html(disList.dssCode)
							,$("<td>").html(disList.dssNm)
							,$("<td>").append(
								$("<input>").attr({
			                        type: "checkbox",
			                        class: "myCheckbox1",
			                        value: disList.dssCode
			                     })
							),
		                    $("<input>").attr({
		                        type: "hidden",          
		                        name: "dssNo",           
		                        value: disList.dssNo     
		                    }) 
						);
						tbody.append(tr);
					});
					
				
					
				}else {
					tbody.append(
						$("<tr>").html(
							$("<td colspan='3'>").html("해당 병명이 존재하지 않습니다.")		
						)		
					);
				}
			
			
			
	   });
   
   });
	
   /* 즐겨찾기 */
   $.getJSON("<c:url value='/clinic/popularMedicineList.do' />").done(function(resp){
	   let tbody = $("#myProjectTable8");
	   $(resp).each(function(idx,popList ){
		   let tr = $("<tr>").append(
				 $("<td>").html(popList.mediCode)
				,$("<td>").html(popList.mediNm)
				,$("<td>").html(popList.mediMth).attr("data-medi-amt", popList.mediAmt)
				,$("<td>").append(
					$("<input>").attr({
	                     type: "checkbox",
	                     class: "myCheckbox2",
	                     value: popList.mediCode
	                 })
				)	   
		   );
		   tbody.append(tr)
	   });
   });

   
  
   
     
$(document).ready(function() { <!-- document.ready start -->
	
	 //상병체크박스 이벤트
	$("#myProjectTable6").on("change", ".myCheckbox1", function() {
	    if ($(this).prop("checked")) {
	        let dssNm = $(this).closest("tr").find("td:nth-child(2)").text();
	        let dssCode = $(this).val();
	        let dssNo = $(this).closest("tr").find("input[name='dssNo']").val();
	
	        $("#dssCd").val(dssCode);
	        $("#dssNum").val(dssNo);
	
	        $("#selectedValues1").html(dssNm);
	    }
	});
	 
	 
	 
			
	let addedMediCodes = [];    
   //약품체크박스 이벤트 - 일반 약
   $("#myProjectTable7").on("change", ".myCheckbox2", function() {
       let checkedBoxes = $(".myCheckbox2:checked");
       let selectedValues3 = $("#selectedValues3");

       checkedBoxes.each(function() {
           let mediCode = $(this).val();
           if (addedMediCodes.includes(mediCode)) {
               return;
           }
           addedMediCodes.push(mediCode);
           let mediNm = $(this).closest("tr").find("td:eq(1)").text();
           let mediMth = $(this).closest("tr").find("td:eq(2)").text();
		   let mediAmt = $(this).closest("tr").find("td:eq(2)").attr("data-medi-amt");
			   
           let tr = $("<tr>").append(
               $("<td>").html(mediCode).addClass("medi").attr("data-medi-mth", mediMth).attr("data-medi-amt", mediAmt),
               $("<td>").html(mediNm).addClass("medi"),
               $("<td>").append(
                   $("<input>").attr({
                       type: "text",
                       name: "presMAmt",
                       class: "form-control medi"
                   })
               ),
               $("<td>").append(
                   $("<input>").attr({
                       type: "number",
                       name: "presMCo",
                       class: "form-control medi"
                   })
               ),
               $("<td>").append(
                   $("<input>").attr({
                       type: "number",
                       name: "mediDay",
                       class: "form-control medi"
                   })
               )
           );

           selectedValues3.append(tr);
       });
   });
   
   // 약품 체크박스 변경 이벤트 - 테이블 2
   $("#myProjectTable8").on("change", ".myCheckbox2", function() {
       let checkedBoxes = $(".myCheckbox2:checked");
       let selectedValues3 = $("#selectedValues3");
		
       checkedBoxes.each(function() {
           let mediCode = $(this).val();
    	   if (addedMediCodes.includes(mediCode)) {
               return;
           }
           addedMediCodes.push(mediCode);
           let mediNm = $(this).closest("tr").find("td:eq(1)").text();
           let mediMth = $(this).closest("tr").find("td:eq(2)").text();
           let mediAmt = $(this).closest("tr").find("td:eq(2)").attr("data-medi-amt");
           let tr = $("<tr>").append(
               $("<td>").html(mediCode).addClass("medi").attr("data-medi-mth", mediMth).attr("data-medi-amt", mediAmt),
               $("<td>").html(mediNm).addClass("medi"),
               $("<td>").append(
                   $("<input>").attr({
                       type: "text",
                       name: "presMAmt",
                       class: "form-control medi"
                   })
               ),
               $("<td>").append(
                   $("<input>").attr({
                       type: "number",
                       name: "presMCo",
                       class: "form-control medi"
                   })
               ),
               $("<td>").append(
                   $("<input>").attr({
                       type: "number",
                       name: "mediDay",
                       class: "form-control medi"
                   })
               )
           );

           selectedValues3.append(tr);
       });
   });
   
   $("#mediOrderClearBtn").on("click",function(resp){
	   $("#selectedValues3").empty();
   });
	
   let hiddenInspCode = null;
   
   //검사 체크박스 변경 이벤트
   $(".myCheckbox3").on("change", function() {
	   let selectedInsp = []; // 배열로 선택된 값을 저장

	    $(".myCheckbox3:checked").each(function() {
	        let inspCode = $(this).val();
	        let inspName = $(this).closest("tr").find("td:nth-child(2)").text();
	        let combinedValue = inspCode + ":" + inspName; // inspCode와 inspName 조합

	        selectedInsp.push(combinedValue);
	    });

	    let selectedInspStr = selectedInsp.map(item => item.split(":")[1]).join(", "); // ":" 기준으로 오른쪽 값만 저장
	    $("#selectedValues2").text(selectedInspStr); // 값을 보여주는 엘리먼트에 설정
		
	    
	    hiddenInspCode = selectedInsp.map(item => item.split(":")[0]).join(","); // ":" 기준으로 왼쪽 값만 저장
	    $("#hiddenInspCode").val(hiddenInspCode);
	    
    });
   
   
   
  // 현재 진료중인 환자 내역 조회
   $("#tbody").on("click", "td:nth-child(2)", function(){ // tbody에 있는 tr 또는 td 클릭 이벤트 핸들러 등록
       
	   let patntCode = $(this).closest("tr").find("td:first-child").html();
	   let sameInspCode = [];
   		//검사내역
   		$.getJSON("<c:url value='/clinic/selectPatRecCode.do' />" , {patntCode:patntCode}).done(function(resp){
			let recCode = resp.recCode;
		       $.getJSON("<c:url value='/clinic/selectPatInspResult.do' />", {recCode:recCode}).done(function(resp){
		    	   console.log(resp);
		    	   let ibody = $("#inspResult");
		           ibody.empty();
		           if(resp.length>0){
		        	   $(resp).each(function(idx, isp){
		        		   if (sameInspCode.indexOf(isp.inspCode) === -1) {
		                        let tr = $("<tr>").append(
		                            $("<td>").html(isp.insp.inspNm),
		                            $("<td>").html(isp.inspRsltCn),
		                            $("<td>").html(isp.inspDay)
		                        );
		                        ibody.append(tr);
		                        sameInspCode.push(isp.inspCode);
		                    }
		        	   });
		           } else{
		        	   ibody.append(
		                       $("<tr>").html(
		                           $("<td colspan='3'>").html("검사내역이 존재하지 않습니다.")
		                       )
		                );
		           }
		           
		       });
   		});		
   
  	 	//과거 처방내역
       $.getJSON("<c:url value='/clinic/pastMediView.do' />", { patntCode: patntCode }).done(function(resp) {
           let tbody = $("#pastMedi");
           tbody.empty();
			console.log(resp);
           if (resp.length > 0) {
               $(resp).each(function(idx, medi) {
            	   
            	   
                   let tr = $("<tr>").append(
                       $("<td>").html(medi.presCode)
                       ,$("<td>").html(medi.medi.mediNm)
                       ,$("<td>").html(medi.presDate)
                       
                   );
                   tbody.append(tr);
               });
           } else {
        	   tbody.append(
                   $("<tr>").html(
                       $("<td colspan='4'>").html("과거 진료 정보가 존재하지 않습니다.")
                   )
               );
           }
       });
   });
   
   
  //진료대기 누르면 진료중으로 INSERT
  
  $("#tbody").on("click", "span.badge.bg-secondary", function() {
	    let recCode = $(this).data("rec-code");
	    let fcltyCode = $(this).data("fclty-code");
	    let patNm = $(this).closest("tr").find("td:eq(1)").text();
	    $.getJSON("<c:url value='/clinic/statInsert.do' />", 
	    	{recCode: recCode,fcltyCode: fcltyCode}).done(function(resp){
	    		Toast.fire({
	    		    icon: 'success',
	    		    title: patNm+'님을 호출하였습니다.'
	    		});
	  			let fcltyCode = $("#fcltySelect").val(); 
	  			loadClinicPatient(fcltyCode);
	  			
	  }).fail(function(){
		  Swal.fire({
			  text: '진료대기인 환자를 호출하는데 실패하였습니다.',  
			  icon: 'error'                         
			});
	  });
  });


	
	let presCode = null;
    let clinicCode = null;
    
	//clinic 오더...
  $('#dssOrderBtn').on("click", function () {
	    let clinicContent = $("textarea[name='clinicContent']").val();
	    let dssCode = $("#dssCd").val();
	    let dssNo = $("#dssNum").val();
	    let recCode = $("#recCd").val();
	    let insYn = $("#insYn").prop("checked") ? "yes" : undefined;
	    if (insYn !== undefined) {
            insYn = insYn;
        }
	    
	    $.getJSON("<c:url value='/clinic/checkGetClinicCode.do' />" , {recCode:recCode}).done(function(resp){
	    	if(!resp.ishaved){ //clinicCode가 없을때. 처방 처음받는 환자
	    		$.getJSON("<c:url value='/clinic/dssOrderInsert.do' />", {
	    	        clinicContent: clinicContent,
	    	        dssCode: dssCode,
	    	        dssNo: dssNo,
	    	        recCode: recCode,
	    	        insYn: insYn,
	    	        docEmpNo : docEmpNo
	    	    }).done(function (resp) {
	    	        if (resp) {
	    	            $.getJSON("<c:url value='/clinic/getClinicCode.do' />", { //clinicCode가져오기
	    	                recCode: recCode
	    	            }).done(function (clinicResp) {
	    	 	    	Swal.fire({
	   	    			  text: '처방오더가 완료되었습니다.', 
	   	    			  icon: 'success'                       
	   	    			});
	    	                // clinicCode 값을 가져옴
	    	                clinicCode = clinicResp.clinicCode;
	    	                
	    	                //clinicCode 값 저장
	    	                $("#clinicCd").val(clinicCode);
	    	                $("#insYn").prop("checked", false);
	    	                $("textarea[name='clinicContent']").val("");
	                        $("#selectedValues1").html("환자의 상병코드를 선택해주세요");
	    	                // insYn 값이 undefined인 경우에만 presCode를 가져옴
	    	                if (insYn === undefined) {
	    	                    $.getJSON("<c:url value='/clinic/getPresCode.do' />", {
	    	                        clinicCode: clinicCode
	    	                    }).done(function (presResp) {
	    	                        presCode = presResp.presCode;
	    	                        // presCode 값 저장
	    							$("#presCode").val(presCode); 
	    	                        // 입력 초기화
	    	                        
	    	                        
	    							$("#insYn").prop("checked", false);
	    							$(".myCheckbox2").prop("checked",false);
	    	                        $("textarea[name='clinicContent']").val("");
	    	                        $("#myProjectTable6").empty();
	    	                        $("#selectedValues1").html("환자의 상병코드를 선택해주세요");
	    	                        
	    	                        
	    	                    });
	    	                } else{
	    	                	let fcltyCode = $("#fcltySelect").val(); 
	    	                	loadClinicPatient(fcltyCode);
	    	                }

	    	            });
	    	        }
	    	    }).fail(function(){
	    	    	Swal.fire({
			  			  text: '처방오더에 실패하였습니다. 다시시도해주세요.',  
			  			  icon: 'error'                         
			  			});
	    	    });
	    	} else { //clinicCode를 가지고 있을때 : 검사를 하고 온 환자
	    		$.getJSON("<c:url value='/clinic/getClinicCode.do' />" ,{recCode:recCode}).done(function(resp){
	    			clinicCode = resp.clinicCode;
	    			// 환자 clinic테이블 update
	    			$.getJSON("<c:url value='/clinic/clinicUpdate.do' />" 
	    					, {clinicCode:clinicCode,dssCode:dssCode,dssNo:dssNo,clinicContent:clinicContent}).done(function(cresp){
	    				$.getJSON("<c:url value='/clinic/getPresCode.do' />" , {clinicCode:clinicCode}).done(function(presp){
	    					Swal.fire({
	  	   	    			  text: '처방오더가 완료되었습니다.',  
	  	   	    			  icon: 'success'                         
	  	   	    			});
	    					
	    					presCode = presp.presCode;
	    					$("#presCode").val(presCode); 
	    					$(".myCheckbox2").prop("checked",false);
	    					$("textarea[name='clinicContent']").val("");
	    					$("#myProjectTable6").empty();
	                        $("#selectedValues1").html("환자의 상병코드를 선택해주세요");
	    				});
	    				
		    		});		
	    			
	    		});
	    		
	    	}
	    	
	    }).fail(function(){
	    	Swal.fire({
	    			  text: '처방오더가 실패하였습니다. 다시시도해주세요.', 
	    			  icon: 'error'                        
	    	});
	    });
	});

	
	
	// 약 처방
	  $('#mediOrderBtn').on("click", function () {
		    let medis = [];
	
		    $("#selectedValues3 tr").each(function () {
		        let $tr = $(this);
				
		        let mediCode = $tr.find(".medi").eq(0).text();
		        
		        let presMAmt = $tr.find(".medi").eq(2).val();
		        let presMCo = $tr.find(".medi").eq(3).val();
		        let mediDay = $tr.find(".medi").eq(4).val();
		        let recCode = $("#recCd").val();
		        let mediMth = $tr.find(".medi").eq(0).attr("data-medi-mth");
		        
		        let presdocAmt = 0;
		        
		        	
		        let presSepar = $("#presSepar").prop("checked") ? "hospital" : undefined;
		        if (presSepar !== undefined) {
		        	presSepar = presSepar;
		        }
		        
		        if(mediMth=='주사'){
		        	presdocAmt = $tr.find(".medi").eq(0).attr("data-medi-amt");
		        } else if(presSepar !== undefined){
		        	presdocAmt= parseFloat($tr.find(".medi").eq(0).attr("data-medi-amt")) *  parseFloat(mediDay) * parseFloat(presMCo);
		        }
		        
		        let medi = {
		            presCode: presCode
		            ,mediCode: mediCode
		            ,presMAmt: presMAmt
		            ,presMCo: presMCo
		            ,mediDay: mediDay
		            ,recCode : recCode
		            ,presSepar : presSepar
		            ,presdocAmt : presdocAmt
		            ,docEmpNo : docEmpNo
		        };
		        
		        medis.push(medi);
		    });
		    $.ajax({
		        type: "POST",
		        url: "<c:url value='/clinic/mediOrderInsert.do' />",
		        data: JSON.stringify(medis),
		        contentType: "application/json; charset=utf-8",
		        dataType: "json",
		        success: function (resp) {
		            if (resp.success) {
		                Toast.fire({
			    		    icon: 'success',
			    		    title: '처방이 완료되었습니다.'
			    		});
		                $("#selectedValues3 tr").remove(); // tbody 내부의 모든 <tr> 요소 삭제
		                $("#presSepar").prop("checked", false);
		                $(".myCheckbox2").prop("checked",false); 
		                $("#myProjectTable7").empty();
		                //비동기로 환자 리로드
		                let fcltyCode = $("#fcltySelect").val(); 
		            	loadClinicPatient(fcltyCode);
		            } else {
		                Swal.fire({
				  			  text: '처방 중에 오류가 발생했습니다. 다시시도해주세요.', 
				  			  icon: 'error'                        
				  			});
		            }
		        }
		    });
		});  //약처방 end
	
	
	//식이 리스트 
	$.getJSON("<c:url value='/clinic/selectDietList.do' />").done(function(resp){
		let dietSelect = $("#dietSelect");
		let opts = [];
		$(resp).each(function(idx, diet){ 
			let opt = $("<option>").val(diet.codeId).html(diet.codeNm);
			opts.push(opt)
		});
		dietSelect.append(opts);
	});
	
	
	//입원 오더
		$('#hosOrderBtn').on("click", function(){
			let recCode = $("#recCd").val();
			let hspodTotal = $("#hspodTotal").val();
			let diet = $("#dietSelect").val();
			
			
			$.getJSON("<c:url value='/clinic/hospitalOrder.do' />"
					,{presCode:presCode, recCode:recCode
					, hspodTotal:hspodTotal, diet:diet }).done(function(resp){

					Toast.fire({
		    		    icon: 'success',
		    		    title: '입원 오더가 전송되었습니다.'
		    		});
					 $("#hosCheck").prop("checked", false);
					 $("#hspodTotal").val("");
					 let fcltyCode = $("#fcltySelect").val(); 
						loadClinicPatient(fcltyCode);
					
					
			}).fail(function(){
				Swal.fire({
	    			  text: '오더에 실패하였습니다. 다시시도해주세요.',  
	    			  icon: 'error'                         
	    			});
			});
			
		});
	
	//검사 오더
	$("#insOrder").on("click", function(){
		let recCode = $("#recCd").val();

	    let inspCodesArray = hiddenInspCode.split(","); 
	    
		let insps = [];
		
		//inspCodesArray만큼 반복문 돌기
		for (let i = 0; i < inspCodesArray.length; i++) {
	        let inspCode = inspCodesArray[i];
	
	        let insp = {
	            recCode: recCode,
	            clinicCode: clinicCode,
	            inspCode: inspCode,
	            docEmpNo : docEmpNo
	        };

        	insps.push(insp);
   	 	}
		
		
		$.ajax({
	        type: "POST",
	        url: "<c:url value='/clinic/inspOrderInsert.do' />",
	        data: JSON.stringify(insps),
	        contentType: "application/json; charset=utf-8",
	        dataType: "json",
	        success: function (resp) {   
	            if (resp.success) {
	                Toast.fire({
		    		    icon: 'success',
		    		    title: '검사오더가 완료되었습니다.'
		    		});
	                $("#selectedValues2").empty(); 
	                $(".myCheckbox3 input[type='checkbox']").prop("checked", false);
	                let fcltyCode = $("#fcltySelect").val(); 
	            	loadClinicPatient(fcltyCode);
	            	
	            } else {
	                Swal.fire({
	      			  text: '오더 중에 오류가 발생했습니다.', 
	      			  icon: 'error'                      
	      			});
	            }
	        }
	    });
	});

}); <!-- document.ready end -->

</script>