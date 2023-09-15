<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>:: MED1ONE:: SAMPLE</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<!-- project css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">

<style type="text/css">
.pill{
    padding: 0.5em 2em;
    border-radius: 2.5rem;
}
</style>
</head>
<body>
<!-- List Group: with badge pill right side -->
<div class="col-md-12 col-lg-6" style="width: 97%;height: 74vh; flex-grow: 1;">
	<div class="card h-100">
		<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
			<h6 class="mb-0 fw-bold">처방내역</h6>
		</div>
		<div class="card-body">
			<div class="presList">
				<ul class="list-group list-group-custom">
				    <li class="list-group-item d-flex justify-content-between align-items-center">
				        Cras justo odio
				        <span class="badge bg-primary pill">14</span>
				    </li>
				    <li class="list-group-item d-flex justify-content-between align-items-center">
				        Dapibus ac facilisis in
				        <span class="badge bg-danger rounded-pill">2</span>
				    </li>
				    <li class="list-group-item d-flex justify-content-between align-items-center">
				        Morbi leo risus
				        <span class="badge bg-info rounded-pill">1</span>
				    </li>
				    <li class="list-group-item d-flex justify-content-between align-items-center">
				        Dapibus ac facilisis in
				        <span class="badge bg-warning rounded-pill">2</span>
				    </li>
				    <li class="list-group-item">
				        <span class="badge bg-secondary me-2">1</span>
				        <span>Morbi leo risus</span>
				        <span class="badge bg-secondary rounded-pill">1</span>
				    </li>
				    <li class="list-group-item d-flex justify-content-between align-items-center">
				        Morbi leo risus
				        <span class="badge bg-secondary rounded-pill">1</span>
				    </li>
				</ul>
			</div>
		</div>
	</div>
</div>



<!-- Jquery Core Js -->
<script src="<%=request.getContextPath()%>/resources/dist/assets/bundles/libscripts.bundle.js"></script>

<!-- Plugin Js-->
<script src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	presList()

	
});

//검색한 환자의 처방내역 출력
var pres = 'PRES241';
function presList(){
	$.getJSON("<c:url value='presList.do'/>",{pres:pres}).done(function(presList){
		var div = $('.presList');
		div.empty();
		
			$(presList).each(function(index,presdtl){
				let content = presdtl.medi.mediNm + "<br> 투여량 : " + presdtl.presMAmt +"/ 투여횟수 : "+ presdtl.presMCo ;
				
				let div1 = $("<div>").html(content);
			
				div.append(div1);
			});
		});
	}
</script>
</body>

</html>