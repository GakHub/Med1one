<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset='utf-8' />
<script src='../dist/index.global.js'></script>
<script
	src='<%=request.getContextPath()%>/resources/fullcalendar-6.1.8/dist/index.global.js'></script>
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<script>

	

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendarDay');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridDay',
      locale : 'ko', // 한국어 설정
      headerToolbar: {
          start : "",
          center : "",
          end : ''
            },
      editable: true,
      selectable: false,
      droppable : true,
      displayEventTime:false,
      contentHeight:"auto",
      eventSources : [

	    	 "<c:url value='reserList.do'/>",
    	  {
    	      events: [ // put the array in the `events` property
    	        {
    	          title  : '10:00 오혜민 환자 회진',
    	          start  : '2023-08-28'
    	        },
    	        {
    	          title  : '11:00 정지현 환자 회진',
    	          start  : '2023-08-29'
    	        },
    	        {
    	          title  : '12:30 정솔 환자 회진',
    	          start  : '2023-08-30'
    	        },
    	        {
    	          title  : '10:00 오혜민 환자 회진',
    	          start  : '2023-09-11'
    	        },
    	        {
    	          title  : '11:00 오혜민 환자 회진',
    	          start  : '2023-09-11'
    	        },
    	        {
    	          title  : '12:30 정솔 환자 회진',
    	          start  : '2023-09-12'
    	        },
    	        {
    	          title  : '12:00 정지현 환자 회진',
    	          start  : '2023-09-12',
    	        },
    	        {
    	          title  : '13:00 유송빈 환자 회진',
    	          start  : '2023-09-12',
    	        },
    	        {
    	          title  : '11:00 유송빈 환자 회진',
    	          start  : '2023-09-13',
    	        },
    	        {
    	          title  : '12:00 오혜민 환자 회진',
    	          start  : '2023-09-13',
    	        },
    	        {
    	          title  : '13:30 정솔 환자 회진',
    	          start  : '2023-09-13',
    	        },
    	        {
      	          title  : '14:00 장민우 환자 회진',
      	          start  : '2023-09-13',
      	        },
      	        {
      	          title  : '15:00 조원진 환자 회진',
      	          start  : '2023-09-13',
      	        },
      	        {
      	          title  : '13:00 정지현 환자 회진',
      	          start  : '2023-09-13',
      	        },
      	        {
    	          title  : '10:00 황소희 환자 회진',
    	          start  : '2023-09-14',
    	        },
    	        {
    	          title  : '11:00 유송빈 환자 회진',
    	          start  : '2023-09-14',
    	        },
    	        {
    	          title  : '13:00 오혜민 환자 회진',
    	          start  : '2023-09-14',
    	        }
    	      ],
    	      color: '#E6E6E6',     // an option!
    	      textColor: 'black' // an option!
    	    }
      ]
    });

    calendar.render();
  });
  
  
  document.addEventListener('DOMContentLoaded', function() {
	    var calendarEl = document.getElementById('calendarList');

	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      initialView: 'listWeek',
	      locale : 'ko', // 한국어 설정
	      headerToolbar: {
	          start : "",
	          center : "title",
	          end : 'prev next'
	            },
	      editable: true,
	      selectable: true,
	      droppable : true,
	      displayEventTime:false,
	      contentHeight:"auto",
	      
	      eventSources : [
		    	"<c:url value='reserList.do'/>",
	    	  {
	    	      events: [ // put the array in the `events` property
	    	    	  {
	        	          title  : '10:00 오혜민 환자 회진',
	        	          start  : '2023-08-28'
	        	        },
	        	        {
	        	          title  : '11:00 정지현 환자 회진',
	        	          start  : '2023-08-29'
	        	        },
	        	        {
	        	          title  : '12:30 정솔 환자 회진',
	        	          start  : '2023-08-30'
	        	        },
	        	        
	        	        {
	        	          title  : '10:00 오혜민 환자 회진',
	        	          start  : '2023-09-11'
	        	        },
	        	        {
	        	          title  : '11:00 오혜민 환자 회진',
	        	          start  : '2023-09-11'
	        	        },
	        	        {
	        	          title  : '12:30 정솔 환자 회진',
	        	          start  : '2023-09-12'
	        	        },
	        	        {
	        	          title  : '12:00 정지현 환자 회진',
	        	          start  : '2023-09-12',
	        	        },
	        	        {
	        	          title  : '13:00 유송빈 환자 회진',
	        	          start  : '2023-09-12',
	        	        },
	        	        {
	        	          title  : '11:00 유송빈 환자 회진',
	        	          start  : '2023-09-13',
	        	        },
	        	        {
	        	          title  : '12:00 오혜민 환자 회진',
	        	          start  : '2023-09-13',
	        	        },
	        	        {
	        	          title  : '13:30 정솔 환자 회진',
	        	          start  : '2023-09-15',
	        	        },
	        	        {
	          	          title  : '14:00 장민우 환자 회진',
	          	          start  : '2023-09-15',
	          	        },
	          	        {
	          	          title  : '15:00 조원진 환자 회진',
	          	          start  : '2023-09-15',
	          	        },
	          	        {
	          	          title  : '13:00 정지현 환자 회진',
	          	          start  : '2023-09-13',
	          	        },
	          	        {
	        	          title  : '10:00 황소희 환자 회진',
	        	          start  : '2023-09-14',
	        	        },
	        	        {
	        	          title  : '11:00 유송빈 환자 회진',
	        	          start  : '2023-09-14',
	        	        },
	        	        {
	        	          title  : '13:00 오혜민 환자 회진',
	        	          start  : '2023-09-14',
	        	        }
	    	      ],
	    	      color: '#A4A4A4',     // an option!
	    	      textColor: 'black' // an option!
	    	    }

	      ]
	    });

	    calendar.render();
	  });
  
