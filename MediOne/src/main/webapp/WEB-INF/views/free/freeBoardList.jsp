<%-- <%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8"
	pageEncoding="UTF-8"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<script
	src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>

<style>

#myViewBtn{
  width: 390px !important;

}
.freeViewBtn {
  width: 390px !important;
   overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  margin-left:-50px;

}

#myDataTable th {
	max-width: 250px !important;
}

.top-color {
	border-top: 3px solid #6aab9c;
}

#searchType {
	margin-left: 10px;
	height: 35px;
}

#searchWord {
	height: 35px;
}

#overflow {
	height: 500px;
	overflow-y: scroll;
}

#overflow::-webkit-scrollbar {
	display: none; /* 크롬, 사파리, 오페라, 엣지 */
}

.top-color {
	border-top: 3px solid #6aab9c;
}

.modal-lg {
	max-width: 1200px !important; /* 조정이 필요한 경우 모달 최대 너비를 조절하세요 */
}

.table-container {
	overflow-x: auto;
	overflow-y: auto; /* 세로 스크롤 추가 */
	max-height: 700px; /* 테이블의 최대 세로 길이를 조절하세요 */
	position: relative; /* 부모 컨테이너를 relative로 설정 */
}

#modalHeader {
	position: sticky;
	top: 0;
	z-index: 1; /* 스티키 헤더가 컨텐츠 위에 오도록 z-index 설정 */
	background-color: #fff; /* 스티키 헤더 배경 설정 */
}

#modalHeader th {
	background-color: #f7f7f7;
	border: 1px soilid #e9f7f4 !important;
}

.titleBtn{
  max-width: 250px !important; /* 원하는 최대 길이로 설정하세요 */
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;

}


</style>

<div class="row clearfix g-3"
	style="margin-left: -100px; margin-right: -100px; margin-top: -8px;">


	<!--2탭2열  -->
	<div class="col-lg-6">

		<div class="card mb-3 top-color" style="height: 870px; margin-right: 30px;">

			<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<div class="col-lg-3">
					<%-- <c:url value='/free/freeInsert.do' var="insertURL"></c:url> --%>
					<h4>
						<a class="fw-bold"
							href="<%=request.getContextPath()%>/free/newFreeBoard.do">
							자유게시판</a>
					</h4>

				</div>
				<div class="col-lg-9">
					<button class="btn fw-bold freeInsertBtn" style="margin-top: -10px; margin-left: -55px;">
						<i class="bi bi-pencil-square fs-4 fw-bold" style="color: #6aab9c;"></i>
					</button>
				</div>
			</div>
			<div class="card-body" id="overflow">


				<table id="myDataTable" class="table table-hover align-middle mb-0"
					style="text-align: center;">
					<thead>
						<tr>
							<th style="width: 90px;">NO.</th>
							<th style="width: 250px !important;">제목(reply)</th>
							<th>작성자</th>
							<th>작성일자</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody id="freeList">
					</tbody>
				</table>

				<table style="margin-top: 30px;">
					<tbody id="searchTable">
						<tr>
							<td>
								<div id="searchUI" style="margin-right: 1px;">
									<form id="searchForm">
										<select id="searchType" name="searchType">
											<option value="">전체</option>
											<option value="writer">작성자</option>
											<option value="title">제목</option>
											<option value="content">내용</option>
										</select> <input id="searchWord" name="searchWord" type="text" value="" />
										<input type="hidden" name="page" id="page" />
										<button class="btn btn-primary searchBtn" type="button"
											value="검색"
											style="margin-right: 10px; margin-left: 15px; margin-bottom: 2px;">검색</button>
										<!-- 데이터 전송 용도 -->
									</form>
								</div>
							</td>
						</tr>
					</tbody>
				</table>

				<div id="pagingHTML" style="margin-left: 550px; margin-top: -40px;"></div>

				<div></div>

			</div>
			<!--cardbody -->
		</div>
		<!--card  -->
	</div>
	<!--col  -->


	<!--1탭2열  -->
	<div class="col-lg-6">
		<div class="card top-color" style="height: 870px;">
			<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<div class="col-lg-3">
					<h4 class="fw-bold mb-0">
						<a class="fw-bold mb-0"
							href="<%=request.getContextPath()%>/free/newFreeBoard.do">
							Select View</a>
					</h4>

				</div>


				<div class="col-lg-9">
					<c:url value='/free/newFreeBoard.do' var="listURL"></c:url>
					<a class="btn" style="margin-top: -3px; margin-left: -70px;"
						href="${listURL}"> <i class="icofont-ui-rotation fs-4" style="color: #6aab9c;"></i></a>

				</div>


			</div>
			<div class="card-body basic-custome-color" id="freeView"></div>
		</div>

	</div>
	<!--col  -->
