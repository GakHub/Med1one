<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>:: MED1ONE:: SAMPLE</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<!-- project css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<style>
.top-color {
	border-top: 3px solid #6aab9c;
}

#overflow {
	width: 1800px;
	height: 100px;
	/*     background-color:skyblue; */
	]
}

#overflow::-webkit-scrollbar {
	display: none; /* 크롬, 사파리, 오페라, 엣지 */
}

.dotted-border {
	border: 1px dotted gray;
	border-radius: 10px;
	padding: 10px;
	margin-bottom: 25px;
}

.dotted-border img {
	width: 20px; /* 이미지의 너비 설정 */
	height: 20px; /* 이미지의 높이 설정 */
	cursor: pointer; /* 마우스 커서를 손가락 모양으로 변경하여 클릭 가능한 상태 표시 */
	float: right;
}

.even-row{
	 background-color: rgba(106, 171, 156, 0.1);
}
</style>
</head>
<body>
	<!-- Body: Body -->
	<div class="body d-flex py-3" style="margin-top: -40px">
		<div class="container-xxl">
			<!-- 1행 3열 카드 시작 -->
			<div class="row g-3 mb-3"
				style="height: 100vh; margin-left: -95px; margin-right: -990px;">


				<div class="col-md-8 col-lg-8"
					style="display: flex; flex-direction: column;">
					<!-- 약품 관리 시작 -->
					<div class="row g-3 mb-3" style="height: 42%">
						<div class="col-md-4 col-lg-4"
							style="width: 32%; margin-right: 1%; flex-grow: 1;">
							<div class="card h-100 top-color">
								<div
									class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"
									style="margin-bottom: -20px">
									<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">약품 관리</h6>
									<div class="input-group mb-3" style="width: 180px; margin-left:17px; margin-top: 20px;">
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
												aria-describedby="basic-addon1" autocomplete="off"/>
											</div>
								</div>
								<div class="card-body" id="overflow">

									

									<div class="tab-pane" id="tab6" role="tabpanel"
										aria-labelledby="tab6-tab">

										<div style="height: 60px;">
											<table class="table table-hover align-middle mb-0"
												style="width: 1710px;">
												<thead>
													<tr style="border-bottom: 1px solid black;">
														<td >약품코드</td>
														<td style="width: 843px; text-align: center;">제품명</td>
														<td style="width: 133px; text-align: center;">분류</td>
														<td style="text-align: center;">투여(복약)</td>
														<td style="text-align: left; width: 175px;">업체명</td>
														<td >규격</td>
														<td >단위</td>
														<td style="width: 54px;">가격</td>
														<td style="text-align: right; width: 89px;">약품정보</td>

													</tr>
												</thead>
											</table>
										</div>

										<div id="overflow"
											style="height: 232px; width: 1710px; overflow-y: scroll;">
											<table class="table table-hover align-middle mb-0">
												<tbody id="medicineList">
													<tr>
													 <td colspan="9" rowspan="5" style="text-align:center">약품을 검색하세요.</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 약품 관리 끝 -->

					<!-- 2행 3열 카드 시작 -->
					<div class="row g-3 mb-3" style="flex: 1; display: flex;">

						<!-- 마약류 시작 -->
						<div class="col-md-4 col-lg-4" style="width: 65%; height: 440px;">
							<div class="card h-100 top-color" style="width: auto;">
								<div
									class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">마약류</h6>
								</div>
								<div class="card-body" style="width: auto;">
									<div style="height: 60px;">
										<table class="table table-hover align-middle mb-0"
											style="width: 100%">
											<thead>
												<tr style="border-bottom: 1px solid black;">
													<th style="width: 110px;">약품코드</th>
													<th style="width: 277px;">제품명</th>
													<th style="width: 60px;">분류</th>
													<th style="width: 66px;">투여</th>
													<th style="width: 534px; text-align: center;">주의사항</th>
													<th style="width: 55px;">재고</th>
												</tr>
											</thead>
										</table>
									</div>
									<div id="overflow"
										style="height: 300px; width: 1100px; overflow-y: scroll;">
										<table class="table table-striped align-middle mb-0">
											<tbody>
												<c:forEach items="${narList }" var="narList"  varStatus="loop">
													<tr class="${loop.index % 2 == 0 ? 'even-row' : 'odd-row'}">
														<td>${narList.narCode }</td>
														<td style="width: 290px">${narList.narNm }</td>
														<td>${narList.narKimscl }</td>
														<td style="width: 80px">${narList.narMth }</td>
														<td>${narList.narCaution }</td>
														<td>${narList.narStock }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- 마약류 끝 -->

						<!-- 주의사항 시작 (파일 다운로드)-->
						<div class="col-md-4 col-lg-4" style="width: 35%; height: 440px;">
							<div class="card h-100 top-color"
								style="width: 95%; margin-left: 15px;">
								<!-- border: none; -->
								<div
									class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"
									style="width: 500px;">
									<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">주의사항</h6>
								</div>
								<div class="card-body"
									style="width: 500px; margin-left: 36px; margin-top: 14px">
									<div id="#">
										<div class="dotted-border">
											<img
												src="<%=request.getContextPath()%>/resources/images/pdf.png"
												style="float: left; margin-right: 10px;"> 의료용 마약류 진통제
											안전사용 기준 <a
												href="<%=request.getContextPath()%>/resources/upload/의료용+마약류+진통제+안전사용+기준.pdf"
												download="의료용 마약류 진통제 안전사용 기준.pdf"> <img
												src="<%=request.getContextPath()%>/resources/images/download.png">
											</a>
										</div>
										<div class="dotted-border">
											<img
												src="<%=request.getContextPath()%>/resources/images/hwp.png"
												style="float: left; margin-right: 10px;"> 주의사항 및 변경
											대비표 <a
												href="<%=request.getContextPath()%>/resources/upload/주의사항및변경대비표.hwp"
												download="주의사항및변경대비표.hwp"> <img
												src="<%=request.getContextPath()%>/resources/images/download.png">
											</a>
										</div>
										<div class="dotted-border">
											<img
												src="<%=request.getContextPath()%>/resources/images/excel.png"
												style="float: left; margin-right: 10px;"> 의약품 허가사항 검토시
											일반적 고려사항 <a
												href="<%=request.getContextPath()%>/resources/upload/GRP-MaPP-허가업무-1+의약품+허가사항+검토시+일반적+고려사항(11개정).pdf"
												download="의약품 허가사항 검토시 일반적 고려사항.pdf"> <img
												src="<%=request.getContextPath()%>/resources/images/download.png">
											</a>
										</div>
										<div class="dotted-border">
											<img
												src="<%=request.getContextPath()%>/resources/images/pdf.png"
												style="float: left; margin-right: 10px;"> 전문의약품 정보제공
											가이드라인 <a
												href="<%=request.getContextPath()%>/resources/upload/의약품광고+및+전문의약품+정보제공+가이드라인(개정).pdf"
												download="전문의약품 정보제공 가이드라인.pdf"> <img
												src="<%=request.getContextPath()%>/resources/images/download.png">
											</a>
										</div>
										<div class="dotted-border">
											<img
												src="<%=request.getContextPath()%>/resources/images/excel.png"
												style="float: left; margin-right: 10px;"> 의약품 허가사항 검토시
											일반적 고려사항 <a
												href="<%=request.getContextPath()%>/resources/upload/의약품의+위해성+관리+계획+가이드라인_201222.pdf"
												download="의약품 관리 계획 가이드라인.pdf"> <img
												src="<%=request.getContextPath()%>/resources/images/download.png">
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 주의사항 끝 -->

					</div>
				</div>
				<!-- 1행 3열 카드 종료 -->
			</div>
		</div>
	</div>
	<!-- Plugin Js-->
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

	//화폐단위 바꿔주는 함수
	function formatMoney(amount) {
	    return amount.toLocaleString('ko-KR', { style: 'currency', currency: 'KRW' });
	}
	
