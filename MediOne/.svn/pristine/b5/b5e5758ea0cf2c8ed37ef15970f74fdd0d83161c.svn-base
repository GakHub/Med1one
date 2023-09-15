<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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

.content {
	margin-left: 500px;
}

.active {
	color: #008C8C;
}

.nav-tabs {
	color: black;
}

#overflow::-webkit-scrollbar {
	display: none; /* 크롬, 사파리, 오페라, 엣지 */
}

/* .about .content h5 { */
/*   font-weight: 700; */
/*   font-size: 18px; */
/*   color: #173b6c; */
/*   list-style: none; */
/*   padding: 0; */
/*   margin-bottom: 20px; */
/*   display: flex; */
/*   align-items: center; */
/*   margin-right: 10px; */
/*   font-size: 16px; */
/*   margin-right: 5px; */
/*   color: #149ddd; */
/*   line-height: 0; */
/*   } */
  
/*   .card-header .bi-chevron-right { */
/*   font-size: 20px; /* 원하는 글씨 크기로 변경 */ */
/*   color: #149ddd; /* 원하는 글씨 색상으로 변경 */ */
/* } */
  
</style>



<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-264428387-1"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-264428387-1');
</script>

<!-- 컨테이너  -->
<div class="container-xxl">
	<div class="row g-3 mb-3" style="height: 90vh; margin-left: -100px; margin-right: -400px">
		<!-- 병동관리 -->
		<div class="col-md-4 col-lg-4"
			style="width: 35%; height: 100%; margin-right: 1%;">
			<div class="card mb-3 top-color" style="height: 98%;">

				<div
					class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
					<h5 class="bi bi-chevron-right" style="font-weight: 700; font-size: 18px; color: #173b6c; margin-top: 10px;">병동 조회</h5>
					<select id="wardSelect" class="form-select mb-0"
						style="width: fit-content; margin-left: 10px;">
						<option value="4room" id="4room"></option>
						<option value="6room" id="6room"></option>
						<option value="8room" id="8room"></option>
					</select>
				</div>
				<div class="card-body" id="wardList">
					<div class="room_book">
						<img src="${pageContext.request.contextPath}/resources/images/logomark.png" style="margin-top: 340px; margin-left: 8%; width: 600px; height: 112px; display: flex; justify-content: center; opacity: 0.2;">
						<div id="wardRoom" class="row row-cols-2 row-cols-sm-4 row-cols-md-6 row-cols-lg-6 g-3" style="position: absolute; top: 100px;">
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 병동관리 끝 -->

		<!-- 나머지 카드들 (2행부터) -->
		<div class="col-md-8 col-lg-8" style="display: flex; flex-direction: column; width: 50%;">
			<!-- 2행 1열 카드 시작 -->
			<div class="row g-3 mb-3" style="height: 50%; margin-bottom: 0;">
				<div class="col-md-4 col-lg-4"
					style="width: 30%; height: 97%; margin-right: 1%; flex-grow: 1;">
					<div class="card  top-color h-100">

						<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
							<h5 class="bi bi-chevron-right" style="font-weight: 700; font-size: 18px; color: #173b6c; margin-top: 10px;">입원환자</h5>
							 <a id="patntCount" style="margin-left: 62%; margin-top: 10px;"></a>
							 <div id="searchUI" class="d-flex justify-content-center align-items-center">
										<div class="input-group mb-3" style="width: 180px; margin-left:5%;">
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
											</span> <input type="search" class="form-control" id="searchForm" aria-controls="myDataTable" aria-label="Input group example" aria-describedby="basic-addon1" />
										</div>
									</div>
						</div>
						<table style="margin-bottom: -27px;">
							<tr>
								<td>

										
									
								</td>

							</tr>
						</table>
						<div class="card-body">
							<div style="overflow: auto;  width: 1000px; height: 48px;">
								<table
									class="table table-hover align-middle mb-0 myProjectTable"
									style="height: 37px;">

									<thead>
										<tr>
											<th>환자 코드</th>
											<th>호실</th>
											<th>침상번호</th>
											<th>성명</th>
											<th>입원일자</th>
											<th>퇴원예정일자</th>
											<th>퇴원처리</th>
										</tr>
									</thead>
									</table>
								</div>
								
								<div id="overflow"
										style="height: 276px; width: 100%; overflow-y: scroll;">
										<table class="table table-hover align-middle mb-0">

									<tbody id="tbodyList">
									</tbody>

								</table>
							</div>
							<div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- 2행 1열 카드 종료 -->
			<!-- 2행 2열 카드 시작 -->
			<div class="row g-3 mb-3" style="height: 50%;">
				<div class="col-md-4 col-lg-4"
					style="width: 40%; margin-right: 1%; flex-grow: 1;">
					<div class="card h-100 top-color">
						<div
							class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
							<h5 class="bi bi-chevron-right" style="font-weight: 700; font-size: 18px; color: #173b6c; margin-top: 10px;">환자정보</h5>
						</div>


						<div class="card-body">
							<ul class="nav nav-tabs mb-3" id="Tab1" role="tablist">
							</ul>

							<div class="tab-content" id="myTabContent">
								<!-- 환자코드 -->
								<div class="tab-pane fade show active" id="tab1" role="tabpanel"
									aria-labelledby="tab1-tab">

									<table class="table table-hover align-middle mb-0"
										style="height: 100px;">
										<thead>
											<tr>
												<th data-orderable="true">환자 코드</th>
												<th data-orderable="true">성명</th>
												<th data-orderable="true">주민번호</th>
												<th data-orderable="true">전화번호</th>
												<th data-orderable="true">키</th>
												<th data-orderable="true">몸무게</th>
												<th data-orderable="true">성별</th>
												<th data-orderable="true">입원일자</th>
												<th data-orderable="true">퇴원예정일자</th>
											</tr>
										</thead>
										<tbody id="patientInfo">

										</tbody>
									</table>
								</div>
								<!-- 환자코드 end  -->

							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
		<!-- 2열 end -->
		<!-- 세로로 길게 배치된 card1 -->

	</div>