</div>


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script>
	const urlParams = new URLSearchParams(window.location.search);
	const recCode = urlParams.get('recCode');

	const Toast = Swal.mixin({
	    toast: true,
	    position: 'center-center',
	    showConfirmButton: false,
	    timer: 1000,
	    timerProgressBar: true,
	    didOpen: (toast) => {
	        toast.addEventListener('mouseenter', Swal.stopTimer)
	        toast.addEventListener('mouseleave', Swal.resumeTimer)
	    }
	});	


 //최초 페이징 resp를 받아서 dataList 목록 출력
		$.getJSON("<c:url value='/free/newFreeBoardList.do' />").done(function(resp) {
			let boardList=[];
			boardList=resp.dataList
			
			let pagingHTML=resp.pagingHTML
			$("#pagingHTML").html(pagingHTML);
			
			
			let simpleCondition=resp.simpleCondition;
			
		
			var tbody = $("#freeList");
			var stbody = $("#searchTable");
			tbody.empty();
			
			if (boardList.length > 0) {
				 
				$(boardList).each(function(idx, boardList) {
					let tr = $("<tr>").append(
					            $("<td>").html(boardList.rnum),
					            $("<td>").append(
					            	    $("<button class='btn fw-bold freeViewBtn'></button>")
					                    .attr("data-fcode", boardList.boardNo)
					                    .css("text-align","left")
					                    .click(function() {
					                        var boardNo = $(this).attr("data-fcode"); // 게시물 번호 가져오기
					                        loadContentView(boardNo); // 게시물 내용을 가져오는 함수 호출
					                    })
					                    .text(boardList.boardTitle + " ")
					                    .append($("<span class='badge bg-primary'></span>").text(boardList.boardCmtRecord))
					            ),
					            $("<td>").css("width","83px").html(boardList.boardWrtr),
					            $("<td>").css("width","100px").html(boardList.boardRegidateDisplay),
					            $("<td>").css("width","100px").html("<span class='text-danger'>"+boardList.boardReadcount+"</span>")
					        );
					        tbody.append(tr);
				           }); 
			} else {
				tbody.append($("<tr>").html(
						$("<td colspan='5'>").html("등록된 게시물이 없습니다.")
						));
			} /*if  */
		}); /*json  */
		
		
		
	/* 오른쪽 롤링 메인 이미지 페이지 로드  */
	var mainViewURL = "<c:url value='/free/newFreeBoardMain.do' />";
		 $.ajax({
		       type: "GET",
		       url: mainViewURL,
		       success: function(resp) {
		       	$("#freeView").empty();
		        $("#freeView").html(resp);
		           
		       },
		        error: function() {
	            console.error("An error occurred while fetching data.");
	        }
	    });
					
		
