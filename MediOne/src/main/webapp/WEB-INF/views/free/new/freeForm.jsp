<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!-- ckeditor 로딩 -->
<script src="<%=request.getContextPath()%>/resources/js/ckeditor/ckeditor.js"></script>


<style>

.textArea{
height: 300px;
}

.writeForm tr{
font-size: 15px !important;
}

</style>


<c:url value='/free/freeInsert.do' var="insertURL">
	<c:param name="who" value="${emp.empNo }" />
</c:url>


<c:url value='/free/freeView.do' var="viewURL">
	<c:param name="who" value="${emp.empNo }" />
</c:url>

<form:form id="insertForm" method="post" modelAttribute="freeBoard" enctype="multipart/form-data">
	<form:hidden path="boardNo" />
			
						<div class="card" style="border-color: white; ">
							<table class="table table-border writeForm" style="text-align: left; margin-top: 5px;">
								<tr>
									<th colspan="4">&nbsp;&nbsp;</th>
								</tr>
								<tr>
									<th colspan="1" style="height: 66px;">&nbsp;&nbsp;글&nbsp;제&nbsp;목</th>
									<td colspan="3">
									<form:input path="boardTitle" class="form-control"/> 
									<form:errors path="boardTitle" class="error" />
									</td>
								</tr>

								<tr>
									<th style="height: 66px;">&nbsp;&nbsp;작&nbsp;성&nbsp;자</th>
									<td><form:input path="boardWrtr" class="form-control" value="${emp.empNm}" /></td>
									<th style="height: 66px;">&nbsp;&nbsp;사&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;번</th>
									<td><form:input path="empNo" class="form-control" value="${emp.empNo}" /></td>
								</tr>

								<tr>
									<th style="height: 66px;">&nbsp;&nbsp;부&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;서</th>
									<td style="text-align: left;">&nbsp;&nbsp;${emp.dept.deptNm}</td>
									<th style="height: 66px;">&nbsp;&nbsp;email</th>
									<td style="text-align: left;">&nbsp;&nbsp;${emp.empEmail}</td>
								</tr>

								<tr>
									<th style="height: 350px;">&nbsp;&nbsp;내&nbsp;&nbsp;용</th>
									<td colspan="3" style="height: 350px;">
									<form:textarea path="boardContent" class="form-control textArea"/> 
									<form:errors path="boardContent" class="error" />
									
									</td>
								</tr>
								<tr>
									<th style="height: 66px;">&nbsp;&nbsp;첨부파일</th>
									<td colspan="3" style="text-align: left;">&nbsp;&nbsp; 
									<input type="file" name="boFiles" multiple />
									</td>
								</tr>
							</table>

						
							<table style="text-align: right; margin: 20px;">
								<tr>
									<td>
									<input type="button" value="등록" class="btn btn-success insertActionBtn" /> 
									<input type="reset" value="취소" class="btn btn-danger" style="margin-left: 10px;" />
									
									
									</td>
								</tr>
								<tr>
									<td><input type="hidden" name="boardReadcount" class="form-control" value="0" /></td>
								</tr>
							</table>
							
						</div>
                  </form:form> 


<%-- 	<form id="insertForm" method="post" modelAttribute="freeBoard" enctype="multipart/form-data">
	<input type="hidden" path="boardNo" />
			
						<div class="card" style="border-color: white; margin-top: 49px;">
							<table class="table table-border" style="text-align: center;">
								<tr>
									<th colspan="4">&nbsp;&nbsp;</th>
								</tr>
								<tr>
									<th colspan="1">글&nbsp;&nbsp;제&nbsp;&nbsp;목</th>
									<td colspan="3">
									<input type="text" name="boardTitle" class="form-control" /> 
									</td>
								</tr>

								<tr>
									<th>작성자</th>
									<td><input type="text" name="boardWrtr" class="form-control" value="${emp.empNm}" /></td>
									<th>사번</th>
									<td><input type="text" name="empNo" class="form-control" value="${emp.empNo}" /></td>
								</tr>

								<tr>
									<th>부서</th>
									<td style="text-align: left;">&nbsp;&nbsp;${emp.dept.deptNm}</td>
									<th>email</th>
									<td style="text-align: left;">&nbsp;&nbsp;${emp.empEmail}</td>
								</tr>

								<tr>
									<th>내용</th>
									<td colspan="3">
									<textarea name="boardContent" class="form-control" id="editor"></textarea> 
									</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td colspan="3" style="text-align: left;">&nbsp;&nbsp; 
									<input type="file" name="boFiles" multiple />
									</td>
								</tr>
							</table>

						
							<table style="text-align: right; margin: 20px;">
								<tr>
									<td>
									<input type="button" value="등록" class="btn btn-success insertActionBtn" /> 
									<input type="reset" value="취소" class="btn btn-danger" style="margin-left: 10px;" />
									
										<c:url value='/free/newFreeBoard.do' var="listURL"></c:url>
							<a class="btn" style="margin-left: 300px;"
								href="${listURL}"><i class="icofont-exit fs-4"></i></a>
									
									</td>
								</tr>
								<tr>
									<td><input type="hidden" name="boardReadcount" class="form-control" value="0" /></td>
								</tr>
							</table>
							
						</div>
                  </form>
               
             --%>




















