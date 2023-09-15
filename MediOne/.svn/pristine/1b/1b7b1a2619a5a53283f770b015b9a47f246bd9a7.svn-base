<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<script src="<%=request.getContextPath() %>/resources/js/bootstrap5/js/bootstrap.bundle.min.js"></script>



	
<div class="dropdown">
    <button class="btn btn-primary dropdown-toggle me-3" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
        커뮤니티
    </button>
    <ul class="dropdown-menu border-0 shadow p-3">
        <li><a class="dropdown-item py-2 rounded" href="${pageContext.request.contextPath }/notice/noticeList.do">공지사항</a></li>
        <li><a class="dropdown-item py-2 rounded" href="${pageContext.request.contextPath }/free/freeList.do">자유게시판</a></li>
        <li><a class="dropdown-item py-2 rounded" href="${pageContext.request.contextPath }/common/chat.jsp">채팅</a></li>
    </ul>

    <button class="btn btn-primary dropdown-toggle me-3" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
       자료실
    </button>
    <ul class="dropdown-menu border-0 shadow p-3">
        <li><a class="dropdown-item py-2 rounded" href="${pageContext.request.contextPath }/tree/treeList.do">조직도</a></li>
        <li><a class="dropdown-item py-2 rounded" href="${pageContext.request.contextPath }/common/coviddashboard.jsp">자료실</a></li>
        <li><a class="dropdown-item py-2 rounded" href="${pageContext.request.contextPath }/fixtures/fixturesReqInsert.do">비품신청</a></li>
    </ul>
</div>


<ul class="nav" style="height: 50px; margin-top: 10px;">
    
    <li class="nav-item">
        <a class="nav-link disabled text-muted" href="#" tabindex="-1" aria-disabled="true">비공개</a>
    </li>
      <li class="nav-item"><a class="nav-link text-white" href="<%=request.getContextPath()%>/login/logout" role="tab" style="margin-left: 250px">Logout</a></li>
      <li id="nav-item" class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath }/mypage/mypage.do" role="tab">${authMember.empNm}</a></li>
      
</ul>
