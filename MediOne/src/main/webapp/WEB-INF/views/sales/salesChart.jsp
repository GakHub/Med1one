<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
     <!--Load the AJAX API-->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script async src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAcxlU_ITeOcwPadyeV6QxmUkZbxqPNrqQ&callback=initMap"></script>

    
<style>
.canvas{
height: 500px;
}

.room col{

background-color: white;
}


.label{
background-color: white;
}

label{

background-color: red;

}

.top-color {
  border-top: 3px solid #6aab9c; 
}

 /* 스크롤 버튼 스타일 */
    #scrollToTopButton {
    
      position: fixed;
      bottom: 20px;
      right: 20px;
      z-index: 99;
      cursor: pointer;
      padding: 10px;
      background-color: #6aab9c;
      color: white;
      border: none;
      border-radius: 4px;
    }

</style>

			
                <div class="row g-3 mb-3 row-deck" id="top" style="margin-left: -100px; margin-right: -100px; margin-top: 20px;">
                    <div class="col-lg-12 col-xl-6" style="width: 48%; margin-right: 1%; flex-grow: 1;">
                        <div class="card top-color">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <%
        							Date currentMonth = new Date();
        							SimpleDateFormat dateFormatMonth = new SimpleDateFormat("M");
        							String formattedMonth = dateFormatMonth.format(currentMonth);
   								 %>
                                    
                                <h6 class="mb-0 fw-bold ">
                                 <span class="text-danger">&nbsp;<%= formattedMonth %>월</span>
                                병원통계
   								 <%
        							Date currentDate = new Date();
        							SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        							String formattedDate = dateFormat.format(currentDate);
   								 %>
                                 	
                                  <span style="font-size: 14px; color: grey;">(<%= formattedDate %> 기준)</span>
                                </h6>
                            </div>
                            
                            
                            <div class="card-body">
                                <div class="row g-3 row-deck">
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card" style="width:30%; margin-right: 5%; margin-bottom: 10%;">
                                        
                                         <div class="card-body ">
                                               <i class="icofont-money fs-3 color-lavender-purple"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">매출액</h6>
                                                &nbsp;<span class="text-danger" id="eightMonthGrowth"></span><span style="font-size: 13px; color: grey;">&nbsp;원</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card" style="width:30%; margin-right: 5%; margin-bottom: 10%;">
                                                <div class="card-body ">
                                            		<i class="icofont-crutch fs-3 color-lightblue"></i>
                                                	<h6 class="mt-3 mb-0 fw-bold small-14">신규환자</h6>
                                            &nbsp;<span class="text-danger" id="thisMonthClinicCount"></span><span style="font-size: 13px; color: grey;">&nbsp;명</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card" style="width:30%; margin-bottom: 10%;">
                                            <div class="card-body ">
                                            	<i class="icofont-icu fs-3 color-danger"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">입원환자</h6>
                                               &nbsp; <span class="text-danger" id="thisHospitalCount"></span><span style="font-size: 13px; color: grey;">&nbsp;명</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card" style="width:30%; margin-right: 5%; margin-bottom: 5%;">
                                             <div class="card-body ">
                                            	<i class="icofont-doctor fs-3 color-light-orange"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">의사</h6>
                                                &nbsp;<span class="text-danger" id="currentDoctorCount"></span><span style="font-size: 13px; color: grey;">&nbsp;명</span>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card" style="width:30%; margin-right: 5%; margin-bottom: 5%;">
                                           <div class="card-body ">
                                                <i class="icofont-nurse-alt fs-3 color-light-success"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">간호사</h6>
												&nbsp;<span class="text-danger" id="currentNurseCount"></span><span style="font-size: 13px; color: grey;">&nbsp;명</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="card" style="width:30%; margin-bottom: 5%;">
                                         <div class="card-body ">
                                          		<i class="icofont-patient-file fs-3 color-careys-pink"></i>
                                                <h6 class="mt-3 mb-0 fw-bold small-14">행정직</h6>
                                                    &nbsp;<span class="text-danger" id="eightEmpCount"></span><span style="font-size: 13px; color: grey;">&nbsp;명</span>
                                            </div>
                                        
                                        
                                           
                                        </div>
                                    </div>
                                </div><!-- row -->
                               
                        
                              
                               <h6 class="mb-0 fw-bold" style="margin-top: 10px;">  &nbsp;차트 바로가기 <i class="icofont-touch fs-4"></i></h6>
                               <br>
                               <button id="goToDivButton1" class="btn-danger" style="margin-right: 10px;">분기별 매출액</button>
                               <button id="goToDivButton2" class="btn-danger" style="margin-right: 10px;">부서·직군별 직원수</button>
                               <button id="goToDivButton3" class="btn-danger" style="margin-right: 10px;">진료과별 매출액</button>
                               <button id="goToDivButton4" class="btn-danger" style="margin-right: 10px;">진료과별 환자수</button>
                               <button id="goToDivButton5" class="btn-danger" style="margin-right: 10px;">월별 환자수</button>
                            </div> <!-- cardbody -->
                        </div> <!-- card -->
					 </div><!--col  -->
					
					<!-- 1행2열 -->
                    <div class="col-lg-12 col-xl-6" style="width: 48%; flex-grow: 1;">
                        <div class="card top-color">
                            <div class="card-header py-3 d-flex  bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">거주지별 환자 통계<span class="text-muted" style="font-size: 14px;"> &nbsp; 총&nbsp;<span id="patientCount" class="text-danger"></span>명</span>
                              </h6>
                            </div>
                                <span>&nbsp;&nbsp;&nbsp;&nbsp;<span id="localPatient" class="text-muted" style="font-size: 10px !important; margin-top: -30px !important;"></span></span>
                            <div class="card-body">
                               <div id="city"></div>
                              
                            </div>  <!-- cardbody -->
                        </div><!--card  -->
                    </div> <!--col  -->
                </div> <!-- row-->
                
                
                
				<!--2행  -->	
                <div class="row g-3 mb-3" id="target1" style="margin-left: -100px; margin-right: -100px; margin-top: 20px;">
                        <div class="card top-color">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                       <h6 class="mb-0 fw-bold ">분기별 병원 매출액
                                </h6>
                               
                            </div>
                            <div class="card-body">
                                <div id="apex-stacked-area">
                                <canvas id="salesChart" class="canvas"></canvas>
                                </div>
                            </div>
                        </div> <!--card  -->
                  </div><!--row  -->
             
					
					<!-- 3행 -->
			 <div class="row g-3 mb-3" id="target2" style="margin-left: -100px; margin-right: -100px; margin-top: 20px;">
				<div class="col-lg-12 col-xl-6" style="width: 48%; margin-right: 1%; flex-grow: 1;">
				 	<div class="card top-color">
                         <div class="card-header py-3 d-flex  bg-transparent border-bottom-0">
                              <h6 class="mb-0 fw-bold ">직군별 직원수</h6>
                         </div>
                         <div class="card-body">
                          	  <div id="donutChart" ></div>
                         </div>
                     </div><!--card  -->
                </div><!--col  -->
				<div class="col-lg-12 col-xl-6" style="width: 48%; flex-grow: 1;">
                     <div class="card top-color">
                          <div class="card-header py-3 d-flex  bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">부서별 직원수</h6>
                           </div>
                           <div class="card-body">
                     	      	<div id="donutChart2"></div>
                            </div>
                        </div><!--card  -->
                    </div><!--col  -->
                </div> <!--row  -->
                
			<!--3행 -->
			<div class="row g-3 mb-3 row-deck" id="target3" style="margin-left: -100px; margin-right: -100px; margin-top: 20px;">
					<div class="card top-color">
						<div
							class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
							<h6 class="mb-0 fw-bold ">진료과별 매출액</h6>
						</div>
						<div class="card-body">

							<button id="year2022" class="btn-success">2022년</button>
							<button id="year2023" class="btn-danger">2023년</button>
							<div>
								<canvas id="deptChart"></canvas>
							</div>
						</div>
						<!-- cardbody -->
					</div>
					<!-- card -->
				</div>
				<!--row  -->

				<!-- 5행 -->
			<div class="row g-3 mb-3 row-deck" id="target4" style="margin-left: -100px; margin-right: -100px; margin-top: 20px;">					
					<div class="card top-color">
						<div class="card-header py-3 d-flex  bg-transparent border-bottom-0">
							<h6 class="mb-0 fw-bold ">진료과별 환자수</h6>
						</div>
						<div class="card-body">
							<button id="customer2022" class="btn-success">2022년</button>
							<button id="customer2023" class="btn-danger">2023년</button>
							<div>
    						<canvas id="customerChart"></canvas>
							</div>
						</div>
					</div><!--card  -->
			</div><!--row  -->
			
			
				<!--  4행-->
				<div class="row g-3 mb-3" id="target5" style="height: 500px; margin-top: 1%; margin-left: -100px; margin-right: -100px;">
				  <div class="card top-color">
				  		<div class="card-header py-3 d-flex  bg-transparent border-bottom-0">
							<h6 class="mb-0 fw-bold ">월별 환자수</h6>
						</div>
						<div class="card-body">
    						<canvas id="monthCountChart"></canvas>
						</div>
				</div><!--card  -->
			</div><!--row  -->
			
			<button id="scrollToTopButton">Top</button>
			


  <canvas id="salesChart2" class="canvas"></canvas>
   
