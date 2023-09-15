<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags"prefix="security"%>

<style type="text/css">
.custom-input {
	width: 100px; /* 원하는 길이로 설정 */
}

.top-color {
	border-top: 3px solid #6aab9c;
}

#overflow::-webkit-scrollbar {
	display: none; /* 크롬, 사파리, 오페라, 엣지 */
}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<security:authorize access="isAuthenticated()">
	<security:authentication property="principal.realUser" var="authMember" />
	<div id="empNo" style="display: none;">${authMember.empNo}</div>
</security:authorize>

<!-- main body area -->
<div class="main px-lg-4 px-md-4" style="margin-top: 20px">
	<!-- Body: Body -->
	<div class="body d-flex py-lg-3 py-md-2">

		<div class="container-xxl">
			<!-- 컨테이너 -->

			<!--Row start  -->
			<div class="border-0 mb-4">
				<div
					class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"
					style="margin-top: -30px">
					<h3 class="fw-bold mb-0">비품 신청</h3>
				</div>

			</div>


			<!--Row start  -->
			<div class="row clearfix g-3" style="margin-top: -30px">
				<div class="col-sm-12">
					<div class="card mb-3 top-color">
						<div class="card-body">
							<div class="card-header py-3 d-flex justify-content-between"
								style="margin-top: -20px">
								<select id="fixtureDtl" class="form-select form-select-sm"
									style="width: 13%;">
									<option label="분류 전체" />
									<c:forEach items="${fixDtlList }" var="fixClass">
										<option value="${fixClass.fxtrsSeCode }"
											label="${fixClass.fxtrsSe }" />
									</c:forEach>
								</select>
								<div class="input-group mb-3" style="width: 180px;">
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
							</div>
							<table id="myProjectTable"
								class="table table-hover align-middle mb-0"
								style="width: 100%; margin-top: -16px">
								<thead>
									<tr style="border-bottom: 1px solid black;">
										<th style="width:80px">NO.</th>
										<th style="width:130px">비품코드</th>
										<th style="width:290px">비품분류</th>
										<th style="width:393px">비품명</th>
										<th style="width:177px">재고</th>
										<th style="width:133px">단가</th>
										<th style="width:185px">제조사</th>
										<th>발주</th>
									</tr>
								</thead>

							</table>

							<div id="overflow" style="overflow: auto; width: 1490px; height: 382px;">
								<table class="table table-hover align-middle mb-0"
									style="width: 100%">
									<tbody class="fixList">
										<c:forEach items="${fixList }" var="fix" varStatus="i">
											<tr >
												<td><span class="fw-bold">${i.count}</span></td>
												<td>${fix.fxtrsCode }</td>
												<td>${fix.fxtrsSe }</td>
												<td>${fix.fxtrsNm }</td>
												<td>${fix.fxtrsInv }</td>
												<td style="text-align: right;"><span id="fxtrsUntpc"
													style="margin-right: 50px;">${fix.fxtrsUntpc } 원</span></td>
												<td>${fix.fxtrsMfbiz }</td>
												<td>
													<div class="btn-group" role="group"
														aria-label="Basic outlined example">
														<button type="button" class="btn btn-outline-secondary"
															id="fixOrder" data-bs-toggle="modal"
															data-bs-target="#depadd2">
															<i class="icofont-ui-cart text-success"></i>
														</button>
													</div>
												</td>
												<td style="display: none;">${fix.fxtrsSeCode }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- 조회창 Row End -->




			<div class="row clearfix g-3">
				<div class="col-sm-12">

					<div class="card mb-3 top-color">
						<div class="border-0 mb-4">
							<div
								class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
								<h6 class="fw-bold mb-0">나의 신청 목록</h6>
							</div>
						</div>
						<div class="card-body" style="margin-top: -58px">
							<div >
								<table class="table table-hover align-middle mb-0"
									style="width: 100%">
									<thead>
										<tr style="border-bottom: 1px solid black;">
											<th style="width:170px; ">NO.</th>
											<th style="width:254px; ">신청일자</th>
											<th style="width:226px; ">비품명</th>
											<th style="width:360px; ">신청수량</th>
											<th style="width:226px; ">최종지급일자</th>
											<th>진행상태</th>
										</tr>
									</thead>
									</table>
									<div id="overflow"
											style="height: 232px; width: 1442px; overflow-y: scroll;">
									<table class="table table-hover align-middle mb-0">
									<tbody id="myOrderList">

									</tbody>
								</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 조회창 Row End -->

			<br> <br> <br>


		</div>
		<!--조회/발주 컨테이너  -->

	</div>
	<!--바디  -->

	<!-- 비품 발주하기-->
	<div class="modal fade" id="depadd2" tabindex="-1" aria-hidden="true">
		<div
			class="modal-dialog modal-dialog-centered modal-md modal-dialog-scrollable">
			<div class="modal-content">

				<div class="modal-header">
					<h5 class="modal-title  fw-bold" id="depaddLabel">발주하기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body">
					<div class="deadline-form">
						<form name="sub1" method="post" action="">
							<div class="mb-3">
								<label for="exampleDataList" class="form-label">비품명</label> <input
									type="text" class="form-control" id="fixNm2" readonly>
							</div>
							<div class="mb-3">
								<label for="exampleFormControlInput1111" class="form-label">비품코드</label>
								<input type="text" class="form-control" id="fixCode2" readonly>
							</div>
							<div class="mb-3">
								<label for="exampleFormControlInput1111" class="form-label">비품구분</label>
								<input type="text" class="form-control" id="fixSe2" readonly>
								<input type="hidden" id="fixSeCode2">
							</div>
							<div class="mb-3">
								<label for="exampleFormControlInput1111" class="form-label">주문수량</label>
								<div>
									<input type="button" onclick="count('minus')" value='-'
										id="minus" /> <input type="text" id='result' value="0"
										style="text-align: center; border-color: lightGray;" /> <input
										type="button" onclick="count('plus')" value='+' id="plus" />
								</div>
							</div>
							<div class="mb-3">
								<label for="exampleFormControlInput1111" class="form-label">단가</label>
								<input type="text" class="form-control" id="fixPrice2"
									onkeyup="chkNumber(this)" style="text-align: right;" readonly>
							</div>
							<div class="mb-3">
								<label for="exampleFormControlInput1111" class="form-label">총금액</label>
								<input type="text" class="form-control" id="fixSum"
									onkeyup="chkNumber(this)" style="text-align: right;" readonly>
							</div>
							<div class="mb-3">
								<label for="exampleFormControlInput1111" class="form-label">담당자</label>
								<input type="text" class="form-control" id="fixMng"
									value="${authMember.empNo }" readonly>
							</div>
						</form>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
					<button type="submit" class="btn btn-primary" id="orderButton"
						onclick="getModalInputValues()" data-bs-dismiss="modal">발주요청</button>
				</div>
			</div>
		</div>
	</div>
	<!--비품발주하기 end  -->