//시간 함수
$(document).ready(function(){
	function updateCurrentTime() {
	    const now = new Date();
	    const formattedTime = `\${now.getFullYear()}년 \${now.getMonth() + 1}월 \${now.getDate()}일 \${now.getHours()}:\${now.getMinutes()}:\${now.getSeconds()}`;
	    document.getElementById('currentTime').textContent = formattedTime;
	}

	// 최초 실행
	updateCurrentTime();

	// 1초마다 업데이트
	setInterval(updateCurrentTime, 1000);
	
});
</script>
<style>

  body {
/*     margin: 40px 10px; */
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }
   #calendarList {
    display: inline-block; /* 가로로 나열 */
    
  }
  #calendarDay {
    display: inline-block; /* 가로로 나열 */
  }



</style>

<body>
	<!--전체  -->
<!-- 	<div id="ihealth-layout" class="theme-tradewind "> -->
		<!-- main body area -->
		<div class="main px-lg-4 px-md-4">
			<!-- Body: Body -->
			<div class="body d-flex py-3">

				<div class="container-xxl" style="margin-left: -20px; margin-right: -20px;"> 
					<!-- 1행 3열 카드 시작 -->
					<div class="row g-3 mb-3" >
						<div class="col-md-4 col-lg-4"    
						 
						  
							style="width: 35%; margin-right: 2%; margin-top: 80px;" >
							<div style="height: 1200px;">
							
								<div class="card-body" style="flex-direction: column-reverse;">
									<div>
									<div style="text-align: center; font-size: 40px; font-weight: bold; color: #6aab9c; margin-top: -27px;">
			                            TODAY
			                        </div>
			                            <table style="margin-left: auto;">
										<i class="far fa-clock" style="float:right; margin-right:18px;">
										<span id="currentTime"></span>
										</i>
										</table>
			                        <div style="text-align: center; width: 200px; font-family: 'Poppins'; margin-top:26px; margin-left:-21px;">
									    <div style="display: inline-block; width: 20px; height: 20px; background-color: #FFD3E9; margin-left: 10px;"></div>
									    <span style="margin-left: 5px;">진료</span>
									    <div style="display: inline-block; width: 20px; height: 20px; background-color: #E6E6E6; margin-left: 10px;"></div>
									    <span style="margin-left: 5px;">회진</span>
									</div>
										<div class="card-body" id="calendarDay" style="width: 500px; font-size: 18px; text-align: center ">
											
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-md-4 col-lg-4"
							style="width: 58%; margin-right: 1%;">
							<div style="height: 1200px;">
							
								<div  style="flex-direction: column-reverse;">
									<div>
										<div class="card-body" id="calendarList" style="width: 1050px; margin-left:-40px;">
										</div>
									</div>
								</div>
							</div>
	
						</div>
					</div>
					
				</div>
			</div>
		</div>
<!-- 	</div> -->
	
</body>