<%-- 분기별 총 매출액 꺾은선 그래프 --%>

<script>

    $(document).ready(function() {
        $.getJSON("<c:url value='/sales/salesChart.do' />").done(function(resp) {
            var labels2022 = [];
            var labels2023 = [];
            var data2022 = [];
            var data2023 = [];

            $(resp).each(function(idx, chart) {
                var year = chart.salesYear; // 수정: 'year' 대신 'chart.salesYear' 사용
                var quarter = chart.quarter;
                var salesData = chart.totalSalesAmount;

                var label = quarter + "분기"; // 수정: 'salesYear' 대신 'year' 사용
                
                if (year === '2022') {
                    data2022.push(salesData);
                    labels2022.push(label);
                } else if (year === '2023'
                		) { 
                    data2023.push(salesData);
                    labels2023.push(label);
                }
            });

            var ctx = document.getElementById("salesChart").getContext("2d");
            var chart = new Chart(ctx, {
                type: "line",
                data: {
                    labels: labels2022, // 2022년 분기별 라벨 배열 사용
                    datasets: [
                        {
                        	label: "2022",
                            data: data2022,
                            borderColor: 'rgb(75, 192, 192)',
                            tension: 0.1,
                            fill: false
                        },
                        {
                        	
                             
                         	label: "2023",
                            data: data2023,
                            borderColor:  'rgb(255, 99, 132)',
                            tension: 0.1,
                            fill: false
                            
                        }
                    ]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        x: {
                            display: true,
                            title: {
                                display: true,
                                text: ""
                            }
                        },
                        y: {
                           
                            display: true,
                            title: {
                                display: true,
                                text: "매출액(단위:백만원)"
                            } ,
                            ticks: {
                                // 매출액 단위 세분화 및 눈금 간격 설정
                                maxTicksLimit: 1000, // 눈금 간격 조절
                                stepSize: 5000 // 스텝 크기 조정
                            }
                        }
                    }
                }
            });/* 차트 */
        });/*제이슨  */
        
     
        
    });/*펑션  */
    