</div>
<!-- Body 끝 -->
<!-- Plugin Js-->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script>

function sortTable(ascending) {
    let tbody = $("#patientInfo");
    let rows = tbody.find("tr").toArray();

    rows.sort(function (a, b) {
        let aValue = $(a).find("td").eq(0).text(); // 예시: 첫 번째 열을 기준으로 정렬
        let bValue = $(b).find("td").eq(0).text();

        if (ascending) {
            return aValue.localeCompare(bValue);
        } else {
            return bValue.localeCompare(aValue);
        }
    });

    tbody.empty();
    $.each(rows, function (index, row) {
        tbody.append(row);
    });
}

// 검색어 입력 이벤트
let patntSearchForm = $("#searchForm").on("keyup", function(event) {
    let what = $(this).val();

    if (what.length === 0) {
        // 검색어가 없으면 전체 리스트 가져오기
        ingPatnt();
    } else {
        $.getJSON("<c:url value='/hospital/patntSearch.do' />", { what: what }).done(function(resp) {
            let tbody = $('#tbodyList');
            tbody.empty();

            if (resp.length > 0) {
                $(resp).each(function(index, list) {
                    let tr = $("<tr>").append(
                        $("<td>").html(list.patntCode),
                        $("<td>").html(list.sckbdRo),
                        $("<td>").html("bed" + list.sckbdNo),
                        $("<td>").addClass("patntNm").html(list.patnt.patntNm),
                        $("<td>").html(list.hsptlzIn),
                        $("<td>").html(list.hsptlzOut),
                        $("<td>").append(
                            $("<input>").addClass("btn btn-primary disHosBtn")
                            .attr("type", "button")
                            .attr("value", "퇴원")
                            .attr("name", "hsptlzOutDate")
                            .attr("data-hsptlzCode", list.hsptlzCode)
                            .attr("data-recCode", list.recCode)
                            .attr("data-sckbdRo", list.sckbdRo)
                            .attr("data-sckbdNo", list.sckbdNo)
                            .on("click", function() {
                                let hsptlzCode = $(this).attr("data-hsptlzCode");
                                let recCode = $(this).attr("data-recCode");
                                let sckbdRo = $(this).attr("data-sckbdRo");
                                let sckbdNo = $(this).attr("data-sckbdNo");

                                let patntNm = $(this).closest("tr").find(".patntNm").text();

                                Swal.fire({
                                    title: '퇴원 처리 하시겠습니까?',
                                    icon: 'warning',
                                    showCancelButton: true,
                                    confirmButtonColor: '#3085d6',
                                    cancelButtonColor: '#d33',
                                    confirmButtonText: '확인'
                                }).then((result) => {
                                    if (result.isConfirmed) {
                                        $.getJSON("<c:url value='/hospital/hospitalOut.do' />", {
                                            hsptlzCode: hsptlzCode,
                                            recCode: recCode,
                                            sckbdRo: sckbdRo,
                                            sckbdNo: sckbdNo
                                        }).done(function(resp) {

                                            Swal.fire({
                                                title: '퇴원이 완료되었습니다.',
                                                icon: 'success',
                                            });
                                            ingPatnt();

                                        });
                                    }
                                });
                            })
                        )
                    );
                    tbody.append(tr);
                });
            } else {
                tbody.append(
                    $("<tr>").html(
                        $("<td colspan='4'>").html("해당 환자가 존재하지 않습니다.")
                    )
                );
            }
        });
    }
});