// 약품 검색
// encodeURIComponent은 문자열을 url에서 사용할 수 있는 형식으로 인코딩해주는 함수
let medicineSearch = $("#searchForm").on("change", function(event) {
    let what = $(this).val();

    $.getJSON("<c:url value = '/nurse/medicineSearch.do' />", { what: what }).done(function(resp) {
        let tbody = $("#medicineList");
        tbody.empty();

        if (resp.length > 0) {
            $(resp).each(function(idx, mediList) {
                let tr = $("<tr>").append(
                    $("<td>").html(mediList.mediCode)
                    , $("<td>").html(mediList.mediNm).attr("style","text-align:left; width: 53%; padding-left:220px;")
                    , $("<td>").html(mediList.mediKimscl).attr("style","width:120px;")
                    , $("<td>").html(mediList.mediMth).attr("style","width:100px;")
                    , $("<td>").html(mediList.mediBznm)
                    , $("<td>").html(mediList.mediStd)
                    , $("<td>").html(mediList.mediUnit)
                    , $("<td>").html(formatMoney(mediList.mediAmt))
                    , $("<td>").append(
                        $("<a>").attr("href", "https://terms.naver.com/search.naver?query=" + encodeURIComponent(mediList.mediNm))
                            .click(function() {
                                window.open($(this).attr("href"), "_blank", "width=700,height=700, left=700px;");
                                return false; // 기존 창에서 링크를 열지 않게
                            })
                            .append(
                                $("<img>").attr("src", "<%=request.getContextPath()%>/resources/images/naver.jpg").attr("alt", "Image").css("width", "20px").css("height", "20px")
                            )
                    )
                );
                tbody.append(tr);
            });
        } else {
            tbody.append(
                $("<tr>").html($("<td colspan='8'>").html("해당 약품이 존재하지 않습니다."))
            );
        }
    });
});
	</script>
</body>
</html>
