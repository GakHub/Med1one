<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>:: MED1ONE:: 검사실</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->

<!-- plugin css file  -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/plugin/owlcarousel/owl.carousel.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.css">
<!-- project css file  -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">

<!--부트스트랩 자바스크립트 코드  -->
<link href="<%=request.getContextPath()%>/resources/js/bootstrap5/css/bootstrap.min.css" rel="stylesheet">

	

<style type="text/css">

.card-body{

height: 200px;
}

tr, td, th.sorting {
font-size:16px;
  text-align: center; /* 텍스트 정렬을 가운데로 설정 */  
}


a.page-link {
/*   font-size: xx-small; */
}

li.pagelink {
width:50px;
  text-align: center; /* 텍스트 정렬을 가운데로 설정 */
  
}

  label {
/*     font-size: 14px; /* 텍스트 크기 설정 */ */
  }

  input[type="search"] {
    width: 100px !important; /* 입력칸의 길이 설정 */
  }



ui {
width:50px;
  font-size : xx-small;;
  text-align: center; /* 텍스트 정렬을 가운데로 설정 */
  
}


/* 민트색 버튼 스타일 */
.mint-btn {
	margin-left:10px;
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

/* CSS 스타일 */
.owl-carousel .item img {
  width: 300px !important; /* 원하는 가로 크기(px)로 설정 */
 
}

</style>
</head>
<body>
	<!--전체  -->
	<div id="ihealth-layout" class="theme-tradewind">
		<!-- main body area -->
		<div class="main px-lg-4 px-md-4">
			<!-- Body: Body -->
			<div class="body d-flex py-3">

				<div class="container-xxl">
				
					<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
              		<h4 class="mb-0 fw-bold" style="color: #6aab9c;">검사실</h4>
              		</div>
				
					<!-- 1행 카드 시작 -->
					<div class="row g-3 mb-3">
						<div class="col-md-4 col-lg-4" style="width: 100%;">
							<div class="card" style="height: 400px">
								<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">검사대기</h6>
								</div>
							 <div class="card-body" >
                                <table id="myProjectTable" class="table table-hover align-middle mb-0" style="width: 1250px; height:200px; margin-left: 10px; margin-right: 10px;" >
                                    <thead>
                                        <tr>
                                            <th>순서</th>
                                            <th>오더일자</th>
                                            <th>오더일시</th>
                                            <th>오더부서</th>
                                            <th>환자코드</th>
                                            <th>환자명</th>
                                            <th>오더검사</th>
                                            <th>검사부위</th>
                                            <th>상태</th>
                                            <th>검사결과</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>01</td>
                                            <td>230803</td>
                                            <td>15:30</td>
                                            <td>호흡기내과</td>
                                            <td>0001</td>
                                            <td><span class="fw-bold">오혜민</span></td>
                                            <td>혈액검사</td>
                                            <td>해당없음</td>
                                            <td>검사대기</td>
                                            <td>등록완료</td>
                                        </tr>
                                        <tr>
                                            <td>02</td>
                                            <td>230803</td>
                                            <td>15:50</td>
                                            <td>호흡기내과</td>
                                            <td>0002</td>
                                            <td><span class="fw-bold">정지현</span></td>
                                            <td>MRI</td>
                                            <td>머리</td>
                                            <td>검사대기</td>
                                            <td>등록대기</td>
                                        </tr>
                                         <tr>
                                            <td>03</td>
                                            <td>230803</td>
                                            <td>14:00</td>
                                            <td>호흡기내과</td>
                                            <td>0003</td>
                                            <td><span class="fw-bold">장민우</span></td>
                                            <td>CT</td>
                                            <td>허리</td>
                                            <td>검사중</td>
                                            <td>등록대기</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div><!--cardBody end  -->
						</div><!--card end  -->
					</div><!--col-md-4 col-lg-4 end  -->
				</div>
						
					<!-- 1행 카드 종료 -->
					
					
					<!-- 2행 카드 시작 -->
					<div class="row g-3 mb-3">
						<div class="col-md-6 col-lg-6" style="width: 49%; margin-right: 1%;">
						  <div class="d-flex flex-column justify-content-between">
						  
              				  <div class="card mb-3" style="height: 160px;">
									<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
										<h6 class="mb-0 fw-bold">환자정보</h6>
									</div>
									<div class="card-body">
    								<table class="table">
           								 <thead>
                								<tr>
                    								<th>환자코드</th>
                    								<th>환자명</th>
                    								<th>성별</th>
                    								<th>나이</th>
                    								<th>증상</th>
                								</tr>
            								</thead>
            								<tbody>
                								<tr>
                    								<td>10101</td>
                    								<td>오혜민</td>
                    								<td>여</td>
                    								<td>만22세</td>
                    								<td>기침, 두통</td>
                								</tr>
            								</tbody>
        								</table>
                   				  </div><!--cardbody  -->
                   				</div><!--card end  -->
                   			 <div class="card mb-3" style="height: 210px;">
									<div class="card-header d-flex justify-content-between bg-transparent border-bottom-0">
										<h6 class="mb-0 fw-bold">진료이력</h6>
									</div>
									<div class="card-body" >
    								<table class="table">
       								<thead>
            							<tr>
                							<th>처방코드</th>
                							<th>처방일시</th>
                							<th>진단병명</th>
                							<th>처방내역</th>
                							<th>총투약일</th>
            							</tr>
        							</thead>
        							<tbody>
            							<tr>
                							<td>10101</td>
                							<td>23/07/01 15:00</td>
                							<td>감기몸살</td>
                							<td>베타정</td>
                							<td>3DAY</td>
           								 </tr>
            							 <tr>
               								<td>10101</td>
                							<td>23/07/01 15:00</td>
                							<td>감기몸살</td>
                							<td>베타정</td>
                							<td>3DAY</td>
            							</tr>
        							</tbody>
    							</table>
							</div><!--cardBody end -->
                   		 </div><!--card end  -->
				</div><!--d-flex end  -->
			</div><!--col-md-4 col-lg-4 end  -->

			<!--미디어시작  -->
                    <div class="col-md-6" style="width: 50%">
                        <div class="card" style="height: 385px;">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">검사결과</h6>
                            </div>
                            <div class="card-body">
                                <div class="team_members video-list">
                                    <div class="owl-carousel owl-theme owl-carouselthree">
                                        <div class="item text-center">
                                            <img src="<%=request.getContextPath()%>/resources/images/CT1.png" alt="" class="rounded-3 mb-3 img-thumbnail shadow-sm">
                                        </div>
                                        <div class="item text-center">
                                            <img src="<%=request.getContextPath()%>/resources/images/CT2.png" alt="" class="rounded-3 mb-3 img-thumbnail shadow-sm">
                                        </div>
                                           <div class="item text-center">
                                            <img src="<%=request.getContextPath()%>/resources/images/CT3.png" alt="" class="rounded-3 mb-3 img-thumbnail shadow-sm">
                                        </div>
                                        <div class="item text-center">
                                            <img src="<%=request.getContextPath()%>/resources/images/CT4.png" alt="" class="rounded-3 mb-3 img-thumbnail shadow-sm">
                                        </div>
                                    
                                        <div class="item text-center">
                                            <img src="<%=request.getContextPath()%>/resources/images/mri.png" alt="" class="rounded-3 mb-3 img-thumbnail shadow-sm">
                                        </div>
                                    </div>
                                </div>
                            </div><!--cardbody end  -->
                        </div><!--card end  -->
                 </div><!-- col-md-6 end -->
                </div><!-- Row End -->
					
					<!--2행 종료  -->
					
					
					<!-- 3행 시작 -->
					<div class="row g-3 mb-3">
						<div class="col-md-6 col-lg-6 col-xl-6" style="width: 49%; margin-right: 1%">
							<div class="card" style="height: 250px;">
								<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">아무거나</h6>
								</div>
								<div class="card-body" style="font-size: x-small;">
                   						 <textarea class="form-control mb-3" style="height:100px; font-size: x-small;" placeholder="진료소견 작성"></textarea>
                   						  <button type="submit" class="mint-btn mt-1 fw-bold">아무거나</button>
                   						  <button type="submit" class="mint-btn mt-1 fw-bold">아무거나</button>
								</div> <!--cardBody end  -->
							</div><!--card end  -->
						</div><!-- col-md-6 col-lg-6 col-xl-6 -->

						<div class="col-md-6 col-lg-6" style="width: 50%;">
							<div class="card" style="height: 250px;">
								<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">검사소견</h6>
								</div>
								<div class="card-body" style="font-size: x-small;">
                   						 <textarea class="form-control mb-3" style="height:100px; font-size: x-small;" placeholder="검사소견 작성"></textarea>
                   						  <button type="submit" class="mint-btn mt-1 fw-bold">등록</button>
                   						  <button type="submit" class="mint-btn mt-1 fw-bold">취소</button>
								</div> <!--cardBody end  -->
							</div><!--card end  -->
						</div><!--"col-md-4 col-lg-4" end  -->
					</div><!--row end  --> <!-- 3행 종료 -->
					 
				</div><!--컨테이너  -->
			</div><!--바디  -->
		</div><!--메인바디  -->
	</div> <!--클래스  -->
	
<!--부트스트랩 자바스크립트 코드  -->	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	
</body>



<!-- Jquery Core Js -->
<%-- <script src="<%=request.getContextPath()%>/resources/dist/assets/bundles/libscripts.bundle.js"></script>
 --%>
<!-- Plugin Js-->
<script src="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>
<script src="<%=request.getContextPath()%>/resources/dist/assets/plugin/owlcarousel/owl.carousel.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/page/doctor-profile.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/page/virtual.js"></script>

<script>

   
</script>
</html>