//입원중인 환자 전체 출력
function ingPatnt(){
	$.getJSON("<c:url value='/hospital/ingPatntList.do'/>",{code:'011'}).done(function(resp){
		let tbody = $('#tbodyList');
		tbody.empty();
		
		let cnt=0;
		
		$(resp).each(function(index, list){
			let tr = $("<tr>").append(
					$("<td>").html(list.patntCode)
					,$("<td>").html(list.sckbdRo)
					,$("<td>").html("bed"+list.sckbdNo)
					,$("<td>").addClass("patntNm").html(list.patnt.patntNm)
					,$("<td>").html(list.hsptlzIn)
					,$("<td>").html(list.hsptlzOut)
					,$("<td>").append(
                            $("<input>").addClass("btn btn-primary disHosBtn")
                            .attr("type", "button")
                            .attr("value", "퇴원")
                            .attr("name", "hsptlzOutDate")
                            .attr("data-hsptlzCode", list.hsptlzCode) 
                            .attr("data-recCode", list.recCode)
                            .attr("data-sckbdRo", list.sckbdRo)
                            .attr("data-sckbdNo", list.sckbdNo)
                            .on("click", function () {
                            	 let hsptlzCode = $(this).attr("data-hsptlzCode");
                                 let recCode = $(this).attr("data-recCode");
                                 let sckbdRo = $(this).attr("data-sckbdRo");
                                 let sckbdNo = $(this).attr("data-sckbdNo");

                                 let patntNm = $(this).closest("tr").find(".patntNm").text();

                                 Swal.fire({
                                     title: '퇴원 처리 하시겠습니까?',
                                     icon: 'warning',
                                     showCancelButton: true,
                                     confirmButtonColor: '#3085d6',
                                     cancelButtonColor: '#d33',
                                     confirmButtonText: '확인'
                                 }).then((result) => {
                                     if (result.isConfirmed) {
                                         $.getJSON("<c:url value='/hospital/hospitalOut.do' />",
                                             { hsptlzCode: hsptlzCode, recCode: recCode, sckbdRo: sckbdRo, sckbdNo: sckbdNo }).done(function (resp) {
                                            	 
                                                 Swal.fire({
                                                     title: '퇴원이 완료되었습니다.',
                                                     icon: 'success',
                                                 });
                                                 ingPatnt();
                                                 
                                             });
                                     }
                                 });
                          })
			        )
				
			);
			cnt++;
			tbody.append(tr);
		});
		
		var iconRed = $('<i>').addClass('fas fa-circle fa-xs').css('color', '#EB4646');
		$("#patntCount").html(iconRed.prop('outerHTML') + "입원환자 " + cnt + "명");
	});
}






//병동 선택(4인실, 6인실, 8인실)
$(wardSelect).on("change", function(event){
	
	var wardSelect = $(this).val();
	
	loadWardList(wardSelect);
});

//전체 병동 병실 list

function loadWardList(wardSelect){
	var wardRoom = wardSelect;
	var wardSelect = wardSelect.charAt(0);
	
	$.getJSON("<c:url value='/hospital/hospitalSearch.do'/>",{wardSelect:wardSelect}).done(function(resp){
		let div=$("#wardRoom")
		div.empty();

		let dtlCnt = 0;
    	var divContainer = null;
    	
		$(resp).each(function(index,dtl){

			let divH = $("<div>").addClass("card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0").attr("id",dtl.sckbdRo).append(
						$("<button>").addClass("mb-0 fw-bold btn btn-outline-secondary").text(dtl.sckbdRo+"호").css("font-size", "14px")
						
					);
			let div1 = 	$("<div>").append(
							$("<div>").addClass("room col").attr("id",dtl.sckbdRo).append(
								$("<input>").attr("type","checkbox").attr("id","No"+dtlCnt).attr("name","No"+dtlCnt)
								,$("<label>").attr("for","No"+dtlCnt).append(
									$("<i>").addClass("icofont-patient-bed fs-2")
									,$("<span>").addClass("text-muted").text("bed"+dtl.sckbdNo).attr("value",dtl.sckbdNo)
								)
							)
					).attr("style","float:left;");
					
			if (dtl.availableYm != "Y") { //사용 중인 병실 표시
                div1.find("input:checkbox").attr("checked","checked");
            }
			
			
			
			
			if(dtlCnt%wardSelect == 0){
				divContainer = $("<div>").addClass("sward-container");
				divContainer.append(divH,div1);
				div.append(divContainer);
					
			} else{
				divContainer.append(div1);
			}
			 dtlCnt++;
		});
	});
};


