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
  font-size : xx-small;;
  text-align: center; /* 텍스트 정렬을 가운데로 설정 */  
}


a.page-link {
  font-size: xx-small;
}

li.pagelink {
width:50px;
  font-size : xx-small;;
  text-align: center; /* 텍스트 정렬을 가운데로 설정 */
  
}

  label {
    font-size: 14px; /* 텍스트 크기 설정 */
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

/* 움직이는 텍스트 */
  .animated-title {

  	color:black;
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
    animation: marquee 17s linear forwards; /*forwards; 대신 infinite; 사용하면 반복, 애니메이션 시간을 조절 */
  }
  @keyframes marquee {
    from { transform: translateX(0); }
    to { transform: translateX(-100%); }
  }
  
  .content{
    margin-left:500px;
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
				
					<div class="animated-title" style="margin-bottom: -30px;">
  						<div class="track">
    						<div class="content">&nbsp;&nbsp;&nbsp;(Notice) 10월 13일 수요일은&nbsp;가정의 날입니다.&nbsp;정시퇴근하시어&nbsp; 가족과 함께 하시기 바랍니다.&nbsp;(메디원종합병원)&nbsp;</div>
  						</div>
              		</div>
				
					<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
              		<h4 class="mb-0 fw-bold" style="color: #6aab9c;">호흡기내과 진료실</h4>
              		</div>
				
					<!-- 1행 카드 시작 -->
					<div class="row g-3 mb-3">
						<div class="col-md-4 col-lg-4" style="width: 65%; margin-right: 1%;">
							<div class="card" style="height: 300px">
								<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">진료대기</h6>
								</div>
							 <div class="card-body" style="font-size: x-small;">
                                <table id="myProjectTable" class="table table-hover align-middle mb-0" style="width: 790px; font-size0 x-small;" >
                                    <thead>
                                        <tr>
                                            <th>순서</th>
                                            <th>환자코드</th>
                                            <th>환자명</th>
                                            <th>성별</th>
                                            <th>나이</th>
                                            <th>증상</th>
                                            <th>비고</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>01</td>
                                            <td>00001</td>
                                            <td><span class="fw-bold">오혜민</span></td>
                                            <td>여</td>
                                            <td>23</td>
                                            <td>감기</td>
                                             <td>진료대기</td>
                                        </tr>
                                        <tr>
                                            <td>02</td>
                                            <td>00001</td>
                                            <td><span class="fw-bold">정지현</span></td>
                                            <td>여</td>
                                            <td>23</td>
                                            <td>장염</td>
                                            <td>진료대기</td>
                                        </tr>
                                         <tr>
                                            <td>03</td>
                                            <td>00001</td>
                                            <td><span class="fw-bold">장민우</span></td>
                                            <td>여</td>
                                            <td>23</td>
                                            <td>천식</td>
                                           <td>진료중</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div><!--cardBody end  -->
						</div><!--card end  -->
					</div><!--col-md-4 col-lg-4 end  -->
			

						<div class="col-md-4 col-lg-4" style="width: 34%;">
							<div class="card" style="height: 300px;">
								  <div class="card-body" id='my_calendar' ></div>
                            <script>
                                document.addEventListener('DOMContentLoaded', function() {
                                var calendarEl = document.getElementById('my_calendar');
                            
                                var calendar = new FullCalendar.Calendar(calendarEl, {
                                    timeZone: 'UTC',
                                    initialView: 'dayGridMonth',
                                });
                                calendar.render();
                                });
                            </script>
							</div>
						</div>
					</div>
					
					<!-- 1행 카드 종료 -->
					
					
					<!-- 2행 카드 시작 -->
					<div class="row g-3 mb-3">
						<div class="col-md-6 col-lg-6" style="width: 43%; margin-right: 1%;">
						  <div class="d-flex flex-column justify-content-between">
						  
              				  <div class="card mb-3" style="height: 150px;">
									<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
										<h6 class="mb-0 fw-bold">환자정보</h6>
									</div>
									<div class="card-body" style="font-size: xx-small;">
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
                   			 <div class="card mb-3" style="height: 180px;">
									<div class="card-header d-flex justify-content-between bg-transparent border-bottom-0">
										<h6 class="mb-0 fw-bold">진료이력</h6>
									</div>
									<div class="card-body" style="font-size: xx-small;">
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

					
						<div class="col-md-6 col-lg-6" style="width: 27%; margin-right: 1%;">
							<div class="card" style="font-size: xx-small; height: 345px;">
								<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">상병코드</h6>
								</div>
								<div class="card-body">
								<table id="myDataTable" class="table table-hover align-middle mb-0" style="width: 280px; height:100px;">
                                    <thead>
                                        <tr>
                                            <th>상병코드</th>
                                            <th>병명</th>
                                            <th>선택</th>                                          
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                           <td>20011</td>
                                            <td>감기</td>
                                            <td><input type="checkbox" class="myCheckbox1" value="20011"> </td>
                                        </tr>
                                       <tr>
                                           <td>20012</td>
                                            <td>천식</td>
                                            <td><input type="checkbox" class="myCheckbox1" value="20012"> </td>
                                        </tr>
                                         <tr>
                                           <td>20013</td>
                                            <td>독감</td>
                                            <td><input type="checkbox" class="myCheckbox1" value="20013"> </td>
                                        </tr>
                                         <tr>
                                           <td>20014</td>
                                            <td>장염</td>
                                            <td><input type="checkbox" class="myCheckbox1" value="20014"> </td>
                                        </tr>
                                    </tbody>
                                 </table>
   							</div> <!--cardbody end  -->
						</div><!--card end  -->
					</div><!-- col-md-6 col-lg-6 col-xl-6 end -->

				
  <!-- 오더 탭 카드 -->
  <div class="col-md-6 col-lg-6" style="width: 28%;">
    <!-- 검사오더 검색 카드 내용 -->
    <div class="card" style="font-size: xx-small; height: 345px;">
      <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
        <h6 class="mb-0 fw-bold">그룹오더</h6>
      </div>
      <div class="card-body">
        <!-- 검사 탭 2개 생성 -->
        <ul class="nav nav-tabs mb-3" id="myTab" role="tablist">
          <li class="nav-item" role="presentation">
            <a class="nav-link active" id="tab1-tab" data-bs-toggle="tab" href="#tab1" role="tab" aria-controls="tab1" aria-selected="true">검사오더(일반)</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="tab2-tab" data-bs-toggle="tab" href="#tab2" role="tab" aria-controls="tab2" aria-selected="false">검사오더(장비)</a>
          </li>
          <li class="nav-item" role="presentation">
            <a class="nav-link" id="tab3-tab" data-bs-toggle="tab" href="#tab3" role="tab" aria-controls="tab3" aria-selected="false">입원오더</a>
          </li>
           <li class="nav-item" role="presentation">
            <a class="nav-link" id="tab4-tab" data-bs-toggle="tab" href="#tab4" role="tab" aria-controls="tab4" aria-selected="false">주사</a>
          </li>
        </ul>

        <!-- 검사 탭 내용 -->
        <div class="tab-content" id="myTabContent">
          <!-- 첫 번째 탭 -->
          <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
           <table id="myProjectTable2" class="table table-hover align-middle mb-0" style="width: 300px; height:100px;">
                      						<thead>
                        						<tr>
                          						<th>검사코드</th>
                          						<th>검사명</th>
                          						<th>선택</th>
                        						</tr>
                      						</thead>
                      						<tbody>
                        						<tr>
                          						<td>20011</td>
                          						<td>혈액검사</td>
                          						<td><input type="checkbox" class="myCheckbox2" value="혈액검사"> </td>
                        						</tr>
                        						<tr>
                          						<td>20012</td>
                          						<td>소변검사</td>
                          						<td><input type="checkbox" class="myCheckbox2" value="소변검사"> </td>
                        						</tr>
                      						</tbody>
                    						</table>
          </div><!-- 첫 번째 탭 내용 끝 -->

          <!-- 두 번째 탭 -->
          <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab2-tab">
           <table id="myProjectTable3" class="table table-hover align-middle mb-0" style="width: 300px; height:100px;">
                      						<thead>
                        						<tr>
                          						<th>검사코드</th>
                          						<th>검사명</th>
                          						<th>선택</th>
                        						</tr>
                      						</thead>
                      						<tbody>
                        						<tr>
                          						<td>20011</td>
                          						<td>MRI</td>
                          						<td><input type="checkbox" class="myCheckbox2" value="MRI"> </td>
                        						</tr>
                        						<tr>
                          						<td>20012</td>
                          						<td>CT</td>
                          						<td><input type="checkbox" class="myCheckbox2" value="CT"> </td>
                        						</tr>
                      						</tbody>
                    					</table>
        	  </div><!-- 두 번째 탭 내용 끝 -->
         			 <!-- 세번째 탭 -->
                    <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab3-tab">
                     				<table id="myProjectTable4" class="table table-hover align-middle mb-0" style="width: 300px; height:100px;">
                      					<thead>
                        					<tr>
                          						<th>입원오더</th>
                          						<th>오더내용</th>
                        					</tr>
                      					</thead>
                      					<tbody>
                        					<tr>
                          						<td>입원권고</td>
                          						<td><input type="checkbox" class="myCheckbox2" value="입원권고"></td>
                        					</tr>
                        					<tr>
                          						<td>식이(일반식)</td>
                          						<td><input type="checkbox" class="myCheckbox2" value="일반식"></td>
                        					</tr>
                        					<tr>
    											<td>권고일자</td>
        											<td><input type="date" class="myDateInput"></td>
      											</tr>
      											<tr>
        											<td>권고기간</td>
        											<td><input type="text" class="myTextInput1"></td>
      											</tr>
      											<tr>
        											<td>기타오더</td>
        											<td><input type="text" class="myTextInput2"></td>
      											</tr>
                      						</tbody>
                    					</table>
          </div><!-- 세번째 탭 내용 끝 -->
          
          
           			 <!-- 네번째 탭 -->
                    <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="tab4-tab">
                     				<table id="myProjectTable5" class="table table-hover align-middle mb-0" style="width: 300px; height:100px;">
                      					<thead>
                        					<tr>
                          						<th>주사오더</th>
                          						<th>오더내용</th>
                        					</tr>
                      					</thead>
                      					<tbody>
                        					<tr>
                          						<td>주사</td>
                          						<td><input type="checkbox" class="myCheckbox2" value="주사"></td>
                        					</tr>
      											<tr>
        											<td>주사내용</td>
        											<td><input type="text" class="myTextInput3"></td>
      											</tr>
                      						</tbody>
                    					</table>
          </div><!-- 네번째 탭 내용 끝 -->
          
          
          
        </div><!-- content end -->
      </div> <!--cardbody  -->
    </div> <!--card  -->
  </div><!-- col-md-6 col-lg-6 col-xl-6 end -->
</div><!-- row g-3 mb-3 end -->
					
					<!--2행 종료  -->
					
					<!-- 3행 시작 -->
					<div class="row g-3 mb-3">
						<div class="col-md-6 col-lg-6 col-xl-6" style="width: 50%; margin-right: 1%">
							<div class="card" style="height: 250px;">
								<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">진료소견</h6>
								</div>
								<div class="card-body" style="font-size: x-small;">
                   						 <textarea class="form-control mb-3" style="height:100px; font-size: x-small;" placeholder="진료소견 작성"></textarea>
                   						  <button type="submit" class="mint-btn mt-1 fw-bold">서류목록</button>
                   						  <button type="submit" class="mint-btn mt-1 fw-bold">소견서 생성</button>
								</div> <!--cardBody end  -->
							</div><!--card end  -->
						</div><!-- col-md-6 col-lg-6 col-xl-6 -->

						<div class="col-md-6 col-lg-6" style="width: 49%;">
							<div class="card" style="height: 250px;">
								<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">약품검색</h6>
								</div>
								<div class="card-body" style="font-size: x-small;">
      					     		<table id="myDataTable2" class="table table-hover align-middle mb-0" style="height:100px; width: 580px;">
           								 <thead>
                								<tr>
                    								<th>약품코드</th>
                    								<th>약품명</th>
                    								<th>효능군</th>
                    								<th>내사용빈도</th>
                    								<th>총사용빈도</th>
                    								<th>처방</th>
               									</tr>
            								</thead>
            								<tbody>
                								<tr>
                    								<th>1001</th>
                    								<th>베타정</th>
                    								<th>인후통</th>
                    								<th>7</th>
                    								<th>50</th>
                    								<th><input type="checkbox" class="myCheckbox3" value="1001"></th>
                								</tr>
            								</tbody>
        								</table>
                   				
								</div><!--cardBody end  -->
							</div><!-- card end -->
						</div><!--"col-md-4 col-lg-4" end  -->
					</div><!--row end  -->
					<!-- 3행 종료 -->
					
					<!-- 4행 시작 -->
					<div class="row g-3 mb-3">
						<div class="col-md-6 col-lg-6 col-xl-6" style="width: 35%; margin-right: 1%;">
							<div class="card" >
								<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">처방내역</h6>
								</div>
								<div class="card-body" style="font-size: x-small;">
 									<div class="row" style="margin-bottom: 10px;"> <!-- 가로로 정렬되도록 row 추가 -->
         								 <div class="col-md-2">
            								<p style="font-size: 14px; margin-top: 5px; margin-left: 10px;">상병코드</p>
         							 	</div>
          							<div class="col-md-10">
            							<div class="card p-3">
              								<div id="selectedValues1" style="font-size: 14px; color: blue;">
                								환자의 상병코드를 선택해주세요
              								</div>
            							</div>
          							</div>
        						</div><!-- row end -->
           		  				 	<div class="row" style="margin-bottom: 0px;"> <!-- 가로로 정렬되도록 row 추가 -->
         								 <div class="col-md-2">
            								<p style="font-size: 14px; margin-top: 5px; margin-left: 10px;">그룹오더</p>
         							 	</div>
          							<div class="col-md-10">
            							<div class="card p-3">
              								<div id="selectedValues2" style="font-size: 14px; color: blue;">
                								필요한 오더를 선택해주세요
              								</div>
            							</div>
            							
            							<div class="card-body" style="font-size: x-small;">
                   			  				<button type="submit" class="mint-btn mt-1 fw-bold">취소</button>
							  				<button type="submit" class="mint-btn mt-1 fw-bold">등록</button>
                   		   				</div>
          							</div>
        						</div><!-- row end -->
        				
                   		   
           		  			</div><!--cardBody end  -->
           		  			
           		  			
						</div><!--card end  -->
					</div><!--col-md-6 col-lg-6 col-xl-6 end  -->
					
					
						<div class="col-md-6 col-lg-6 col-xl-6" style="width: 14%; margin-right: 1%">
							<div class="card" style="font-size: small; height: 270px;">
								<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">검사상태</h6>
								</div>
								<div class="card-body">
								<input type="text" value="검사대기" style="width: 100px;">
   								 </div><!--cardbody end  -->
   								 <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">검사결과</h6>
								</div>
								<div class="card-body">
								<input type="text" value="결과대기" style="width: 100px;">
   								 </div><!--cardbody end  -->
   								 
							</div><!--card end  -->
						</div><!--col-md-6 col-lg-6  -->
				
					

						<div class="col-md-6 col-lg-6 col-xl-6" style="width: 49%;">
							<div class="card" style="font-size: xx-small; height: 270px;">
								<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
									<h6 class="mb-0 fw-bold">처방약품</h6>
								</div>
							
   								<div class="card-body" style="font-size: xx-small;">
    								<table class="table">
           								 <thead>
                								<tr>
                    								<th>약품코드</th>
                    								<th>약품명</th>
                    								<th>1회투약량</th>
                    								<th>단위</th>
                    								<th>1일투약횟수</th>
                    								<th>총투약일수</th>
                    								<th>단가</th>
                    								<th>총금액</th>
                								</tr>
            								</thead>
            								<tbody>
                								<tr>
                    								<th>212121</th>
                    								<th>베타정</th>
                    								<th>3</th>
                    								<th>g</th>
                    								<th>3</th>
                    								<th>7</th>
                    								<th>1,000</th>
                    								<th>3,000</th>
                								</tr>
                									<tr>
                    								<th><div id="selectedValues3"></div></th>
                    								<th></th>
                    								<th></th>
                    								<th></th>
                    								<th></th>
                    								<th></th>
                    								<th></th>
                    								<th></th>
                								</tr>
            								</tbody>
        								</table>
							</div><!--cardBody end  -->
							<div class="card-body" style="font-size: x-small;">
                   			  <button type="submit" class="mint-btn mt-1 fw-bold">삭제</button>
							  <button type="submit" class="mint-btn mt-1 fw-bold">처방</button>
                   		   </div>
						</div><!--card end  -->
					</div><!--col-md-6 col-lg-6 end  -->
	 </div> <!--row end  -->
					 <!-- 4행 종료 -->
					 
					 
				</div><!--컨테이너  -->
			</div><!--바디  -->
		</div><!--메인바디  -->
	</div> <!--클래스  -->
	
</body>



<!-- Jquery Core Js -->
<script src="<%=request.getContextPath()%>/resources/dist/assets/bundles/libscripts.bundle.js"></script>

<!-- Plugin Js-->
<script src="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/page/doctor-profile.js"></script>

<script>
//상병코드
const checkboxes1 = document.querySelectorAll('.myCheckbox1');
const selectedValuesElement1 = document.getElementById('selectedValues1');

checkboxes1.forEach(checkbox => {
    checkbox.addEventListener('change', () => {
        const selectedValues1 = Array.from(checkboxes1)
            .filter(c => c.checked)
            .map(c => c.value);

        selectedValuesElement1.innerHTML = selectedValues1.join(', ');
    });
});

// 그룹오더
const checkboxes2 = document.querySelectorAll('.myCheckbox2');
const selectedValuesElement2 = document.getElementById('selectedValues2');
const dateInput = document.querySelector('.myDateInput');
const textInput1 = document.querySelector('.myTextInput1');
const textInput2 = document.querySelector('.myTextInput2');
const textInput3 = document.querySelector('.myTextInput3');

function updateSelectedValues() {
    const selectedCheckboxes = Array.from(checkboxes2)
        .filter(c => c.checked)
        .map(c => c.value);

    const selectedDate = dateInput.value;
    const selectedText1 = textInput1.value;
    const selectedText2 = textInput2.value;
    const selectedText3 = textInput3.value;

    const selectedValues = [];
    if (selectedCheckboxes.length > 0) {
        selectedValues.push(selectedCheckboxes.join(', '));
    }
    if (selectedDate) {
        selectedValues.push(selectedDate);
    }
    if (selectedText1) {
        selectedValues.push(selectedText1);
    }
    if (selectedText2) {
        selectedValues.push(selectedText2);
    }
    if (selectedText3) {
        selectedValues.push(selectedText3);
    }

    selectedValuesElement2.innerHTML = selectedValues.join(', ');
}

checkboxes2.forEach(checkbox => {
    checkbox.addEventListener('change', updateSelectedValues);
});

dateInput.addEventListener('change', updateSelectedValues);
textInput1.addEventListener('input', updateSelectedValues);
textInput2.addEventListener('input', updateSelectedValues);
textInput3.addEventListener('input', updateSelectedValues);





// 처방약품
const checkboxes3 = document.querySelectorAll('.myCheckbox3');
const selectedValuesElement3 = document.getElementById('selectedValues3');

checkboxes3.forEach(checkbox => {
    checkbox.addEventListener('change', () => {
        const selectedValues3 = Array.from(checkboxes3)
            .filter(c => c.checked)
            .map(c => c.value);

        selectedValuesElement3.innerHTML = selectedValues3.join(', ');
    });
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
   
</script>
</html>
