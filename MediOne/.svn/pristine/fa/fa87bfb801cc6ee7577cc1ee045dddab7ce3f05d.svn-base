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
					&nbsp;자료 확인 <i class="icofont-touch fs-4"></i>
				</h6>
			</div>
			<div class="card-body">




				<c:url value='/sales/salesMain.do' var="listURL"></c:url>
				<a class="btn btn-light" style="text-align: right;"
					href="${listURL}"><i class="icofont-exit" style="size: 200px;"></i></a>




				<table id="myDataTable" class="table table-hover align-middle mb-0"
					style="width: 100%">
					<thead>
						<tr>
							<th>${newFile[0].newFileId}</th>
							<th>${newFile[0].empNo}</th>
							<th>${newFile[0].fileCol1}</th>
							<th>${newFile[0].fileCol2}</th>
							<th>${newFile[0].fileCol3}</th>
							<th>${newFile[0].fileCol4}</th>
							<th>${newFile[0].fileCol5}</th>
							<th>${newFile[0].fileCol6}</th>
							<th>${newFile[0].fileCol7}</th>
							<th>${newFile[0].fileCol8}</th>
							<th>${newFile[0].fileCol9}</th>
							<th>${newFile[0].fileCol10}</th>
							<th>${newFile[0].fileCol11}</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${newFile}" var="data" begin="1">
							<tr>
								<td>${data.newFileId}</td>
								<td>${data.empNo}</td>
								<td>${data.fileCol1}</td>
								<td>${data.fileCol2}</td>
								<td>${data.fileCol3}</td>
								<td>${data.fileCol4}</td>
								<td>${data.fileCol5}</td>
								<td>${data.fileCol6}</td>
								<td>${data.fileCol7}</td>
								<td>${data.fileCol8}</td>
								<td>${data.fileCol9}</td>
								<td>${data.fileCol10}</td>
								<td>${data.fileCol11}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<table style="text-align: center; margin: 20px;">
					<tr>
						<td><c:url value='/sales/newFileUpdate.do' var="updateURL">
								<c:param name="what" value="${data.newFileId }" />
							</c:url> <a class="btn btn-success" href="${updateURL }"> <i
								class="icofont-edit" style="size: 100px;"></i>&nbsp; <!--파일 Edit -->
						</a> <a class="btn btn-danger" data-bs-toggle="modal"
							data-bs-target="#exampleModal" style="margin-left: 10px;"> <i
								class="icofont-ui-delete" style="size: 200px;"></i>
							<!-- 파일 삭제-->
						</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>



<!-- 게시물 삭제 확인 Modal 영역 -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<a class="modal-title" id="exampleModalLabel">파일 삭제</a>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>

			<form method="post"
				action="<c:url value='/sales/newFileDelete.do' />">
				<div class="modal-body">
					<input type="hidden" name="newFileId" value="${data.newFileId}" />
					<h5>이 글을 삭제하시겠습니까?</h5>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">취소</button>
					<button type="submit" class="btn btn-danger">삭제</button>
				</div>
			</form>
		</div>
	</div>
</div>


<!-- Plugin Js-->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<script type="text/javascript">
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


<!-- 수정 모달 팝업 -->
<div class="modal fade" id="exampleModalXl" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-xl" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">댓글 수정</h5>
				<button type="button" class="close" data-bs-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form method="post" action="<c:url value='/free/cmtUpdate.do' />">
				<div class="modal-body">
					<!-- 댓글 수정 내용 입력 폼 -->
					<input type="hidden" id="editCmtNo" name="cmtNo"> <input
						type="hidden" id="editEmpNo" name="empNo"> <input
						type="hidden" id="editboardNo" name="boardNo">
					<textarea id="editCmtContent" name="cmtContent"
						class="form-control"></textarea>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-primary">수정</button>
				</div>
			</form>
		</div>
	</div>
</div>