/*기본 1페이지 로드 시 사용 함수  */
function defaultPage(){
			
	$.getJSON("<c:url value='/free/newFreeBoardList.do' />").done(function(resp) {
		
		let boardList=[];
		boardList=resp.dataList
		
		let pagingHTML=resp.pagingHTML
		$("#pagingHTML").html(pagingHTML);
		
		
		let simpleCondition=resp.simpleCondition;
		
	
		var tbody = $("#freeList");
		
		var stbody = $("#searchTable");
		tbody.empty();
		

		
		if (boardList.length > 0) {
			
			$(boardList).each(function(idx, boardList) {
				let tr = $("<tr>").append(
			            $("<td>").html(boardList.rnum),
			            $("<td>").append(
			            	    $("<button id='myViewBtn' class='btn fw-bold freeViewBtn'></button>")
			                    .attr("data-fcode", boardList.boardNo)
			                    .css("text-align","left")
			                    .click(function() {
			                        var boardNo = $(this).attr("data-fcode"); // 게시물 번호 가져오기
			                        loadContentView(boardNo); // 게시물 내용을 가져오는 함수 호출
			                    })
			                    .text(boardList.boardTitle + " ")
			                    .append($("<span class='badge bg-primary'></span>").text(boardList.boardCmtRecord))
			            ),
			            $("<td>").css("width","83px").html(boardList.boardWrtr),
			            $("<td>").css("width","100px").html(boardList.boardRegidateDisplay),
			            $("<td>").css("width","100px").html("<span class='text-danger'>"+boardList.boardReadcount+"</span>")
			        );
			        tbody.append(tr);
		           }); 
		} else {
			tbody.append($("<tr>").html(
					$("<td colspan='5'>").html("등록된 게시물이 없습니다.")
					));
		} /*if  */
		
		
	}); /*json  */

}


 function fn_paging(page) {
	    searchForm.page.value = page;
	    searchForm.requestSubmit();
	}
 
	    

 <%--작성자, 내용, 제목 검색 시 searchBtn을 클릭해서 검색어를 가져옴 --%>
$(document).on("click", ".searchBtn", function(event) {
		event.preventDefault();

		 <%--검색옵션의 name 값을 가져옴 --%>
	    $("#searchUI :input[name]").each(function (idx, input) {
	        let name = input.name; // 하나의 input 태그의 name 속성
	        let value = $(input).val();
	        $(searchForm).find(`[name="${name}"]`).val(value);
	    });

	    <%-- 사용자가 검색어를 입력하면 페이지 정보는 제외하고 컨트롤러로 전달(전체 페이지에서 검색하기 위해) --%>
	
	    if ($("#searchForm input[name='searchWord']").val() !== "") {
	        $("#searchForm input[name='page']").val("");
	    }
	    
	    
	    const data = $("#searchForm").serialize();
	   
	    
	    var viewURL = "<c:url value='/free/newFreeBoardList.do' />";
	    $.ajax({
	        type: "GET",
	        url: viewURL,
	        data: data,
	        success: function(paging) {
	        	
	         <%--검색한 게시물이 있는 페이지 목록 로드 --%>
	        	pageLoad(paging);

	         <%--오른쪽 뷰는 검색한 글의 상세보기 뷰 로드 --%>
	        
	        	var responseHtml = $(paging);
	        	var boardNo = paging.dataList[0].boardNo;
	            searchContentView(boardNo);
	           
	            console.log(boardNo);
	        },
	        error: function() {
	            alert("해당되는 게시물이 없습니다.");
	        }
	    });
	});
 
 <%--페이지를 선택해서 검색하면 페이지 번호 값을 가져옴 --%>
$("#searchForm").on("submit", function (event) { /*폼 버튼 타입 버튼, 서브밋x */
	  event.preventDefault();
	  
	  const data = $("#searchForm").serialize(); /*page  */
	   
	    var viewURL = "<c:url value='/free/newFreeBoardList.do' />";
	    $.ajax({
	        type: "GET",
	        url: viewURL,
	        data: data,
	        success: function(paging) {
	        	pageLoad(paging);
	          
	        },
	        error: function() {
	        	Toast.fire({
	    		    icon: 'error',
	    		    title: '해당되는 게시물이 없습니다.'
	    		});
	        
	           
	        }
	    });
});


