<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<table class="table table-border">
	<thead>
		<tr>
			<td>환자 이름</td>
			<td>상태코드</td>
			<td>현재위치시각</td>
			<td>접수코드</td>
			<td>시설코드(병동 대기)</td>
		</tr>
	</thead>
	<tbody>
		<c:if test="${not empty statList}">

			<c:forEach items="${statList}" var="list">
				<c:if test="${list.statCode == '006' }">
					<tr>
						<td>${list.recep.patnt.patntNm }</td>
						<td>${list.statCode }</td>
						<td>${list.statTime }</td>
						<td>${list.recCode }</td>
						<td>${list.fcltyCode }</td>
					</tr>
				</c:if>
			</c:forEach>
		</c:if>
	</tbody>
</table>