<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<style>
/* 트리 레이아웃과 테이블에 대한 CSS 스타일 */
.tree {padding-top: 50px;}

.top-color {
  border-top: 3px solid #6aab9c; 
}
.tree ul {
    padding-top: 50px; position: relative;
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}

.tree li {
	float: left; text-align: center;
	list-style-type: none;
	position: relative;
	padding: 50px 5px 0 5px;
	
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}

/*We will use ::before and ::after to draw the connectors*/

.tree li::before, .tree li::after{
	content: '';
	position: absolute; top: 0; right: 50%;
	border-top: 1px solid #ccc;
	width: 50%; height: 50px;
}
.tree li::after{
	right: auto; left: 50%;
	border-left: 1px solid #ccc;
}

/*We need to remove left-right connectors from elements without 
any siblings*/
.tree li:only-child::after, .tree li:only-child::before {
	display: none;
}

/*Remove space from the top of single children*/
.tree li:only-child{ padding-top: 0;}

/*Remove left connector from first child and 
right connector from last child*/
.tree li:first-child::before, .tree li:last-child::after{
	border: 0 none;
}
/*Adding back the vertical connector to the last nodes*/
.tree li:last-child::before{
	border-right: 1px solid #ccc;
	border-radius: 0 5px 0 0;
	-webkit-border-radius: 0 5px 0 0;
	-moz-border-radius: 0 5px 0 0;
}
.tree li:first-child::after{
	border-radius: 5px 0 0 0;
	-webkit-border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
}

/*Time to add downward connectors from parents*/
.tree ul ul::before{
	content: '';
	position: absolute; top: 0; left: 50%;
	border-left: 1px solid #ccc;
	width: 0; height: 50px;
}

.tree li a{
	border: 1px solid #ccc;
	padding: 18px 13px;
	text-decoration: none;
	color: #666;
	font-family: arial, verdana, tahoma;
	font-size: 14px;
	font-weight: bold;
	display: inline-block;
  	background-color : #D8E4EF;  
	
	border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}

/*Time for some hover effects*/
/*We will apply the hover effect the the lineage of the element also*/
.tree li a:hover, .tree li a:hover+ul li a {
	background: #77b5a2; color: #000; border: 1px solid #94a0b4; 
}
/*Connector styles on hover*/
.tree li a:hover+ul li::after, 
.tree li a:hover+ul li::before, 
.tree li a:hover+ul::before, 
.tree li a:hover+ul ul::before{
	border-color:  #94a0b4;
}
 
#employeeTableContainer {
  margin-top: 100px;
}

/* table { */
/*   width: 400px; /* 원하는 너비로 테이블 크기를 고정합니다. */ */
/*   border-collapse: collapse; */
/*   border: 1px solid #ccc; */
/*   padding-right: 50px; */
/* } */

/* th { */
/*   padding: 10px; */
/*   border: 1px solid #ccc; */
/*   text-align: center; */
/*   background-color: #6aab9c; */
/* } */

/* td { */
/*   padding: 10px; */
/*   border: 1px solid #ccc; */
/*   text-align: center; */
/* } */
tr:nth-child(even) {
  background-color: #dcdcdc; 
}
.row>* {
    flex-shrink: 0;
    width: 47%;
    max-width: 100%;
    max-height: 100%;
    padding-right: calc(var(- -bs-gutter-x)/2);
    padding-left: calc(var(- -bs-gutter-x)/2);
    margin-top: var(- -bs-gutter-y);
}

#imageArea {
    position: relative;
}

#subImageArea {
    position: absolute;
    top: 0; /* 원하는 위치로 조정 */
    left: 0; /* 원하는 위치로 조정 */
    z-index: 1; /* 이미지 위에 표시되도록 설정 */
}
#overflow {
    width: 840px; 
    height: 400px;
/*     background-color:skyblue; */
    overflow-y: scroll;
}
#overflow::-webkit-scrollbar {
    display: none; /* 크롬, 사파리, 오페라, 엣지 */
}
</style>

<!-- 	<div id="employeeTableContainer"> -->
	
<!-- 	</div> -->
<!-- </div> -->

