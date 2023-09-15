<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link
	href="<%=request.getContextPath()%>/resources/js/bootstrap5/css/bootstrap.min.css"
	rel="stylesheet">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<style>
/*헤더 메뉴  */
.btn-primary {
    --bs-btn-color: #fff;
    --bs-btn-hover-color: #fff;
    --bs-btn-hover-bg: #61867D;
    --bs-btn-hover-border-color: #61867D;
    --bs-btn-focus-shadow-rgb: 49,132,253;
    --bs-btn-active-color: #fff;
    --bs-btn-active-bg: #61867D;
    --bs-btn-active-border-color: #61867D;
    --bs-btn-active-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}

.dropdown-menu {
    --bs-dropdown-link-active-color: #fff;
    --bs-dropdown-link-active-bg: #d9d7d7;   
}

a {
	color: black;
	text-decoration: none;
}

    .seminar-container {
        display: flex;
        justify-content: space-between;
        margin-bottom: 70px;
        margin-top:30px;
        width:500px;
        
    }

    .seminar {
        width: 290px;
        height: 200px;
        background-color:#DCEBFF;
    }

  .small-seminar {
	 	height: 38px;
	    width: 98px;
	    text-align: center;
	    margin-top: -15px;
	    margin-left: 31px; 
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    background-color:#3296FF; /* 배경 색상과 투명도 설정 */
	    font-size: 15px;
	    color: white;
	    font-weight: bold;
	    text-align: center;
	    font-family: 'Pretendard-Regular';
	}
  
   .text {
   	color : black;
   	font-size: 20px;
   	margin-left:15px;
   	margin-top:15px;
   	font-family: 'TheJamsil5Bold';
   }
   
   .smaill-text {
   	margin-left:15px;
   	margin-top:45px;
   	font-weight: bold;
   	color: black;
   }
   
  @font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}




</style>

 
<div style="display: flex;">
<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="width:300px;">
  <div class="carousel-inner" style="width:300px;">
    <div class="carousel-item active">
      <div class="seminar-container">
        <div class="seminar">
          <div class="small-seminar">세미나 강연</div>
          <p class="text" >2023년 제13회 MED1ONE <br>감염내과 연수강좌</p>
          <p class="smaill-text">종료 2023-09-11~2023-09-14</p>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <div class="seminar-container">
        <div class="seminar">
          <div class="small-seminar">세미나 강연</div>
          <p class="text">2023년 제6회 MED1ONE <br>소화기내과 심포지엄 개최 안내</p>
          <p class="smaill-text">종료 2023-09-13~2023-09-30</p>
        </div>
      </div>
    </div>
  </div>
  
   <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev" >
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div id="carouselExampleControls1" class="carousel slide" data-bs-ride="carousel" style="width:300px;">
  <div class="carousel-inner" style="width:300px;">
    <div class="carousel-item active">
      <div class="seminar-container">
        <div class="seminar">
          <div class="small-seminar">세미나 강연</div>
          	<p class="text">MED1ONE 신규간호사 <br>연수강좌</p>
    		<p class="smaill-text">종료 2023-09-18~2023-09-19</p>
        </div>
      </div>
    </div>
    <div class="carousel-item">
      <div class="seminar-container">
        <div class="seminar">
          <div class="small-seminar">세미나 강연</div>
          <p class="text">2023년 제8회 MED1ONE <br>심장내과 연수강좌</p>
    	<p class="smaill-text">종료 2023-09-12~2023-09-15</p>
        </div>
      </div>
    </div>
  </div>
  
   <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls1" data-bs-slide="prev" >
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls1" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div>
<iframe width="300px" height="250px" src="https://www.youtube.com/embed/fXNQ1DuUEtE" title="[KISA 강의] 개인정보보호 교육과정 - 일반용①" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>
<div>
<iframe width="300px" height="250px" style="margin-left:20px;" src="https://www.youtube.com/embed/a9-1G_5Bldk" title="개인정보 보호법의 주요 내용[법정필수교육]" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>

</div>
	<div >
		<table class="table  table-hover">
			<thead class="table-success">
				<tr>
					<td>공지글코드</td>
					<td style="text-align: center;">제목</td>
					<td>등록일시</td>
					<td>조회수</td>
					<td>관리자사번</td>
				</tr>
			</thead>
			<tbody>
				<c:set var="boardList" value="${paging.dataList }" />
				<c:choose>
					<c:when test="${empty boardList }">
						<tr>
							<td colspan="">해당 리스트 없음</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${boardList }" var="list">
							<c:url value="/notice/noticeDetail.do" var="viewURL">
								<c:param name="what" value="${list.noticeCode }" />
							</c:url>
							<tr>
								<td>${list.noticeCode }</td>
								<td><a href="${viewURL }">${list.noticeTitle }</a></td>
								<td>${list.noticeRegidate }</td>
								<td>${list.noticeReadcount }</td>
								<td>${list.adminEmpNo }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>

			</tbody>
			<tfoot>
				<tr>
					<td colspan="5">
						<div class="d-flex justify-content-center mb-3">
							${paging.pagingHTML }</div>
						<div id="searchUI" class="row justify-content-center">
							<div class="col-auto">
								<form:select path="simpleCondition.searchType"
									class="form-select">
									<form:option value="" label="전체" />
									<form:option value="title" label="제목" />
									<form:option value="content" label="내용" />
									<form:option value="Number" label="관리자사번" />
								</form:select>
							</div>
							<div class="col-auto">
								<form:input path="simpleCondition.searchWord"
									class="form-control" />
							</div>
							<div class="col-auto">
								<input type="button" value="검색" id="searchBtn"
									class="btn btn-success" /> 
									<c:choose>
										<c:when test="${LoginUser.empNo ne 'admin01'}">
										</c:when>
										<c:otherwise>
											<a href="<c:url value='/notice/noticeInsert.do'/>"
											class="btn btn-primary">새글쓰기</a>
										</c:otherwise>
									</c:choose>
									
							</div>
						</div>
					</td>
				</tr>

			</tfoot>

		</table>
	</div>

<form:form id="searchForm" modelAttribute="simpleCondition" method="get">
	<form:hidden path="searchType" />
	<form:hidden path="searchWord" />
	<input type="hidden" name="page" />
</form:form>

<script
	src="<%=request.getContextPath()%>/resources/js/page/virtual3.js"></script>
<script>
	function fn_paging(page) {
		searchForm.page.value = page;
		searchForm.requestSubmit();
	}
	$(searchBtn).on("click", function(event) {
		$(searchUI).find(":input[name]").each(function(idx, input) {
			let name = input.name;
			let value = $(input).val();
			$(searchForm).find(`[name=\${name}]`).val(value);
		});
		$(searchForm).submit();
	});

	const myCarouselElement = document.querySelector('#carouselExampleAutoplaying')

	const carousel = new bootstrap.Carousel(myCarouselElement, {
		interval : 1500,
		touch : false
	})
	
	 $("#pwBtn").on("click", function() {
			let option = "width=900px, height=700px, top=150px, left=400px, scrollbars=no, location=no";
			window.open("<%=request.getContextPath()%>/admin/PwSearch.do", 'pop', option);
		}); 	
	
</script>