</div>
<!--메인바디  -->



<!-- Plugin Js-->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 알림창 라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script type="text/javascript">
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
<%-- init --%>
	// project data table
	$(document).ready(function() {

		// 가격 -> 천단위 , 찍기
		var fxtrsUntpc = $('#fxtrsUntpc').val();
		var comma = numberWithCommas(fxtrsUntpc);

	});
<%-- event --%>
	//분류 select 박스 
	$(document).ready(function() {
		$('#fixtureDtl').on('change',function() {
			const selectedValue = $(this).val();
			$('.fixList tr').each(function() {
				const categoryValue = $(this).find('td:last-child').text();
				if (selectedValue === ''|| selectedValue === categoryValue) {
					$(this).show();
				} else {
					$(this).hide();
				}
			});
		});

		$('#fixOrder').on('click', function() {
			// 여기에 발주 버튼을 클릭했을 때의 동작을 추가하세요.
			// 모달 창 열기 등의 작업을 수행할 수 있습니다.
		});

		let empNo = document.getElementById("empNo").textContent;
		//나의 비품신청목록
		$.getJSON("<c:url value='/fixtures/selectMyOrderFixture.do' />",{empNo : empNo}).done(function(resp) {
			let tbody = $("#myOrderList");
			if (resp.length > 0) {
				$(resp).each(function(idx,ord) {
					let fxtrsGvDate;
					let fxtrsSttus;
					let fxClass;
					if (ord.fxtrsSttus === '1') {
						fxtrsGvDate = ord.fxtrsGvDate;
						fxtrsSttus = "지급완료";
						fxClass = "badge bg-primary";
					} else if (ord.fxtrsSttus === '0') {
						fxtrsGvDate = "-";
						fxtrsSttus = "지급대기";
						fxClass = "badge bg-secondary";
					}

					let tr = $("<tr>").append(
	                           $("<td>").css("width", "162px").html(idx + 1),
	                           $("<td>").css("width", "240px").html(ord.fxtrsDate),
	                           $("<td>").css("width", "273px").html(ord.fix.fxtrsNm),
	                           $("<td>").css({ "text-align": "left", "width": "230px" }).html(ord.fxtrsCount),
	                           $("<td>").css({"width": "334px", "text-align":"center"}).html(fxtrsGvDate),
	                           $("<td>").append($("<span>").addClass(fxClass).text(fxtrsSttus))
	                     );
	               tbody.append(tr);
					});
				} else {
						tbody.append($("<tr>").html(
										$("<td colspan='6'>").html("비품 신청 내역이 존재하지 않습니다.")))
				}
			});

		});
	// 클릭한 테이블의 행의 데이터 가져오기
	$('.fixList').on("click", "tr", function() { // <table id=""> 테이블에 id 지정. 

		let value1 = $(this).find("td:eq(3)").text(); // 행의 순서.
		let value2 = $(this).find("td:eq(1)").text();
		let value3 = $(this).find("td:eq(2)").text();
		let value4 = $(this).find("td:eq(4)").text();
		let value5 = $(this).find("td:eq(5)").text();
		let value6 = $(this).find("td:eq(6)").text();
		let fxtrsSeCode = $(this).find("td:eq(8)").text();

		// 가져온 값을 input 태그에 넣기 - 수정 모달창
		$("#fixNm").val(value1);
		$("#fixCode").val(value2);
		$("#fixSe").val(value3);
		$("#fixAmt").val(value4);
		$("#fixPrice").val(value5);
		$("#fixMnf").val(value6);

		// 발주 모달 창
		$("#fixNm2").val(value1);
		$("#fixCode2").val(value2);
		$("#fixSe2").val(value3);
		$("#fixPrice2").val(value5);
		$("#fixSeCode2").val(fxtrsSeCode);

		// fixPrice2와 number를 곱하여 결과 계산			
		let fixPrice2 = parseFloat(value5); // fixPrice2는 가져온 값으로 설정해야 함
		let result = fixPrice2 * (number + 1);
		$("#fixSum").val(result);
	});
