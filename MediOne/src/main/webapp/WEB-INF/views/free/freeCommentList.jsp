<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<div class="card-body">
		<ul class="list-group list-group-flush">
			<li class="list-group-item">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th style="width: 10%;">작성자</th>
							<th style="width: 40%;">내용</th>
							<th style="width: 20%;">작성일시</th>
							<th style="width: 15%;">수정</th>
							<th style="width: 15%;">삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="comment" items="${commentList}">
							<tr>
								<td>${comment.writer}</td>
								<td>${comment.content}</td>
								<td>${comment.timestamp}</td>
								<td><a href="#" onclick="editComment(${comment.id});">수정</a></td>
								<td><a href="#" onclick="deleteComment(${comment.id});">삭제</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</li>
		</ul>
	</div>