<body>
	<!--전체  -->
	<!-- <div id="ihealth-layout" class="theme-tradewind">  -->
	<!-- main body area -->
	<!-- <div class="main px-lg-4 px-md-4" > -->
	<!-- Body: Body -->
	<div class="body d-flex py-3">

		<div class="container-xxl">
			<div class="row g-3 mb-3"
				style="height: 92vh; margin-left: -120px; margin-right: -170px; margin-top:-20px;">


				<div class="col-md-4 col-lg-4" style="width: 50%; height: 95%; ">
					<div class="card top-color" style="height: 103%; margin-right: 2%; ">
					<h3 id="deptTitle" class="mb-0 fw-bold" style="color: #6aab9c; margin: 15px;">MED1ONE 조직도</h3>
						<img src="${pageContext.request.contextPath}/resources/images/logomark.png" style="margin-top: 350px; margin-left: 15%; width: 600px; height: 112px; display: flex; justify-content: center; opacity: 0.18;">
						<div style="position: absolute; top: 0; right:90px; ">
							<div class="tree">
							    <ul>
							        <li>
							            <a href="#" style="width:155px; background-color: #2E76BF; color: white">병원장</a>
							            <ul>
							                <li>
							                    <a href="#" style="width:120px; background-color: #7AB0E5; color: white">행정부</a>
							                    <ul>
							                        <li>
							                            <a href="#" data-code='AD'>원무과</a><br><br>
							                            <a href="#" data-code='GA'>총무과</a>
							                        </li>
							                    </ul>
							                </li>
							                <li>
							                    <a href="#" style="width:120px; background-color: #7AB0E5; color: white"">간호부</a>
							                    <ul>
							                        <li>
							                        	<a href="#" data-code='NR'>일반간호과</a><br><br>
							                            <a href="#" data-code='NS'>병동과</a><br><br>
							                            <a href="#" data-code='NC'>특수 간호과</a>
							                       </li>
							                    </ul>
							                </li>
							                <li>
							                    <a href="#" style="width:120px; background-color: #7AB0E5; color: white"">의료기사</a>
							                    <ul>
							                        <li>
							                            <a href="#" data-code='CP'>임상병리과</a><br><br>
							                            <a href="#" data-code='RD'>방사선과</a>
							                        </li>
							                    </ul>
							                </li>
							                <li>
							                    <a href="#" style="width:120px; background-color: #7AB0E5; color: white"">진료부</a>
							                    <ul>
							                        <li>
							                            <a href="#" data-code='PM'>호흡기내과</a><br><br>
							                            <a href="#" data-code='GI'>소화기내과</a><br><br>
							                            <a href="#" data-code='DR'>영상의학과</a><br><br>
							                            <a href="#" data-code='HT'>심장내과</a><br><br>
							                            <a href="#" data-code='IF'>감염내과</a><br><br>
							                            <a href="#" data-code='ME'>내분비내과</a>
							                        </li>
							                    </ul>
							                </li>
							                <li>
							                    <a href="#" style="width:120px; background-color: #7AB0E5; color: white""  data-code='TC'>종합검진센터</a>
							                </li>
							            </ul>
							        </li>
							    </ul>
							</div>
						</div>
					</div>
				</div>



				<div class="col-md-8 col-lg-8"
					style="display: flex; flex-direction: column;">

					<div class="row g-3 mb-3" style="flex: 1; display: flex;">
						<div class="col-md-4 col-lg-4"
							style="width: 50%; height: 340px; margin-right: 1%; flex-grow: 1;">
							<div class="card h-100 top-color" ><br><br>
								<div id="overflow" style=" height: 285px;">
									<table class="table table-striped" style="text-align:center">
										<thead>
											<tr>
												<th style="width:230px;">부서명</th>
												<th style="width:250px;">직원 이름</th>
												<th style="width:230px;">비상연락망</th>
											</tr>
										</thead>
										<tbody id="employeeTableContainer">
										
										</tbody>
									</table>
								</div>
							</div>
						</div>

					</div>
					

					<div class="row g-3 mb-3" style="height: 100%;">
						<div class="col-md-4 col-lg-4"
							style="width: 50%; height: 100%; margin-right: 1%; flex-grow: 1;">
							<div class="card h-100 top-color" style="font-size: 90px;">
								<div style="position:relative; " id="imageArea">
									<div id="subImageArea" style="position:absolute;  top:300px; left:300px; margin-top:10px; margin-left:5px">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
			</div>
			<!-- 1행 3열 카드 종료 -->
		</div>
	</div>