</script>
 
<script>
<%--부서별 매출액 막대 그래프 chart.js--%>

$(document).ready(function() {
    var labels = [];
    var datasets = [];

    var ctx = document.getElementById('deptChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: datasets
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: "매출액(단위:백만원)"
                    },
                    ticks: {
                        stepSize: 5000
                    }
                }
            }
        }
    });

 // 기본으로 2023 버튼 클릭
    loadData(2023);
    
    $("#year2022").click(function() {
        loadData(2022);
    });

    $("#year2023").click(function() {
        loadData(2023);
    });

    function loadData(selectedYear) {
        $.getJSON("<c:url value='/sales/deptSalesChart.do' />").done(function(resp) {
            labels = [];
            datasets = [];

            $(resp).each(function(idx, deptChart) {
                var year = deptChart.salesYear;
                var deptNm = deptChart.deptNm;
                var quarter = deptChart.quarter;
                var salesAmount = deptChart.totalSalesAmount;
                var label = deptNm;

                if (year === selectedYear.toString()) {
                    var datasetIndex = quarter - 1; // 1분기는 인덱스 0, 2분기는 인덱스 1, ...

                    if (!datasets[datasetIndex]) {
                        datasets[datasetIndex] = {
                            label: quarter + "분기",
                            data: [],
                            backgroundColor: getRandomColor(),
                            borderColor: getRandomColor(),
                            borderWidth: 1
                        };
                    }
                    datasets[datasetIndex].data.push(salesAmount);

                    if (!labels.includes(label)) {
                        labels.push(label);
                    }
                }
            });

            myChart.data.labels = labels;
            myChart.data.datasets = datasets;
            myChart.update();
        });
    }

    function getRandomColor() {
        var letters = '0123456789ABCDEF';
        var color = '#';
        for (var i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }
});
  </script>


