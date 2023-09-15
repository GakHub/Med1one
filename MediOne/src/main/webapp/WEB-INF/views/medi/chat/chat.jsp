<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
</head>
<body>
	<!-- main body area -->
	<div class="main">
<security:authorize access="isAuthenticated()">
    <security:authentication property="principal.realUser" var="authMember" />
    <input type="hidden" id="empNoHidden" value="${authMember.empNo}" />
</security:authorize>
		<!-- Body: Body -->
		<div class="body d-flex">
			<div class="container-xxl p-0">
				<div class="row g-0" style="margin-top: -20px">
					<div class="col-12 d-flex">
						<!-- Card: -->
						<div
							class="card card-chat border-right border-top-0 border-bottom-0  w380" style="height:90vh">
							<div class="px-4 py-3 py-md-4">
								<div class="input-group mb-3">
									<input type="text" class="form-control mb-1"
										placeholder="Search...">
								</div>

								<div class="nav nav-pills justify-content-between text-center"
									role="tablist">
									<a class="flex-fill rounded border-0 nav-link active"
										data-bs-toggle="tab" href="#chat-recent" role="tab"
										aria-selected="true">Chat</a> <a
										class="flex-fill rounded border-0 nav-link"
										data-bs-toggle="tab" href="#chat-groups" role="tab"
										aria-selected="false">Hospital Groups</a> <a
										class="flex-fill rounded border-0 nav-link"
										data-bs-toggle="tab" href="#chat-contact" role="tab"
										aria-selected="false">Contact</a>
								</div>
							</div>

							<div class="tab-content border-top">
								<div class="tab-pane fade show active" id="chat-recent"
									role="tabpanel">
									<ul
										class="list-unstyled list-group list-group-custom list-group-flush mb-0">
										<li class="list-group-item px-md-4 py-3 py-md-4"><a
											href="javascript:void(0);" class="d-flex"> <img
												class="avatar rounded-circle"
												src="<%=request.getContextPath()%>/resources/dist/assets/images//xs/avatar6.jpg"
												alt="">
												<div class="flex-fill ms-3 text-truncate">
													<h6 class="d-flex justify-content-between mb-0">
														<span>Dr.Vanessa Knox</span> <small class="msg-time">10:45
															AM</small>
													</h6>
													<span class="text-muted">There are many variations
														of passages</span>
												</div>
										</a></li>
										
									</ul>
								</div>
							</div>
						</div>
						<!-- Card: -->
						<div
							class="card card-chat-body border-0  w-100 px-4 px-md-5 py-3 py-md-4" style="height:90vh">

							<!-- Chat: Header -->
							<div
								class="chat-header d-flex justify-content-between align-items-center border-bottom pb-3">
								<div class="d-flex">
									<a href="javascript:void(0);" title=""> <img
										class="avatar rounded-circle"
										src="<%=request.getContextPath()%>/resources/dist/assets/images/xs/avatar2.jpg"
										alt="avatar">
									</a>
									<div class="ms-3">
										<h6 class="mb-0">Dr.Grace Smith</h6>
										<small class="text-muted">Last seen: 3 hours ago</small>
									</div>
								</div>
								<div class="d-flex">
									<a class="nav-link py-2 px-3 text-muted d-none d-lg-block"
										href="javascript:void(0);"><i class="fa fa-camera"></i></a> <a
										class="nav-link py-2 px-3 text-muted d-none d-lg-block"
										href="javascript:void(0);"><i class="fa fa-video-camera"></i></a>
									<a class="nav-link py-2 px-3 text-muted d-none d-lg-block"
										href="javascript:void(0);"><i class="fa fa-gear"></i></a> <a
										class="nav-link py-2 px-3 text-muted d-none d-lg-block"
										href="javascript:void(0);"><i class="fa fa-info-circle"></i></a>
									<a class="nav-link py-2 px-3 d-block d-lg-none chatlist-toggle"
										href="#"><i class="fa fa-bars"></i></a>

									<!-- Mobile menu -->
									<div class="nav-item list-inline-item d-block d-xl-none">
										<div class="dropdown">
											<a class="nav-link text-muted px-0" href="#"
												data-bs-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false"> <i class="fa fa-ellipsis-v"></i>
											</a>
											<ul class="dropdown-menu shadow border-0">
												<li><a class="dropdown-item" href="#"><i
														class="fa fa-camera"></i> Share Images</a></li>
												<li><a class="dropdown-item" href="#"><i
														class="fa fa-video-camera"></i> Video Call</a></li>
												<li><a class="dropdown-item" href="#"><i
														class="fa fa-gear"></i> Settings</a></li>
												<li><a class="dropdown-item" href="#"><i
														class="fa fa-info-circle"></i> Info</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>

							<!-- Chat: body -->
							<ul
								class="chat-history list-unstyled mb-0 py-lg-5 py-md-4 py-3 flex-grow-1">
								<!-- Chat: left -->
								<li class="mb-3 d-flex flex-row align-items-end">
									<div class="max-width-70">
										<div class="user-info mb-1">
											<img class="avatar  rounded-circle me-1"
												src="<%=request.getContextPath()%>/resources/dist/assets/images/xs/avatar2.jpg"
												alt="avatar"> <span class="text-muted small">10:10
												AM, Today</span>
										</div>
										<div class="card border-0 p-3">
											<div class="message"> </div>
										</div>
									</div> <!-- More option -->
									<div class="btn-group">
										<a href="#" class="nav-link py-2 px-3 text-muted"
											data-bs-toggle="dropdown" aria-expanded="false"><i
											class="fa fa-ellipsis-v"></i></a>
										<ul class="dropdown-menu border-0 shadow">
											<li><a class="dropdown-item" href="#">Edit</a></li>
											<li><a class="dropdown-item" href="#">Share</a></li>
											<li><a class="dropdown-item" href="#">Delete</a></li>
										</ul>
									</div>
								</li>
								<!-- Chat: right -->
								<li class="mb-3 d-flex flex-row-reverse align-items-end">
									<div class="max-width-70 text-right">
										<div class="user-info mb-1">
											<span class="text-muted small">10:12 AM, Today</span>
										</div>
										<div class="card border-0 p-3 bg-primary text-light">
											<div class="message"></div>
										</div>
									</div> <!-- More option -->
									<div class="btn-group">
										<a href="#" class="nav-link py-2 px-3 text-muted"
											data-bs-toggle="dropdown" aria-expanded="false"><i
											class="fa fa-ellipsis-v"></i></a>
										<ul class="dropdown-menu border-0 shadow">
											<li><a class="dropdown-item" href="#">Edit</a></li>
											<li><a class="dropdown-item" href="#">Share</a></li>
											<li><a class="dropdown-item" href="#">Delete</a></li>
										</ul>
									</div>
								</li>
						
								
								
								
							</ul>

							<!-- Chat: Footer -->
							<div class="chat-message">
								<textarea class="form-control" id="temp" placeholder="Enter text here..."></textarea>
							</div>

						</div>
					</div>
				</div>
				<!-- row end -->
			</div>
		</div>
	</div>

