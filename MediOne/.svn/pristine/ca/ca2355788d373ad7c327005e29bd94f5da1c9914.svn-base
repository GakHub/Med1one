<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" buffer="8kb"%>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>:: I-Health::  Dashboard </title>
    <link rel="icon" href="favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- plugin css file  -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
    <!-- project css file  -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/dist/assets/css/ihealth.style.min.css">
<!-- Google Code  -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-264428387-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'UA-264428387-1');
    </script>

</head>
<body>

 <!-- 템플릿 -->
<div id="ihealth-layout" class="theme-tradewind">
    
    <!-- main body area -->
    <div class="main px-lg-4 px-md-4">
    
        <!-- Body: Body -->
        <div class="body d-flex py-3">

      <!--컨테이너  -->
            <div class="container-xxl">
            
             <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
              <h4 class="mb-0 fw-bold" style="color: #6aab9c;">호흡기내과 진료대기실</h4>
              </div>
              
             <!--대기실 2개 컨테이너  -->
                <div class="row g-3 mb-3">
                
                  <!-- 대기실 -->
                    <div class="col-md-12 col-lg-6" style="width : 48%; margin-right: 30px">
                         <div class="card mb-3">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">진료대기</h6>
                            </div>
                            <div class="card-body">
                                <table id="myDataTable" class="table table-hover align-middle mb-0" style="width: 100%;">
                                    <thead>
                                        <tr>
                                            <th>접수코드</th>
                                            <th>환자명</th>
                                            <th>생년월일</th>
                                            <th>증상</th>
                                            <th>환자상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                           <td>20230801</td>
                                            <td>정지현</td>
                                            <td>801012</td>
                                            <td>복통, 두통</td>
                                            <td><span class="badge bg-success">진료대기</span></td>
                                        </tr>
                                       <tr>
                                            <td>20230801</td>
                                           <td>황소희</td>
                                            <td>801012</td>
                                            <td>감기몸살</td>
                                            <td><span class="badge bg-success">진료대기</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                     <!--대기실-->
                         <!-- 대기실 -->
                    <div class="col-md-12 col-lg-6" style="width : 48%; margin-right: 30px">
                         <div class="card mb-3">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">진료중</h6>
                            </div>
                            <div class="card-body">
                                <table id="myDataTable2" class="table table-hover align-middle mb-0" style="width: 100%;">
                                    <thead>
                                        <tr>
                                            <th>접수코드</th>
                                            <th>환자명</th>
                                            <th>생년월일</th>
                                            <th>증상</th>
                                            <th>환자상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                           <td>20230801</td>
                                            <td>정지현</td>
                                            <td>801012</td>
                                            <td>복통, 두통</td>
                                            <td><span class="badge bg-danger">진료중</span></td>
                                        </tr>
                                       <tr>
                                            <td>20230801</td>
                                           <td>황소희</td>
                                            <td>801012</td>
                                            <td>감기몸살</td>
                                            <td><span class="badge bg-danger">진료중</span></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                     <!--대기실-->
                     
                     
                     
                </div>
           <!--1행 대기실, 진료실 끝 -->
  
           
              <!--2행 시작 -->
                <div class="row g-3 mb-3">
                   <!-- 대기실 -->
                    <div class="col-md-12 col-lg-6" style="width : 66%; margin-right: 30px;">
                         <div class="card mb-3">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">환자 상세정보</h6>
                            </div>
                            <div class="card-body">                            
                                <div class="col-md-10 col-sm-6" style="width: 90%; height: 90%" >
                               <div class="card">
                                   <div class="member-info   w-100">
                                    <p class="mt-2">
 <i class="icofont-check-circled"></i>이름: 홍길동<br>
 <i class="icofont-check-circled"></i>성별: 남성<br>
 <i class="icofont-check-circled"></i>나이: 35세<br>
 <i class="icofont-check-circled"></i>주민등록번호: 860101-1234567<br>
 <i class="icofont-check-circled"></i>전화번호: 010-1234-5678<br>
 <i class="icofont-check-circled"></i>주소: 서울특별시 강남구 역삼동 123번지<br>
 <i class="icofont-check-circled"></i>진료 날짜: 2023년 8월 1일<br>

 <i class="icofont-check-circled"></i>진료 내용:<br>

 <i class="icofont-check-circled"></i>증상: 목 통증, 기침, 몸살 증세<br>
 <i class="icofont-check-circled"></i>현재 복용 중인 약물: 없음<br>
 <i class="icofont-check-circled"></i>가족력: 부모 모두 건강함<br>
 <i class="icofont-check-circled"></i>기타 과거 병력: 과거 5년 전 정기 건강 검진 시 당뇨 진단 받음<br>
 <i class="icofont-check-circled"></i>진단: 감기(Cold)<br>
 <i class="icofont-check-circled"></i>처방:<br>

 <i class="icofont-check-circled"></i>약물1: 두통 및 몸살 완화를 위한 해열제 (1일 3회, 식사 후 복용, 3일간 복용)<br>
 <i class="icofont-check-circled"></i>약물2: 기침 완화를 위한 기침 억제제 (1일 2회, 아침과 저녁 식사 후 복용, 5일간 복용)<br>
 <i class="icofont-check-circled"></i>휴식 권고: 2~3일간 쉬며 휴식을 취할 것을 권고함<br>
 <i class="icofont-check-circled"></i>수분 섭취 권장: 하루에 충분한 양의 물을 섭취할 것을 권장함<br>