<script>
<%--부서별 환자수 막대 그래프 chart.js --%>

$(document).ready(function() {
    var labels = [];
    var datasets = [];

    var ctx = document.getElementById('customerChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels,
            datasets: datasets
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    title: {
                        display: true,
                        text: "내원환자수(단위:명)"
                    },
                    ticks: {
                        stepSize: 1000
                    }
                }
            }
        }
    });
 // 기본으로 2023 버튼 클릭
    loadData(2023);

    $("#customer2022").click(function() {
        loadData(2022);
    });

    $("#customer2023").click(function() {
        loadData(2023);
    });

    function loadData(selectedYear) {
        $.getJSON("<c:url value='/sales/deptSalesChart.do' />").done(function(resp) {
            labels = [];
            datasets = [];

            $(resp).each(function(idx, deptChart) {
                var year = deptChart.salesYear;
                var deptNm = deptChart.deptNm;
                var quarter = deptChart.quarter;
                var clinic = deptChart.clinicCustomer;
                var hospital = deptChart.hospitalCustomer;
                var label = deptNm;

                if (year === selectedYear.toString()) {
                    var datasetIndex = quarter - 1; // 1분기는 인덱스 0, 2분기는 인덱스 1, ...

                    if (!datasets[datasetIndex]) {
                        datasets[datasetIndex] = {
                            label: quarter + "분기",
                            data: [],
                            backgroundColor: getRandomColor(),
                            borderColor: getRandomColor(),
                            borderWidth: 1
                        };
                    }
                    datasets[datasetIndex].data.push(clinic);

                    if (!labels.includes(label)) {
                        labels.push(label);
                    }
                }
            });

            myChart.data.labels = labels;
            myChart.data.datasets = datasets;
            myChart.update();
        });
    }

    function getRandomColor() {
        var letters = '0123456789ABCDEF';
        var color = '#';
        for (var i = 0; i < 6; i++) {
            color += letters[Math.floor(Math.random() * 16)];
        }
        return color;
    }
});
  </script>