$(document).ready(function(){
	$(document).on("click", "i.icofont-patient-bed", function(event) {
        event.preventDefault(); // 클릭 이벤트의 기본 동작 막음
    });
	$(document).on("click", ".text-muted",function(event){
    	event.preventDefault();
    });
	
	//입원중인 환자 전체 list
	ingPatnt();
	
	
	//4인실, 6인실, 8인실 select
	$(wardSelect).trigger('change');
	
	
});

$(document).ready(function() {
	$(document).on("click", "i.icofont-patient-bed", function(event) {
        event.preventDefault(); // 클릭 이벤트의 기본 동작 막음
    });
	$(document).on("click", ".text-muted",function(event){
    	event.preventDefault();
    });
	//호실 인원 카운트
	 $.getJSON("<c:url value='/hospital/selectSckbdCount.do' />").done(function(resp){
	    	let cnt4 = 0;
	    	let cnt6 = 0;
	    	let cnt8 = 0;
	    	$(resp).each(function(idx, result){
	    		let room = result.sckbdRo;
	    		let avail = result.availableYm;
	    		
	    		if (room.startsWith("4")) {
	    			cnt4++;
	            } else if (room.startsWith("6")) {
	            	cnt6++;
	            } else if (room.startsWith("8")) {
	            	cnt8++;
	            }
	    		
	    		
	    	});
	    	 
	    	$("#4room").text(cnt4.toString());
	    	$("#6room").text(cnt6.toString());
	    	$("#8room").text(cnt8.toString());
    		
	    	$("#4room").closest("option").html(`4인실 (\${cnt4}/40)`);
            $("#6room").closest("option").html(`6인실 (\${cnt6}/30)`);
            $("#8room").closest("option").html(`8인실 (\${cnt8}/40)`);
	    });
});

    
    
// 환자정보 가져오기     