<%--페이지, 또는 검색어 검색 시 받은 결과물 게시물 목록 데이터를 로드--%>

function pageLoad(paging){
		
		var tbody = $("#freeList");
		var stbody = $("#searchTable");

		tbody.empty();
		let boardList=[];
		boardList=paging.dataList
		
		let pagingHTML=paging.pagingHTML
		$("#pagingHTML").html(pagingHTML);
		
		if (boardList.length > 0) {
			
			$(boardList).each(function(idx, boardList) {
				let tr = $("<tr>").append(
			            $("<td>").html(boardList.rnum),
			            $("<td>").append(
			            	    $("<button  id='myViewBtn' class='btn fw-bold freeViewBtn'></button>")
			                    .attr("data-fcode", boardList.boardNo)
			                    .css("text-align","left")
			                    .click(function() {
			                        var boardNo = $(this).attr("data-fcode"); // 게시물 번호 
			                        loadContentView(boardNo); // 게시물번호로 게시물 상세조회 출력
			                    })
			                    .text(boardList.boardTitle + " ")
			                    .append($("<span class='badge bg-primary'></span>").text(boardList.boardCmtRecord))
			            ),
			            $("<td>").css("width","83px").html(boardList.boardWrtr),
			            $("<td>").css("width","100px").html(boardList.boardRegidateDisplay),
			            $("<td>").css("width","100px").html("<span class='text-danger'>"+boardList.boardReadcount+"</span>")
			        );
			        tbody.append(tr);
		           }); 
		} else {
			Toast.fire({
    		    icon: 'error',
    		    title: '검색 조건에 해당되는 게시물이 없습니다.'
    		});
			defaultPage(); <%-- 메인 화면 출력 --%>
			
		} 
	}



function loadContentView(boardNo){
	   var viewURL = "<c:url value='/free/freeView.do' />";
	    viewURL += "?what=" + boardNo;

	    $.ajax({
	        type: "GET",
	        url: viewURL,
	        success: function(resp) {
	            $("#freeView").html(resp);
	            
	            defaultPage(); <%-- 왼쪽 게시물 목록 업데이트 --%>
	            
	        },
	        error: function() {
	        	Toast.fire({
	    		    icon: 'error',
	    		    title: '다시 시도해주세요'
	    		});
	        }
	    });
	
}


<%-- 검색 후 검색한 글 상세조회 뷰 호출--%>
function searchContentView(boardNo){
	   var viewURL = "<c:url value='/free/freeView.do' />";
	    viewURL += "?what=" + boardNo;

	    $.ajax({
	        type: "GET",
	        url: viewURL,
	        success: function(resp) {
	            $("#freeView").html(resp);
	            
	        },
	        error: function() {
	        	Toast.fire({
	    		    icon: 'error',
	    		    title: '다시 시도해주세요'
	    		});
	        }
	    });
	
}