<%--직군별 직원수 --%>
<script>
$(document).ready(function() {
	        $.getJSON("<c:url value='/sales/jobEmpChart.do' />").done(function(resp) {
	            var labels = [];
	            var data= [];
	            var backgroundColors = ['#FF6384', '#36A2EB', '#FFCE56']; // 각 섹션의 색상


	            $(resp).each(function(idx, jobChart) {
	            	  var type = jobChart.empType;
	                  var empCount = jobChart.jobEmpCount;
	                  
	                  data.push(empCount);
	                  labels.push(type);
	                  
	                  

	                  var staff = resp[2];
	                  var doctor = resp[1];
	                  var nurse= resp[0];
	                  var currentStaffCount = staff.jobEmpCount;
	                  var currentDoctorCount = doctor.jobEmpCount;
	                  var currentNurseCount = nurse.jobEmpCount;

	                  // 가져온 직군별 직원수 값을 <div> 영역에 넣기
	                  $("#eightEmpCount").text(currentStaffCount);
	                  $("#currentDoctorCount").text(currentDoctorCount);
	                  $("#currentNurseCount").text(currentNurseCount);
	                  
	            });
	
	
	
    var ctx = document.getElementById('donutChart4').getContext('2d');
    
    // 데이터 예시 (각 직군별 직원 수)
    var donutData = {
        labels: labels,
        datasets: [{
            data: data, // 각 직군의 직원 수
            backgroundColors,
            hoverBackgroundColor: backgroundColors
        }]
    };

    var options = {
            cutoutPercentage: 70,
            responsive: true,
            maintainAspectRatio: false,
            legend: {
                display: true,
                position: 'bottom'
            }
    
    };


        var myDonutChart = new Chart(ctx, {
            type: 'doughnut',
            data: donutData,
            options: options
        });
    });
});

</script>
        
 <!--직군별 직원 현황 구글 차트 -->
<script>
google.charts.load('current', {'packages':['corechart']});

// Set a callback to run when the Google Visualization API is loaded.
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    // Fetch your data (resp) using AJAX or any other method
    $.getJSON("<c:url value='/sales/jobEmpChart.do' />").done(function(resp) {
    	
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Department');
        data.addColumn('number', 'Employee Count');

        $(resp).each(function(idx, jobChart) {
            var type = jobChart.empType;
            var empCount = jobChart.jobEmpCount;
            data.addRow([type, empCount]);
        });

        var options = {
            width: 700,
            height : 500
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutChart'));
        chart.draw(data, options);
    });
}
</script>


<!--부서별 직원수  -->
<script>
$(document).ready(function() {
	        $.getJSON("<c:url value='/sales/deptEmpChart.do' />").done(function(resp) {
	            var labels = [];
	            var data= [];
	            var backgroundColors = ['#FF6384', '#36A2EB', '#FFCE56', '#4CAF50', '#E91E63', '#2196F3']; // 다양한 색상 추가


	            $(resp).each(function(idx, jobChart) {
	            	  var dept = jobChart.deptNm;
	                  var empCount = jobChart.empCount;
	                  
	                  data.push(empCount);
	                  labels.push(dept);
	            });
	
	
	
    var ctx = document.getElementById('donutChart2').getContext('2d');
    
    // 데이터 예시 (각 부서별 직원 수)
    var donutData = {
        labels: labels,
        datasets: [{
            data: data, // 각 부서별 직원 수
            backgroundColors,
            hoverBackgroundColor: backgroundColors
        }]
    };

    var options = {
            cutoutPercentage: 70,
            responsive: true,
            maintainAspectRatio: false,
            legend: {
                display: true,
                position: 'bottom'
            }
    };


        var myDonutChart = new Chart(ctx, {
            type: 'doughnut',
            data: donutData,
            options: options
        });
    });
});

</script>




<!-- 연도별, 월별 내원환자수, 입원환자수 -->