<%-- function --%>
	function formatMoney(amount) {
		return amount.toLocaleString('ko-KR', {
			style : 'currency',
			currency : 'KRW'
		});
	}

	function count(type) {
		const resultElement = document.getElementById('result'), resultElement2 = document
				.getElementById('fixPrice2');

		let number = parseInt(resultElement.value);
		let price = parseInt(resultElement2.value);

		if (type === 'plus') { // 수량이 올라갈때
			number += 1;
			amt = number * price;

			// 단가 input box에 계산된 값 넣기
			$('#fixSum').val(amt + " 원");

		} else if (type === 'minus') {
			number -= 1;
			amt = number * price;

			// 단가 input box에 계산된 값 넣기
			$('#fixSum').val(amt + " 원");

			// 최소값 0 이하로 내려가지 않도록 처리
			if (number < 0) {
				number = 0;
			}
		}

		resultElement.value = number;
	}

	   // 발주요청 btn
	function getModalInputValues() {
	      const inputField1Value = document.getElementById("fixNm2").value,
	         inputField2Value = document.getElementById("fixCode2").value,
	         inputField3Value = document.getElementById("fixSe2").value,
	         inputField4Value = document.getElementById("result").value,
	         inputField5Value = document.getElementById("fixPrice2").value,
	         inputField6Value = document.getElementById("fixSum").value,
	         inputField7Value = document.getElementById("fixMng").value,
	         inputField8Value = document.getElementById("fixSeCode2").value;
	    
	     const tableBody = document.querySelector("#myProjectTable2 tbody");
	    const newRow = document.createElement("tr");
	    
	    // 위에 데이터를 json형태로 묶음
	    var jsonData = {
	               'fxtrsCode' : inputField2Value            // fxtrsCode 이 이름으로 코드값 담아서 보낼게~ 이런 뜻
	               ,'fxtrsNm' : inputField1Value
	               ,'fxtrsCount' : inputField4Value
	               ,'empNo' : inputField7Value
	               ,'fxtrsSeCode' : inputField8Value
	               ,'fixSum' : inputField6Value
	                  }
	    
	    
	    // 발주 insert
	      $.ajax({
	          type : 'post',          
	          url : '<%=request.getContextPath() %>/fixtures/insertFixOrder.do',   // 여기는 만든 컨트롤러 url      
	          dataType : 'json',      
	          contentType: 'application/json; charset=utf-8', 
	          data : JSON.stringify(jsonData),   // json 형태로 묶은 jsondata 변수를 넘겨준다 json 형태로
	          success : function(result) { // 결과 성공 콜백함수
	        	  
	        	  
	        	  Toast.fire({
		    		    icon: 'success',
		    		    title: '발주 신청이 완료되었습니다.'
		    		});
	             
	             // 성공 후 페이지 새로고침
	        	  setTimeout(function() {
		                 location.reload();
		             }, 1500);
	          },
	          error: function(errorThrown) {
	        	  Swal.fire({
	    			  text: '발주 신청이 실패하였습니다.',  
	    			  icon: 'error'                         
	    			});
	           }
	      }); 
	    
	    }


	// 발주 insert 성공 시 실행할 함수
	function orderResult() {
		 Toast.fire({
 		    icon: 'success',
 		    title: '발주 신청이 완료되었습니다.'
 		});
		// 밑에 발주테이블 그리기
	}

	//검색창에 keyup 이벤트
		//검색창에 keyup 이벤트
	$("#searchForm").on("keyup",function() {
		let what = $(this).val();
		$.getJSON("<c:url value='/fixtures/searchFixtures.do' />",{what : what}).done(function(resp) {
			let tbody = $(".fixList");
			tbody.empty();
			if (resp.length > 0) {
				$(resp).each(function(idx,fix) {
					let tr = $("<tr>").append(
							$("<td>").html(idx),
							$("<td>").html(fix.fxtrsCode),
							$("<td>").html(fix.fxtrsSe),
							$("<td>").html(fix.fxtrsNm),
							$("<td>").html(fix.fxtrsInv),
							$("<td>").html(fix.fxtrsUntpc),
							$("<td>").html(fix.fxtrsMfbiz),
							$("<td>").html(
									$("<div>").addClass("btn-group").attr("role","group")
												.attr("aria-label","Basic outlined example")
												.append($("<button>").attr("type",	"button")
												.addClass("btn btn-outline-secondary")
												.attr("id","fixOrder")
												.attr("data-bs-toggle","modal")
												.attr("data-bs-target","#depadd2")
												.append($("<i>").addClass("icofont-ui-cart text-success")))),
							$("<td>").css("display","none").html(fix.fxtrsSeCode)
					);
					tbody.append(tr);
				});
				} else {
					tbody.append($("<tr>")
								.html($("<td colspan='5'>").html("해당 비품이 존재하지 않습니다.")));
											}
		});
	});
</script>
