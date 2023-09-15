<%-- <%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8"
	pageEncoding="UTF-8"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">



<div class="row g-3 mb-3 row-deck" id="top">
	<div class="col-lg-12 col-xl-6"
		style="width: 48%; margin-right: 2%; flex-grow: 1;">
		<div class="card">
			<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<h6 class="mb-0 fw-bold" style="margin-top: 10px;">
					&nbsp;업로드 자료 확인 <i class="icofont-touch fs-4"></i>
				</h6>
			</div>
			<div class="card-body">
				<table id="myDataTable" class="table table-hover align-middle mb-0" style="width: 100%">
					<thead>
						<tr>
							<th>NO</th>
							<th>부서코드</th>
							<th>부서명</th>
							<th>연도</th>
							<th>월</th>
							<th>매출액</th>
							<th>외래환자수</th>
							<th>입원환자수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${salesList}" var="data">
							<tr>
								<td>${data.rnum }</td>
								<td>${data.salesDeptCode }</td>
								<td>${data.deptNm}</td>
								<td>${data.salesYear}</td>
								<td>${data.salesMonth}</td>
								<td>${data.deptAmount}</td>
								<td>${data.clinicCustomer}</td>
								<td>${data.hospitalCustomer}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<br>
<br>





<!-- Plugin Js-->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<script>
	$(document).ready(function() {
		$('#myDataTable').addClass('nowrap').dataTable({
			responsive : true,
			columnDefs : [ {
				targets : [ -1, -3 ],
				className : 'dt-body-right'
			} ]
		});
	});
</script>









