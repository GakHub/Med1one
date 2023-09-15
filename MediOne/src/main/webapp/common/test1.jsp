<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>:: I-Health:: Dashboard</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->

<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/owlcarousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.css">
<!-- project css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">

<!--부트스트랩 자바스크립트 코드  -->
<link
	href="<%=request.getContextPath()%>/resources/js/bootstrap5/css/bootstrap.min.css"
	rel="stylesheet">

<style>
 .owl-carouselthree .item {
    
  }

  .owl-item {
    width: 10px; /* 원하는 가로 크기로 변경 */
    margin-left: -100px;
  }
/* 

.lift {
	transition: box-shadow .25s ease, transform .25s linear !important;
}

.lift:focus, .lift:hover {
	box-shadow: 0 6px 1rem rgba(33, 37, 41, 0.1), 0 0.5rem 1rem -0.75rem
		rgba(33, 37, 41, 0.1) !important;
	transform: translate3d(0, -3px, 0)
}

/* 움직이는 텍스트 */
.animated-title {font-size:60px; font-family:'Raleway',Sans-serif; font-weight:300; position: relative; width: 100%;max-width:100%; height: auto; padding:100px 0; overflow-x: hidden; overflow-y: hidden; }
.animated-title .track {position: absolute; white-space: nowrap;will-change: transform;animation: marquee 60s linear infinite; }
@keyframes marquee {
  from { transform: translateX(0); }
  to { transform: translateX(-50%); }
}
@media (hover: hover) and (min-width: 700px){
.animated-title .content {-webkit-transform: translateY(calc(100% - 8rem)); transform: translateY(calc(100% - 8rem));}
    }


</style>





</head>

<body>

					




<div class="animated-title">
  <div class="track">
    <div class="content">&nbsp;moho design template glad&nbsp;moho design template glad&nbsp;moho design template glad&nbsp;moho design template glad&nbsp;moho design template glad&nbsp;moho design template glad</div>
  </div>
</div>


<div class="container-xxl">
  <div class="row g-0 mb-3"> <!-- g-0으로 수정 -->
    <div class="col-md-12">
      <div class="card border-0">
        <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
          <h6 class="mb-0 fw-bold ">notice</h6>
        </div>
        
        <div class="owl-carousel owl-theme owl-carouselthree">
          <div class="item text-center">
            <div class="non-slider-content">
              <p>10월 13일 수요일은 가정의 날입니다.</p>
            </div>
          </div>
          <div class="item text-center">
            <div class="non-slider-content">
              <p>정시퇴근하시어 가족과 함께하시기 바랍니다.</p>
            </div>
          </div>
          
          
          
          
          
        </div>
      </div>
    </div>
  </div>
</div>
						<!-- Row End -->








						<div
							class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
							<h4 class="mb-0 fw-bold" style="color: #6aab9c;">검사실</h4>
						</div>



						<div class="row g-3 mb-3">
							<div class="col-lg-12 col-xl-7">
								<div class="card mb-3">
									<div class="loader-container mb-3">
										<div class="loader my-5">
											<img
												src="<%=request.getContextPath()%>/resources/dist/assets/images/heartbeat.png"
												alt="Lifeline">
											<div class="slide-box">
												<div class="solid"></div>
											</div>
										</div>
										<!--card end  -->
									</div>
									<!--col-lg-12 col-xl-7 end  -->
								</div>
								<!--row end  -->
							</div>
						</div>
					</div>



<!--미디어시작  -->
                    <div class="col-md-6">
                        <div class="card" style="height: 385px;">
                           <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
										<h6 class="mb-0 fw-bold ">notice</h6>
									</div>
										<div class="owl-carousel owl-theme owl-carouselthree">
											<div class="item text-center">
												<div class="non-slider-content" style="margin: 0px !important;">
													<p>10월 13일 수요일은</p>
												</div>
											</div>
											<div class="item text-center">
												<div class="non-slider-content">
													<p>가정의 달입니다.</p>
												</div>
											</div>
											<div class="item text-center">
												<div class="non-slider-content">
													<p>정시퇴근하시어
													</p>
												</div>
											</div>
												<div class="item text-center">
												<div class="non-slider-content">
													<p>정가족과 함께하시기 바랍니다.</p>
												</div>
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
						<div class="col-md-6 col-lg-6 col-xl-6"
							style="width: 50%; margin-right: 1%">
							<div class="card" style="height: 250px;">
								<div
									class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">진료소견</h6>
								</div>
								<div class="card-body" style="font-size: x-small;">
									<textarea class="form-control mb-3"
										style="height: 100px; font-size: x-small;"
										placeholder="진료소견 작성"></textarea>
									<button type="submit" class="mint-btn mt-1 fw-bold">서류목록</button>
									<button type="submit" class="mint-btn mt-1 fw-bold">소견서
										생성</button>
								</div>
								<!--cardBody end  -->
							</div>
							<!--card end  -->
						</div>
						<!-- col-md-6 col-lg-6 col-xl-6 -->

						<div class="col-md-6 col-lg-6" style="width: 49%;">
							<div class="card" style="height: 250px;">
								<div
									class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">약품검색</h6>
								</div>
								<div class="card-body" style="font-size: x-small;"></div>
								<!--cardBody end  -->
							</div>
							<!-- card end -->
						</div>
						<!--"col-md-4 col-lg-4" end  -->
					</div>
					<!--row end  -->
					<!-- 3행 종료 -->

				</div>


			</div>
			<!--바디  -->
		</div>
		<!--메인바디  -->
	</div>
	<!--클래스  -->

	<!--부트스트랩 자바스크립트 코드  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>



<!-- Jquery Core Js -->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/libscripts.bundle.js"></script>
<!-- Plugin Js-->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.js"></script>

<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/plugin/owlcarousel/owl.carousel.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/page/doctor-profile.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/page/virtual2.js"></script>


</html>
