<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="card mb-2">

	<div class="card-header bg-light d-flex align-items-center">
		<i class="icofont-speech-comments fa-2x mr-2"></i>
		<h6 class="mb-0">&nbsp;Comment</h6>
	</div>
	  <jsp:include page="freeCommentList.jsp" />
	<div class="card-body">
		<ul class="list-group list-group-flush">
			<li class="list-group-item">
				<table style="text-align: center; margin-left: 100px; width: 600px;">
					<tr>
						<th colspan="2"><label for="replyId"><i class="fa fa-user-circle-o fa-2x" style="margin-top: 15px;"></i></label></th>
						<th colspan="2">&nbsp;&nbsp;&nbsp;</th>
						<td colspan="2"><input type="text" class="form-control form-control-sm mt-3" placeholder="작성자(ID)" id="empNo"></td>
						<th colspan="2">&nbsp;&nbsp;&nbsp;</th>
					</tr>
					<tr>
						<th colspan="8"><textarea class="form-control mt-3" id="cmtContent" rows="3"></textarea></th>
					</tr>
					<tr>
						<th colspan="8">
							<button type="button" class="btn btn-primary mt-3" onClick="javascript:addReply();">등록</button>
							<button type="button" class="btn btn-danger mt-3" onClick="javascript:addReply();">취소</button>
						</th>
					</tr>
				</table>
			</li>
		</ul>
	</div>
</div>