<script>
function getRandomNumber(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

    $.getJSON("<c:url value='/sales/countMonth2.do' />").done(function(resp) {
      console.log("월환자수",resp);
    	var currentDate = new Date();
        var currentYear = currentDate.getFullYear().toString();
		var currentMonthNumber = currentDate.getMonth() + 1; // 현재 월의 숫자 (9월의 경우 9로 변환)
		var currentMonth = currentMonthNumber.toString(); // 문자열로 변환
     
        
        $(resp).each(function(idx, monthChart) {
            var year = monthChart.year;
            var month = monthChart.month;
            var monthCount = monthChart.monthCount;

            if (year === currentYear &&  month === currentMonth) {
        	   var thisMonthCount = monthChart.monthCount;
        	  
               // 가져온 monthCount 값을 <div> 영역에 넣기
               $("#thisMonthClinicCount").text(thisMonthCount);
           }
       });
    });  
     

$(document).ready(function() {
    $.getJSON("<c:url value='/sales/countMonth.do' />").done(function(resp) {
        var years = {}; // 연도별로 월 데이터 그룹화
        var datasets = [];

        $(resp).each(function(idx, monthChart) {
            var year = monthChart.year;
            var month = monthChart.month;
           /*  var monthCount = monthChart.monthCount+ getRandomNumber(1000, 2000); */
           var monthCount = monthChart.monthCount;
            
            var monthChart = resp[7]; // 8번째 인덱스의 데이터 가져오기
            var thisMonthCount = monthChart.monthCount;
          
            if (!years[year]) {
                years[year] = {};
                years[year].data = [];
            }
            years[year].data.push(monthCount);
        });

        if (years["2022"] && years["2023"]) {
            datasets.push({
                label: "2022년",
                data: years["2022"].data,
                borderColor: 'rgb(75, 192, 192)',
                fill: false
            });
            datasets.push({
                label: "2023년",
                data: years["2023"].data,
                borderColor: 'rgb(255, 99, 132)', // 다른 색상을 지정하세요
                fill: false
            });
        }

        var ctx = document.getElementById('monthCountChart').getContext('2d');
        var lineChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                datasets: datasets
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scales: {
                    y: {
                        beginAtZero: true,
                        title: {
                            display: true,
                            text: "환자수(단위:명)"
                        } 
                    }
                }
            }
        });
        
    });
});


</script>

<script>

$(document).ready(function() {
	
	var currentDate = new Date();
    var year = currentDate.getFullYear().toString();
    var month = (currentDate.getMonth() + 1).toString().padStart(2, '0'); // 0부터 시작하므로 1을 더하고 2자리로 패딩

    // URL에 파라미터를 추가하여 요청 보내기
    
    $.getJSON("<c:url value='/sales/totalHospital.do' />",{year:year, month:month}).done(function(resp) {
        	console.log(resp);
            var amount = resp;
            var totalCount = parseInt(amount).toLocaleString();
            console.log(totalCount);
            // 가져온 monthCount 값을 <div> 영역에 넣기
            $("#thisHospitalCount").text(totalCount);
    });
});

</script>

<script>

/*현재연도 이번달 매출액 통계 */
$(document).ready(function() {
	
    	var currentDate = new Date();
        var currentYear = currentDate.getFullYear().toString();
        var currentMonth = (currentDate.getMonth() + 1).toString().padStart(2, '0'); // 0부터 시작하므로 1을 더하고 2자리로 패딩
        
    $.getJSON("<c:url value='/sales/salesMonthChart2.do' />").done(function(resp) {

        $(resp).each(function(idx, monthAmount) {
        	var year =monthAmount.year;
        	var month =monthAmount.month;
        	
         
        	 if (year === currentYear &&  month === currentMonth) {
                 var amount = monthAmount.totalAmount;
                 
              // 쉼표를 포함한 형태로 숫자 변환
                 var formattedAmount = parseInt(amount).toLocaleString();
                 console.log(formattedAmount);
                 // 가져온 amount 값을 <div> 영역에 넣기
                 $("#eightMonthGrowth").text(formattedAmount);
                 
             }
         });
         
     });
 });
</script>
        
        
        
 <!--부서별 직원 현황 구글 차트 -->
<script>
google.charts.load('current', {'packages':['corechart']});

// Google Visualization API
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
   
    $.getJSON("<c:url value='/sales/deptEmpChart.do' />").done(function(resp) {
    	
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Department');
        data.addColumn('number', 'Employee Count');

        $(resp).each(function(idx, jobChart) {
            var dept = jobChart.deptNm;
            var empCount = jobChart.empCount;
            data.addRow([dept, empCount]);
        });

        var options = {
            width: 700,
            height : 500
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutChart2'));
        chart.draw(data, options);
    });
}
</script>