침착한 환경에서 휴식 권고<br>
 <i class="icofont-check-circled"></i>기타 안내:<br>

복용 중인 약물이나 과거 병력이 변경되거나 악화되는 경우 진료 시 언제든지 의사에게 알려야 함<br>
3일 이상 증상이 호전되지 않을 경우 의사에게 연락하거나 방문하여 추가적인 검사를 받을 것을 권장함<br></p>

      
                           <div class="row g-2 pt-2">
                           
                                        <div class="col-xl-12">
                                            <div class="d-flex align-items-center">
                                                <i class="icofont-check-circled"></i>
                                                <span class="ms-2">202-555-0174 </span>
                                            </div>
                                        </div>
                                        <div class="col-xl-12">
                                            <div class="d-flex align-items-center">
                                                <i class="icofont-check-circled"></i>
                                                <span class="ms-2">joanwilson@gmail.com</span>
                                            </div>
                                        </div>
                                        <div class="col-xl-12">
                                            <div class="d-flex align-items-center">
                                                <i class="icofont-check-circled"></i>
                                                <span class="ms-2">1980.12.11</span>
                                            </div>
                                        </div>
                                        <div class="col-xl-12">
                                            <div class="d-flex align-items-center">
                                                <i class="icofont-check-circled"></i>
                                                <span class="ms-2">대전 중구 오류동 112번지, 대덕인재개발원 403호</span>
                                            </div>
                                        </div>
                                                         
                                    </div>
                           
                           
                           
                                </div>     
                             </div>
                           </div>
                          </div>
                        </div>
                    </div>
                     <!--진료실-->
                
                    <!--2행 달력 -->
                      <div class="col-md-12 col-lg-6" style="width: 30%">
                        <div class="card mb-3" >
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">진료예약</h6>
                            </div>
                            <div class="card-body">
                                <div class="wrapper">                               
                                    <div id="calendar"> 
                                    <div class="monthChange"></div>
                                    <div class='timepicker'>
                                        <div class="owl">
                                          <div>06:00</div>
                                          <div>07:00</div>
                                          <div>08:00</div>
                                          <div>09:00</div>
                                          <div>10:00</div>
                                          <div>11:00</div>
                                          <div>12:00</div>
                                          <div>13:00</div>
                                          <div>14:00</div>
                                          <div>15:00</div>
                                          <div>16:00</div>
                                          <div>17:00</div>
                                          <div>18:00</div>
                                          <div>19:00</div>
                                          <div>20:00</div>
                                        </div>
                                        <div class="fade-l"></div>
                                        <div class="fade-r"></div>
                                      </div>
                                  </div>
                              
                                  
                                  <div class="inner-wrap">
                                    <form>
                                        <div class="mb-3">
                                          <input type="text" class="form-control" id="ps-name" placeholder="환자명">
                                        </div>
                                        <div class="mb-3">
                                            <input type="text" class="form-control" id="ps-code" placeholder="환자코드">
                                        </div>
                                        <select class="form-select mb-3" aria-label="Default select example">
                                            <option selected>진료과</option>
                                            <option value="1">호흡기내과</option>
                                            <option value="2">소화기내과</option>
                                            <option value="3">영상의학과</option>
                                            <option value="4">심장내과</option>
                                            <option value="5">감염내과</option>
                                            <option value="6">내분비과</option>
                                        </select>
                                        <button type="submit" class="btn btn-user disabled request"> 진료예약 <span>On</span>
                                            <span class="day fw-bold text-white"></span>
                                            <span>At</span>
                                            <span class="time fw-bold text-white"></span>
                                            <i class="icofont-dotted-right fs-3"></i>
                                            </button>
                                      </form>
                                  </div>
                              </div>
                            </div>
                            <!--카드 바디 달력끝  -->
                        </div><!--카드전체  -->
                    </div>
               <!--달력끝  -->  
                   </div>

             </div><!--컨테이너  -->
        </div> <!--바디  -->   
    </div> <!--메인바디  -->
</div> <!--템플릿  -->

<%-- <!-- Jquery Core Js -->
<script src="<%=request.getContextPath() %>/resources/dist/assets/bundles/libscripts.bundle.js"></script> --%>

<!-- Plugin Js -->
<script src="<%=request.getContextPath() %>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script src="<%=request.getContextPath() %>/resources/dist/assets/plugin/jqueryuicalandar/jquery-ui.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/dist/assets/plugin/owlcarousel/owl.carousel.js"></script>
<script src="<%=request.getContextPath() %>/resources/dist/assets/bundles/dataTables.bundle.js"></script>      

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath() %>/resources/js/template.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/page/index.js"></script>
 <script>
      $('#myDataTable')
      .addClass( 'nowrap' )
      .dataTable( {
          responsive: true,
          columnDefs: [
              { targets: [-1, -3], className: 'dt-body-right' }
          ]
      });
      
      $('#myDataTable2')
      .addClass( 'nowrap' )
      .dataTable( {
          responsive: true,
          columnDefs: [
              { targets: [-1, -3], className: 'dt-body-right' }
          ]
      });
 </script>
</body>
</html> 