<%-- 게시물 목록에서 게시물 클릭 시 상세조회 --%>
	$(document).on("click", ".freeViewBtn", function() {
	    var boardNo = $(this).data("fcode"); <%-- 게시물 번호 가져오기 --%>
	    var viewURL = "<c:url value='/free/freeView.do' />";
	    viewURL += "?what=" + boardNo;

	    $.ajax({
	        type: "GET",
	        url: viewURL,
	        success: function(resp) {
	            $("#freeView").html(resp);
	            
	            defaultPage(); <%-- 왼쪽 게시물 목록 업데이트 --%>
	            
	        },
	        error: function() {
	        	Toast.fire({
	    		    icon: 'error',
	    		    title: '다시 시도해주세요'
	    		});
	        }
	    });
	});  
	
	
	<%-- 이전글 상세조회 --%>
	$(document).on("click", ".preContentBtn", function() {
	    var boardNo = $(this).data("precode");  <%-- 게시물 번호 가져오기 --%>
	    
	    var viewURL = "<c:url value='/free/freeView.do' />";
	    viewURL += "?what=" + boardNo;

	    $.ajax({
	        type: "GET",
	        url: viewURL,
	        success: function(resp) {
	            $("#freeView").html(resp);
	        },
	        error: function() {
	        	Toast.fire({
	    		    icon: 'error',
	    		    title: '다시 시도해주세요'
	    		});
	        }
	    });
	});  
	
	
	<%-- 다음글 상세조회 --%>
	$(document).on("click", ".nextContentBtn", function() {
	    var boardNo = $(this).data("nextcode"); // 게시물 번호 가져오기
	    
	    var viewURL = "<c:url value='/free/freeView.do' />";
	    viewURL += "?what=" + boardNo;

	    $.ajax({
	        type: "GET",
	        url: viewURL,
	        success: function(resp) {
	            $("#freeView").html(resp);
	        },
	        error: function() {
	        	Toast.fire({
	    		    icon: 'error',
	    		    title: '다시 시도해주세요'
	    		});
	        }
	    });
	});  
	
	
	<%-- 글작성 클릭 시 글작성 form 출력 --%>
	$(document).on("click", ".freeInsertBtn", function() {
	    var viewURL = "<c:url value='/free/freeInsert.do' />";

	    $.ajax({
	        type: "GET",
	        url: viewURL,
	        success: function(resp) {
	        	$("#freeView").empty();
	            $("#freeView").html(resp);
	          
	        },
	        error: function() {
	            console.error("글 작성 중 오류 발생.");
	        }
	    });
	});  
	
	<%-- 파일첨부 게시글 INSERT --%>
	$(document).on("click", ".insertActionBtn", function() {
		
		
		    var url = $("#insertForm").attr("action");
	        var form = $('#insertForm')[0];
	        var formData = new FormData(form);
	  
		
		 var viewURL = "<c:url value='/free/freeInsert.do' />";
		 
		    $.ajax({
		        type: "POST",
		        url: viewURL,
		        data: formData,
		        processData: false, // 필요: FormData는 이미 처리되었으므로 jQuery에서 처리하지 않도록 설정
		        contentType: false, // 필요: 컨텐츠 유형 설정을 jQuery에게 맡기고 싶으므로 false로 설정
		        success: function(resp) {
		        	$("#freeView").empty();
		            $("#freeView").html(resp);
		         
	        	    defaultPage(); //왼쪽 화면 새로고침 
		        	
	        	    Toast.fire({
		    		    icon: 'success',
		    		    title: '게시물이 등록되었습니다.'
		    		});
		            
		        	
		        	 var responseHtml = $(resp);
			        
			         var boardNo = responseHtml.find('#boardNo').val();
			         viewPageLoad(boardNo); //글 상세조회 페이지 
			    
		        },
		        	error: function() {
		        	Toast.fire({
		    		    icon: 'error',
		    		    title: '제목과 내용은 필수 작성 항목입니다.'
		    				});
		        		}
		   			 });
				});
		
	
	/* 글작성 후 등록버튼 클릭 시 디비 저장 */
	/*
	$(document).on("click", ".insertActionBtn", function() {
   		   const insertForm = $("#insertForm"); 
		   const data = $(insertForm).serialize();
		   var viewURL = "<c:url value='/free/freeInsert.do' />";
		    $.ajax({
		        type: "POST",
		        url: viewURL,
		        data: data,
		        success: function(resp) {
		        	$("#freeView").empty();
		            $("#freeView").html(resp);
		            defaultPage(); //왼쪽 게시물 목록 새로고침 
		            
		        	Toast.fire({
		    		    icon: 'success',
		    		    title: '게시물이 등록되었습니다.'
		    		});
		        	
		          
		        },
		        error: function() {
		        	Toast.fire({
		    		    icon: 'error',
		    		    title: '제목과 내용은 필수 작성 항목입니다.'
		    		});
		        }
		    });
	});
	
	*/
	
	
	/* 댓글 작성 후 등록버튼 클릭 시 저장 */
	$(document).on("click", ".commentBtn", function() {
			 const commentForm = $("#commentForm"); 
			 const boardNo = commentForm.find('input[name="boardNo"]').val(); 
			 
			const data = $(commentForm).serialize();
			
			
		    var viewURL = "<c:url value='/free/cmtInsert.do' />";
			
		    $.ajax({
		        type: "POST",
		        url: viewURL,
		        data: data,
		        success: function(resp) {
		        	Toast.fire({
		    		    icon: 'success',
		    		    title: '댓글이 등록되었습니다.'
		    		});
		        	viewPageLoad(boardNo);/*글상세보기 페이지 로드  */
  		            defaultPage();	/*게시물목록 새로고침  */
		        },
		        error: function() {
		        	 alert("댓글 내용을 입력해주세요");
		            console.error("An error occurred while fetching data.");
		        }
		    });
	});
	
	

	/* 댓글 수정 후 등록버튼 클릭 시 저장 */
	$(document).on("click", ".commentUpdateBtn", function() {
		
			 const commentForm = $("#commentUpdateForm"); 
			 const boardNo = commentForm.find('input[name="boardNo"]').val(); 
			 
			const data = $(commentForm).serialize();
			
			
		    var viewURL = "<c:url value='/free/cmtUpdate.do' />";
			
		    $.ajax({
		        type: "POST",
		        url: viewURL,
		        data: data,
		        success: function(resp) {
		        	Toast.fire({
		    		    icon: 'success',
		    		    title: '댓글을 수정하였습니다.'
		    		});
		        	
		        	$('.modal-backdrop').remove();
 	        	    $('#exampleModalXl').modal('hide');
		        	viewPageLoad(boardNo); /*오른쪽 해당 글 상세보기  */
		         
		        },
		        error: function() {
		        	Toast.fire({
		    		    icon: 'error',
		    		    title: '댓글을 수정하는 도중 문제가 발생했습니다. 다시 시도해주시기 바랍니다.'
		    		});
		        	
		            console.error("An error occurred while fetching data.");
		        }
		    });
	});
	
	
	/* 글 수정 클릭 시 수정form 화면 출력 */
	$(document).on("click", ".freeUpdateBtn", function() {
		    
        var boardNo = $(this).data("ucode"); // 게시물 번호 가져오기
		
		
		  var viewURL = "<c:url value='/free/freeUpdate.do' />";
		    viewURL += "?what=" + boardNo;

	    $.ajax({
	        type: "GET",
	        url: viewURL,
	        success: function(resp) {
	        	$("#freeView").empty();
	            $("#freeView").html(resp);
	            var responseHtml = $(resp);
	            var boardContent = responseHtml.find('#boardContent').val();
	          

	        },
	        error: function() {
	            console.error("An error occurred while fetching data.");
	        }
	    });
	});  
	
	
	/* 글 수정 후 등록버튼 클릭 시 디비 업데이트 */
	$(document).on("click", ".freeUpdateActionBtn", function() {
		
		/* const editForm = $("#freeEditForm"); 
		   const boardNo = editForm.find('input[name="boardNo"]').val(); 
		   const data = $(freeEditForm).serialize();
		   console.log(data);
		    */
		    
		    
		    var url = $("#freeEditForm").attr("action");
	        var form = $('#freeEditForm')[0];
	       
	        
	        var formData = new FormData(form);
	        
		
		   var viewURL = "<c:url value='/free/freeUpdate.do' />";
		    $.ajax({
		        type: "POST",
		        url: viewURL,
		        data: formData,
		        processData: false, // 필요: FormData는 이미 처리되었으므로 jQuery에서 처리하지 않도록 설정
		        contentType: false, // 필요: 컨텐츠 유형 설정을 jQuery에게 맡기고 싶으므로 false로 설정
		        success: function(resp) {
		        	$("#freeView").empty();
		            $("#freeView").html(resp);
		            Toast.fire({
		    		    icon: 'success',
		    		    title: '게시물을 등록하였습니다.'
		    		});
		        	
		            defaultPage(); /* 왼쪽 목록 새로고침 */
		         
		        },
		        error: function() {
		        	Toast.fire({
		    		    icon: 'error',
		    		    title: '게시물 등록에 실패하였습니다. 다시 시도해 주시기 바랍니다.'
		    		});
		        	
		            console.error("An error occurred while fetching data.");
		        }
		    });
	});
	
	