</body>
<script>
$(document).ready(function() {
    // a 태그 클릭 시 이벤트 처리
    $('a').on('click', function(event) {
        var deptCode = $(this).data('code'); // 부서명 추출
        $.ajax({
            url: 'treeDept.do',
            type: 'GET',
            data: { code: deptCode },
            dataType: 'json',
            success: function(data) {
                // 성공 시 테이블을 생성하여 표시
                var employeeTable = '';
                data.forEach(function(employee) {
                    employeeTable += '<tr>';
                    employeeTable += '<td>' + employee.dept.deptNm + '</td>';
                    employeeTable += '<td>' + employee.empNm + '</td>';
                    employeeTable += '<td>' + employee.empTelno + '</td>';
                    employeeTable += '</tr>';
                });
                $('#employeeTableContainer').html(employeeTable);
                
                var roomTemplate = '<img class="room-image" style="width: 860px; height: 510px;" src="<%=request.getContextPath()%>/resources/images/Room/{imageName}" />';
                
                var room;
                
                if(deptCode=='AD'){
                	room = roomTemplate.replace('{imageName}', 'administrationRoom.jpg');
                } else if(deptCode=='GA'){
                	room = roomTemplate.replace('{imageName}', 'general_affairs_section_Room.jpg');
                } else if(deptCode=='NR'){
                	room = roomTemplate.replace('{imageName}', 'nurse_Room.jpg');
                } else if(deptCode=='NS'){
                	room = roomTemplate.replace('{imageName}', 'hospital_Room.jpg');
                } else if(deptCode=='NC'){
                	room = roomTemplate.replace('{imageName}', 'examinate_Room.jpg');
                } else if(deptCode=='CP'){
                	room = roomTemplate.replace('{imageName}', 'clinical_pathology_department_Room.jpg');
                } else if(deptCode=='RD'){
                	room = roomTemplate.replace('{imageName}', 'covid_Room.jpg');
                } else if(deptCode=='PM'){
                	room = roomTemplate.replace('{imageName}', 'division_of_pulmonology_Room.jpg');
                } else if(deptCode=='GI'){
                	room = roomTemplate.replace('{imageName}', 'gastroenterology_Room.jpg');
                } else if(deptCode=='DR'){
                	room = roomTemplate.replace('{imageName}', 'radiologyRoom.jpg');
                } else if(deptCode=='HT'){
                	room = roomTemplate.replace('{imageName}', 'gastroenterology_Room.jpg');
                } else if(deptCode=='IF'){
                	room = roomTemplate.replace('{imageName}', 'heart_Room.jpg');
                } else if(deptCode=='ME'){
                	room = roomTemplate.replace('{imageName}', 'department_of_radiology_Room.jpg');
                } else if(deptCode=='TC'){
                	room = roomTemplate.replace('{imageName}', 'examinate2_Room.jpg');
                }
                $("#imageArea").html(room);
                
                var subroomTemplate = '<img class="sub-room-image" style="width:100px; height:100px" src="<%=request.getContextPath()%>/resources/images/Room/{imageName}" />';
                var subRoom;
                if(deptCode=='AD'){
                	subRoom = subroomTemplate.replace('{imageName}', 'room4.jpg');
                }
                
               
                $("#subImageArea").html(subRoom);
            },
            error: function(xhr, status, error) {
//                 alert('직원 리스트를 가져오는데 실패했습니다.');
            }
        });
    });
//     let ball = $("#ball");
    
//     ball.onmousedown = function(event) {
//     	  // (1) absolute 속성과 zIndex 프로퍼티를 수정해 공이 제일 위에서 움직이기 위한 준비를 합니다.
//     	  ball.style.position = 'absolute';
//     	  ball.style.zIndex = 1000;

//     	  // 현재 위치한 부모에서 body로 직접 이동하여
//     	  // body를 기준으로 위치를 지정합니다.
//     	  document.body.append(ball);

//     	  // 공을 pageX, pageY 좌표 중앙에 위치하게 합니다.
//     	  function moveAt(pageX, pageY) {
//     	    ball.style.left = pageX - ball.offsetWidth / 2 + 'px';
//     	    ball.style.top = pageY - ball.offsetHeight / 2 + 'px';
//     	  }

//     	  // 포인터 아래로 공을 이동시킵니다.
//     	  moveAt(event.pageX, event.pageY);

//     	  function onMouseMove(event) {
//     	    moveAt(event.pageX, event.pageY);
//     	  }

//     	  // (2) mousemove로 공을 움직입니다.
//     	  document.addEventListener('mousemove', onMouseMove);

//     	  // (3) 공을 드롭하고, 불필요한 핸들러를 제거합니다.
//     	  ball.onmouseup = function() {
//     	    document.removeEventListener('mousemove', onMouseMove);
//     	    ball.onmouseup = null;
//     	  };

//     	};
    	
//     	ball.ondragstart = function() {
//     		  return false;
//     		};
});


</script>


