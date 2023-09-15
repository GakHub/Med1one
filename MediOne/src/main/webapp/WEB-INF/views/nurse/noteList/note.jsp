<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- plugin css file  -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<!-- project css file  -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.7.0.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/customLibs.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/popper.min.js"></script>

<script src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap5/js/bootstrap.bundle.min.js"></script>
<!-- Jquery Core Js -->
<script
	src="<%=request.getContextPath()%>/resources/js/dist/assets/bundles/libscripts.bundle.js"></script>
<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>

<!-- Prism js file please do not add in your project -->
<script src="${pageContext.request.contextPath}/resources/dist/assets/plugin/prism/prism.js"></script>

<!-- Plugin Js -->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/plugin/owlcarousel/owl.carousel.js"></script>

<!-- Jquery Page Js -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<style>
label{
	margin : 15px;
}
</style>

</head>
<body>
<div class="container-xxl">
	<div class="row g-3 mb-3 custom-box">
	<h3 class="mb-0 fw-bold" style="color: #6aab9c; margin:10px;">일지 조회</h3>
		<table id="myProjectTable" class="table table-hover align-middle mb-0" style="width:95%; margin-left:35px;">
			<thead>
				<tr>
					<th>근무타임</th>
					<th>기록인</th>
					<th>기록내용</th>
					<th>기록일자</th>
				</tr>
			</thead>
			<tbody id="allNurseNote">
				<c:set var="nursenote" value="${nursenote }"/>
				<c:if test="${empty nursenote }">
					<tr>
						<td colspan="7">기록된 간호일지가 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${not empty nursenote }">
					<c:forEach items="${nursenote }" var="nursenote" varStatus="loop">
						<tr>
							<td>
								<c:choose>
		                            <c:when test="${nursenote.nurwkCode eq 'N01'}"><h6><span class="badge bg-success" style="width:50px;">데이</span></h6></c:when>
		                            <c:when test="${nursenote.nurwkCode eq 'N02'}"><h6><span class="badge bg-warning">이브닝</span></h6></c:when>
		                            <c:when test="${nursenote.nurwkCode eq 'N03'}"><h6><span class="badge bg-secondary">나이트</span></h6></c:when>
		                            <c:otherwise>${nursenote.nurwkCode}</c:otherwise>
	                        	</c:choose>
							</td>
							<td>${nursenote.nrsnoteNm }</td>
							<td>${nursenote.nrsnoteContent }</td>
							<td>${nursenote.nrsnoteDate }</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</div>
<!-- Plugin Js-->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>
<script>
$(document).ready(function(){
	
	$('#myProjectTable').addClass('nowrap').dataTable({
		responsive : true,
		columnDefs : [ {
			targets : [ -1, -3 ],
			className : 'dt-body-right'
		} ]
	});
});

</script>
</body>
</html>