$(document).ready(function() {
	$(document).on("click", "i.icofont-patient-bed", function(event) {
        event.preventDefault(); // 클릭 이벤트의 기본 동작 막음
    });
    $(document).on("click", ".text-muted",function(event){
    	event.preventDefault();
    });
	
	
	//침상+호실 클릭이벤트
	$(document).on("click", ".icofont-patient-bed", function(event) {
		let sckbdNo = $(this).siblings("span.text-muted").attr("value"); // 병상 번호 가져오기
	    let sckbdRo = $(this).closest(".sward-container").find(".card-header").attr("id"); // 병실 번호 가져오기
	    // getPatientInfo 함수 호출
	    getPatientInfo(sckbdRo,sckbdNo);
	    
		
	   // 환자 정보를 가져와서 표시하는 함수
	    function getPatientInfo(sckbdRo,sckbdNo) { 
	      $.getJSON("<c:url value='/hospital/hospitalPatntDetail.do' />",{sckbdNo:sckbdNo, sckbdRo:sckbdRo}).done(function(resp) {
	          let tbody = $("#patientInfo");
	          tbody.empty();
	          if (resp.length === 0) {
	        	  console.log("resp.length:",resp.length);
                  let tr = $("<tr>").append(
                      $("<td colspan='11'>").text("해당 병상의 환자 정보가 없습니다.")
                  );
                  tbody.append(tr);
              } else {
                  resp.forEach(function(patient, i) {
                	  console.log("병실클릭시 디테일:",i);
                	  let tr = $("<tr>").append(
                			    $("<td>").html(patient.patnt.patntCode),
                			    $("<td>").html(patient.patnt.patntNm),
                			    $("<td>").html(patient.patnt.patntIdentino),
                			    $("<td>").html(patient.patnt.patntTelno),
                			    $("<td>").html(patient.patnt.height),
                			    $("<td>").html(patient.patnt.weight),
                			    $("<td>").html(patient.patnt.gen),
                			    $("<td>").html(patient.hsptlzIn),
                			    $("<td>").html(patient.hsptlzOut),
                			);

                      tbody.append(tr);
                  });
              }
          });
  }
});
	//호실 클릭 이벤트
	 $(document).on("click", ".mb-0.fw-bold", function(event) {
		    let sckbdRo = $(this).parents(".sward-container").find(".card-header").attr("id"); // 병실 번호 가져오기
		    
		    // 환자 정보를 가져와서 표시하는 함수
		    sckbdRoSelect(sckbdRo);
		    
		    function sckbdRoSelect(sckbdRo){
		    	$.getJSON("<c:url value='/hospital/hospitalWardDetail.do' />",{sckbdRo:sckbdRo}).done(function(resp) {
			          let tbody = $("#patientInfo");
			          tbody.empty();
			          if (resp.length === 0) {
		                  let tr = $("<tr>").append(
		                      $("<td colspan='11'>").text("해당 병실의 환자 정보가 없습니다.")
		                  );
		                  tbody.append(tr);
		              } else {
		                  resp.forEach(function(patient, i) {
		                      let tr = $("<tr>").append(
		                          $("<td>").html(patient.patnt.patntCode),
		                          $("<td>").html(patient.patnt.patntNm),
		                          $("<td>").html(patient.patnt.patntIdentino),
		                          $("<td>").html(patient.patnt.patntTelno),
		                          $("<td>").html(patient.patnt.height),
		                          $("<td>").html(patient.patnt.weight),
		                          $("<td>").html(patient.patnt.gen),
		                          $("<td>").html(patient.hsptlzIn),
		                          $("<td>").html(patient.hsptlzOut),
		                      );

		                      tbody.append(tr);
		                  });
		              }
		          });
		    }
		      
		});
		

    $(wardSelect).trigger('change');

 // 초기 로드
    ingPatnt();
    $(wardSelect).trigger('change');
    
    // 검색 기능
    $("#searchButton").on("click", function(event) {
        var searchInputValue = $("#searchInput").val();
        // 필요한 검색 로직 수행
    });

    $("#resetButton").on("click", function(event) {
        // 초기화 로직 수행
    });
    
    	
    //	호실 클릭했을때 퇴원처리하는 함수
    function hosOut1() {
    	$(".disHosBtn").on("click", function () {
            let hsptlzCode = $(this).attr("data-hsptlzCode");
            let recCode = $(this).attr("data-recCode");
            let sckbdRo = $(this).attr("data-sckbdRo");
            let sckbdNo = $(this).attr("data-sckbdNo");

            let patntNm = $(this).closest("tr").find("td:eq(3)").text();

            Swal.fire({
                title: '퇴원 처리 하시겠습니까?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: '확인'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.getJSON("<c:url value='/hospital/hospitalOut.do' />",
                        { hsptlzCode: hsptlzCode, recCode: recCode, sckbdRo: sckbdRo, sckbdNo: sckbdNo }).done(function (resp) {
                            Swal.fire({
                                title: '퇴원이 완료되었습니다.',
                                icon: 'success',
                                timer: 2000, // 2초 후 자동으로 창 닫기
                            }).then(() => {
                            	sckbdRoSelect(sckbdRo);
                            	
                            });
                            Swal.fire(
                  			      '퇴원 완료!'
                  			    )
                        });
                }
            });
        });
    };
  
    //병실, 호실 클릭했을때 퇴원처리하는 함수
    function hosOut2() {
    	$(".disHosBtn").on("click", function () {
            let hsptlzCode = $(this).attr("data-hsptlzCode");
            let recCode = $(this).attr("data-recCode");
            let sckbdRo = $(this).attr("data-sckbdRo");
            let sckbdNo = $(this).attr("data-sckbdNo");

            let patntNm = $(this).closest("tr").find("td:eq(3)").text();

            Swal.fire({
                title: '퇴원 처리 하시겠습니까?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: '확인'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.getJSON("<c:url value='/hospital/hospitalOut.do' />",
                        { hsptlzCode: hsptlzCode, recCode: recCode, sckbdRo: sckbdRo, sckbdNo: sckbdNo }).done(function (resp) {
                            Swal.fire({
                                title: '퇴원이 완료되었습니다.',
                                icon: 'success',
                                timer: 2000, // 2초 후 자동으로 창 닫기
                            }).then(() => {
                            	getPatientInfo(sckbdRo,sckbdNo);
                            	
                            });
                            Swal.fire(
                  			      '퇴원 완료!'
                  			    )
                        });
                }
            });
        });
    };
    
});
</script>