/*댓글 수정 후 뷰 페이지 새로고침  */
function viewPageLoad(boardNo){
	    
	    var viewURL = "<c:url value='/free/freeView.do' />";
	    viewURL += "?what=" + boardNo;

	    $.ajax({
	        type: "GET",
	        url: viewURL,
	        success: function(resp) {
	            $("#freeView").empty();
	            $("#freeView").html(resp);
	        },
	        error: function() {
	            console.error("An error occurred while fetching data.");
	        }
	    });
		
	}
	
/*댓글 삭제 */
	$(document).on("click", ".cmtDeleteBtn", function() {
		
		Swal.fire({
			   text:'정말 댓글을 삭제하시겠습니까?',
			   icon: 'warning',
			   
			   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
			   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
			   cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
			   confirmButtonText: '삭제', // confirm 버튼 텍스트 지정
			   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
			}).then(result => { 
			   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
		
	    var boardNo = $(this).data("dcode"); // 게시물 번호 가져오기
	    var cmtNo = $(this).data("ccode"); // 게시물 번호 가져오기
		
		  var viewURL = "<c:url value='/free/cmtDelete.do' />";
		    viewURL += "?what=" + cmtNo;

	    $.ajax({
	        url: viewURL,
	        success: function(resp) {
	        	Toast.fire({
	    		    icon: 'success',
	    		    title: '댓글을 삭제하였습니다.'
	    		});
	        	
	        viewPageLoad(boardNo); /*오른쪽 해당 글 상세보기  */
	        defaultPage(); /* 왼쪽 목록 새로고침 */
	        },
	        error: function() {
	        	Toast.fire({
	    		    icon: 'error',
	    		    title: '댓글 삭제에 실패하였습니다. 다시 시도해주시기 바랍니다.'
	    		});
	        }
	    }); 
	 }
   });
});  
	
	
	/*게시글 삭제 */
		$(document).on("click", ".freeDeleteBtn", function() {
			Swal.fire({
				   text:'정말 글을 삭제하시겠습니까?',
				   icon: 'warning',
				   
				   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
				   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
				   cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
				   confirmButtonText: '삭제', // confirm 버튼 텍스트 지정
				   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
				}).then(result => { 
				   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
			
		      var boardNo = $(this).data("fdcode"); // 게시물 번호 가져오기
			
			  var viewURL = "<c:url value='/free/freeDelete.do' />";
			    viewURL += "?what=" + boardNo;

		    $.ajax({
		        url: viewURL,
		        success: function(resp) {
		        	Toast.fire({
		    		    icon: 'success',
		    		    title: '게시물을 삭제하였습니다.'
		    		});
		        	 setTimeout(function() {
		                 location.reload();
		             }, 2000); // 2초 후에 리로드 실행 (2000 밀리초 = 2초)
		        },
		        error: function() {
		            Toast.fire({
		                icon: 'error',
		                title: '게시물 삭제에 실패하였습니다. 다시 시도해주시기 바랍니다.'
		            });
		        }
		    }); 
	     }
	 });
});  


</script>