<%-- <!-- Jquery Core Js -->
<script src="<%=request.getContextPath() %>/resources/dist/assets/bundles/libscripts.bundle.js"></script> --%>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>
<script>

	var temp = Handlebars.compile($("#temp").html());

	sock = new SockJS("/sockjs/chat");
	socket = sock;
	
	socket.onopen = onOpen;
	socket.onmessage = onMessage;
	
	//웹소켓에 연결되었을 때 호출될 함수
	function onOpen(){
		 var empNo = document.getElementById("empNoHidden").value;
		 
	}
	
	//메세지 전송
	function sendMessage(message){
		
		
	}
	
	//메세지 수신
	function onMessage(event){
		
	}
	
	 $(document).on('keydown', 'div.chat-message textarea', function(e){
         if(e.keyCode == 13 && !e.shiftKey) {
             e.preventDefault(); // 엔터키가 입력되는 것을 막아준다.
             const message = $(this).val();  // 현재 입력된 메세지를 담는다.
               
             let search3 = $('div.chat-message textarea').val();
              
             if(search3.replace(/\s|  /gi, "").length == 0){
                   return false;
                   $('div.chat-message textarea').focus();
                }
             
             sendMessage(message);
             // textarea 비우기
             clearTextarea();
         }
    });
	
</script>
</body>
</html>