<script>
//거주지별 환자 분포, 구글맵 지도 
  google.charts.load('current', {
    'packages': ['geochart'],
    'mapsApiKey': 'AIzaSyAcxlU_ITeOcwPadyeV6QxmUkZbxqPNrqQ'
  });
  google.charts.setOnLoadCallback(drawRegionsMap);

  function drawRegionsMap() {
    $.getJSON("<c:url value='/sales/localCount.do' />").done(function(resp) {
      // 데이터 그룹화를 위한 객체 생성
      var dataGroups = {};

      // 데이터 그룹화 및 합계 계산
      $(resp).each(function(idx, localData) {
        var local = localData.local;
        var localCount = parseInt(localData.localCount);

        if (dataGroups[local]) {
          dataGroups[local] += localCount;
        } else {
          dataGroups[local] = localCount;
        }
      });

      var data = new google.visualization.DataTable();
      data.addColumn('string', 'City'); //지역
      data.addColumn('number', 'Patient'); //지역별 환자수

      // 데이터 그룹화 결과를 DataTable에 추가
      for (var local in dataGroups) {
        data.addRow([local, dataGroups[local]]);
      }
      var options = { 
    	        title: '거주지별 환자 현황',
    	        region: 'KR', // 한국 지역으로 표시 영역 설정
    	        displayMode: 'regions',
    	        resolution: 'provinces', // 지역별 표시
    	        height: 300 
    	      };

      var chart = new google.visualization.GeoChart(document.getElementById('city'));

      chart.draw(data, options);
    });
  }
  </script>
  <!--등록환자 수  -->
  <script>
  function patientTotalCount() {
    return new Promise(function(resolve, reject) {
      $.getJSON("<c:url value='/sales/totalPatnt.do' />")
        .done(function(resp) {
          var patientCount = resp;
          console.log(patientCount);
          resolve(patientCount);
        })
        .fail(function(error) {
          reject(error);
        });
    });
  }

  // 함수 호출 및 로직 실행
  patientTotalCount().then(function(patientCount) {
    // 가져온 값을 <div> 영역에 넣기
    $("#patientCount").text(patientCount);
  });
</script>
<!-- 거주지별 환자 분포현황(text용) -->
<script>
  function patientLocalCount() {
    return new Promise(function(resolve, reject) {
      $.getJSON("<c:url value='/sales/localCount.do' />")
        .done(function(resp) {
          resolve(resp);
        })
        .fail(function(error) {
          reject(error);
        });
    });
  }

  // 함수 호출 및 로직 실행
  patientLocalCount().then(function(patientLocalData) {
    var data = patientLocalData;
    
    var resultText = "";
    
    for (var i = 0; i < data.length; i++) {
      var local = data[i].local;
      var localCount = data[i].localCount;
      resultText += local + ": " + localCount + "명";
      
      if (i !== data.length - 1) {
        resultText += ", ";
      }
    }
    
    $("#localPatient").text(resultText);
  });
</script>

                      
<script>
  // 버튼 클릭 시 이벤트 처리
  document.getElementById("goToDivButton1").addEventListener("click", function() {
    // 대상 <div>의 위치로 스크롤 이동
    document.getElementById("target1").scrollIntoView({ behavior: "smooth" });
  });
  
  document.getElementById("goToDivButton2").addEventListener("click", function() {
	    // 대상 <div>의 위치로 스크롤 이동
	    document.getElementById("target2").scrollIntoView({ behavior: "smooth" });
	  });
  
  document.getElementById("goToDivButton3").addEventListener("click", function() {
	    // 대상 <div>의 위치로 스크롤 이동
	    document.getElementById("target3").scrollIntoView({ behavior: "smooth" });
	  });
  
  document.getElementById("goToDivButton4").addEventListener("click", function() {
	    // 대상 <div>의 위치로 스크롤 이동
	    document.getElementById("target4").scrollIntoView({ behavior: "smooth" });
	  });
  
  document.getElementById("goToDivButton5").addEventListener("click", function() {
	    // 대상 <div>의 위치로 스크롤 이동
	    document.getElementById("target5").scrollIntoView({ behavior: "smooth" });
	  });
  document.getElementById("scrollToTopButton").addEventListener("click", function() {
	    // 대상 <div>의 위치로 스크롤 이동
	    document.getElementById("top").scrollIntoView({ behavior: "smooth" });
	  });
</script>


             