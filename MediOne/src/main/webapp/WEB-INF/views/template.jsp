<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" buffer="8kb"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--커스텀태그 <prefix: tagname>--%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">

<meta name="generator" content="Hugo 0.88.1">
<meta name="theme-color" content="#6aab9c">

<title>WELCOME MED1ONE<%-- <tiles:getAsString name="title" /> --%></title>

<tiles:insertAttribute name="preScript" />

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.navbar {
	background-color: #6aab9c;
	font-size: 14px;
	font-weight: bolder;

}

</style>
<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/resources/css/dashboard.css" rel="stylesheet">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">
    
<!-- Plugin css file  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/assets/plugin/owlcarousel/owl.carousel.min.css">

</head>


<body class="d-flex flex-column vh-100">
	<header class="navbar sticky-top flex-md-nowrap p-0 shadow">
	
		<security:authentication property="principal.realUser" var="authMember" />
		<c:choose>
				<c:when test="${authMember != null and authMember.empRole == 'ROLE_NURSE' }">
					<%@include file="/includee/nurseHeaderMenu.jsp"%>
				</c:when>
				<c:when test="${authMember != null and authMember.empRole == 'ROLE_DOCTOR' }">
					<%@include file="/includee/doctorHeaderMenu.jsp"%>

				</c:when>
				<c:when test="${authMember != null and authMember.empRole == 'ROLE_ADMIN' }">
					<%@include file="/includee/adminHeaderMenu.jsp"%>

				</c:when>
				<c:when test="${authMember != null and authMember.empRole == 'ROLE_ADMINIST' }">
					<%@include file="/includee/administHeaderMenu.jsp"%>

				</c:when>

			</c:choose>
	</header>

	<!-- main body area -->
		<div class="main px-lg-4 px-md-4">
			<!-- Body: Body -->
			<div class="body d-flex py-5">
				<div class="container-xxl">
			
			<main>
				<!-- Main Content Area start -->

				<tiles:insertAttribute name="contentPage" />
				<!-- Main Content Area end -->
			</main>
</div>
</div>
</div>


	<tiles:insertAttribute name="postScript" />

</body>
</html>
