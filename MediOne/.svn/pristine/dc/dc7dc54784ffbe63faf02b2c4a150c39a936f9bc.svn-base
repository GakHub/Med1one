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
<script src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<style>

#fileDownload{

margin-right: 30px;
font-weight: 700;

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

#modalHeader th{
background-color: #f7f7f7;
border: 1px soilid #e9f7f4 !important;

}

</style>

<div class="row clearfix g-3"
	style="margin-left: -100px; margin-right: -100px; margin-top: 20px;">
	<!--1탭2열  -->
	<div class="col-lg-4">

		<div class="card top-color"
			style="margin-right: 20px;; height: 260px; margin-bottom: 20px;">
			<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">신규등록</h6>
			</div>
			<div class="card-body basic-custome-color">

				<form id="fileUploadForm"
					action="${pageContext.request.contextPath}/sales/newFileUploadExcel.do"
					method="post" enctype="multipart/form-data">
					<input class="form-control" type="file" name="file"
						accept=".xlsx, .xls" required> <br>
					<div style="display: flex;">
						<input class="form-control" type="text" name="empNo"
							placeholder="담당자 사번 ex) admin01" style="margin-right: 20px;"
							required> <input class="form-control" type="text"
							name="fileTitle" placeholder="등록할 파일 제목" required>
					</div>
					<input class="form-control" type="hidden" name="newFileId">
					<br>
					<button type="submit" class="btn btn-success"
						style="margin-left: 460px;">등록</button>
				</form>
			</div>
		</div>


		<div class="card top-color" style="margin-right: 20px; height: 520px;">
			<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">파일목록</h6>
			</div>
			<div class="card-body basic-custome-color">
				<table id="myDataTable" class="table table-hover align-middle mb-0"
					style="text-align: center;">
					<thead>
						<tr>
							<th>NO.</th>
							<th>파일제목</th>
							<th>담당자</th>
							<th>등록일자</th>
							<th>&nbsp;&nbsp;</th>
						</tr>
					</thead>
					<tbody id="fileList">

					</tbody>
				</table>
			</div>
		</div>

	</div>
	<!--col  -->

	<!--2탭2열  -->
	<div class="col-lg-8">
		<div class="card mb-3 top-color" style="height: 800px;">
			<div
				class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
				<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">상세조회</h6>
				<div id="fileDownload"></div>
			</div>
			<div class="card-body" id="overflow">
				<table id="myProjectTable"
					class="table table-hover align-middle mb-0"
					style="text-align: center;">
					<thead id="fileInfoHead">
					</thead>
					<tbody id="fileInfo">
					</tbody>
				</table>
			</div>
			<!--cardbody -->
		</div>
		<!--card  -->
	</div>
	<!--col  -->
</div>

<!-- 파일 삭제 확인 Modal 영역 -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<a class="modal-title" id="exampleModalLabel">파일 삭제</a>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>


			<div class="modal-body">
				<h5>선택하신 파일을 삭제하시겠습니까?</h5>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">취소</button>
				<button type="submit" class="btn btn-danger modalDeleteBtn">삭제</button>
			</div>


		</div>
	</div>
</div>
<!-- 파일 삭제 확인 Modal 영역 -->




<!-- 파일 수정 모달 팝업 -->

<div class="modal" id="exampleModalXl">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">파일 정보 수정</h5>
			</div>
			<div class="modal-body" id="formArea">
				<form id="editForm">
					<div class="table-container">
						<table class="table" style="text-align: center;">
							<thead id="modalHeader">
								<!-- 테이블 헤더 내용 -->
							</thead>
							<tbody id="modalBody">
								<!-- 테이블 바디 내용 -->
							</tbody>
						</table>
					</div>
					
		
				
				<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-primary" id="modalUpdateBtn" data-ftcode="fileTitle">수정</button>
				
				</div>
						</form>
			</div>
		</div>
	</div>
</div>




<!-- Plugin Js-->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
//toast
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

</script>


<!--파일수정  -->
<script>
$(document).on("click", ".editBtn", function() {
    var fileTitle = $(this).data("title");
    console.log(fileTitle);
    
    $.getJSON("<c:url value='/sales/newFileInfo.do' />", {
        fileTitle: fileTitle
    }).done(function(resp) {
    	
        console.log(resp);

        var thead = $("#modalHeader");
        var tbody = $("#modalBody");

        tbody.empty();
        thead.empty();

        if (resp.length > 0) {

            var theadRow = $("<tr>");
            theadRow.append(
               
                $("<th>").append(resp[0].fileTitle !== null ? $("<input type='hidden' name='fileTitle'>").val(resp[0].fileTitle) : ""),
                $("<th>").append(resp[0].newFileId !== null ? $("<input type='hidden' name='newFileId'>").val(resp[0].newFileId) : ""),
                $("<th>").append(resp[0].empNo !== null ? $("<input type='hidden' name='empNo'>").val(resp[0].empNo) : ""),
                $("<th>").append($("<input name='fileCol1'>").val(resp[0].fileCol1)),
                $("<th>").append($("<input name='fileCol2'>").val(resp[0].fileCol2)),
                $("<th>").append(resp[0].fileCol3 !== null ? $("<input name='fileCol3'>").val(resp[0].fileCol3) : ""),
                $("<th>").append(resp[0].fileCol4 !== null ? $("<input name='fileCol4'>").val(resp[0].fileCol4) : ""),
                $("<th>").append(resp[0].fileCol5 !== null ? $("<input name='fileCol5'>").val(resp[0].fileCol5) : ""),
                $("<th>").append(resp[0].fileCol6 !== null ? $("<input name='fileCol6'>").val(resp[0].fileCol6) : ""),
                $("<th>").append(resp[0].fileCol7 !== null ? $("<input name='fileCol7'>").val(resp[0].fileCol7) : ""),
                $("<th>").append(resp[0].fileCol8 !== null ? $("<input name='fileCol8'>").val(resp[0].fileCol8) : "")
            
            );
            thead.empty().append(theadRow);
          
            $(resp.slice(1)).each(function(idx,fileList) {
            	  let tr = $("<tr>").append(
                          $("<td>").append(fileList.fileTitle !== null ? $("<input type='hidden' name='fileTitle'>").val(fileList.fileTitle) : ""),
                          $("<td>").append(fileList.newFileId !== null ? $("<input type='hidden' name='newFileId'>").val(fileList.newFileId) : ""),
                          $("<td>").append(fileList.empNo !== null ? $("<input type='hidden' name='empNo'>").val(fileList.empNo) : ""),
                          $("<td>").append($("<input name='fileCol1'>").val(fileList.fileCol1)),
                          $("<td>").append($("<input name='fileCol2'>").val(fileList.fileCol2)),
                          $("<td>").append(fileList.fileCol3 !== null ? $("<input name='fileCol3'>").val(fileList.fileCol3) : ""),
                          $("<td>").append(fileList.fileCol4 !== null ? $("<input name='fileCol4'>").val(fileList.fileCol4) : ""),
                          $("<td>").append(fileList.fileCol5 !== null ? $("<input name='fileCol5'>").val(fileList.fileCol5) : ""),
                          $("<td>").append(fileList.fileCol6 !== null ? $("<input name='fileCol6'>").val(fileList.fileCol6) : ""),
                          $("<td>").append(fileList.fileCol7 !== null ? $("<input name='fileCol7'>").val(fileList.fileCol7) : ""),
                          $("<td>").append(fileList.fileCol8 !== null ? $("<input name='fileCol8'>").val(fileList.fileCol8) : "")
                      );

                tbody.append(tr);
                
             
            });

                        
        } else {
            tbody.append($("<tr>").html(
                $("<td colspan='8'>").html("선택한 자료의 정보가 존재하지 않습니다.")
            ));
        }

        // 모달 창 열기
        $("#exampleModalXl").modal("show");
    }); /*getJson  */
});



// 변경 사항 저장 버튼 클릭 시 서버에 수정 요청 보내기
$("#modalUpdateBtn").click(function() {
	 event.preventDefault();
	 var jsonData = [];
	 const editForm = $("#editForm"); 
	 const fileTitle = editForm.find('input[name="fileTitle"]').val(); 
	 
	
	

	// Collect data from hidden input fields within the table
	$("#modalBody tr").each(function() {
	    var item = {
	        fileTitle: $(this).find("input[name='fileTitle']").val(),
	        newFileId: $(this).find("input[name='newFileId']").val(),
	        fileCol1: $(this).find("input[name='fileCol1']").val(),
	        fileCol2: $(this).find("input[name='fileCol2']").val(),
	        fileCol3: $(this).find("input[name='fileCol3']").val(),
	        fileCol4: $(this).find("input[name='fileCol4']").val(),
	        fileCol5: $(this).find("input[name='fileCol5']").val(),
	        fileCol6: $(this).find("input[name='fileCol6']").val(),
	        fileCol7: $(this).find("input[name='fileCol7']").val(),
	        fileCol8: $(this).find("input[name='fileCol8']").val(),
	    };
	    jsonData.push(item);
	});

	
	$("#modalHeader tr").each(function() {
	    var item2 = {
	        fileTitle: $(this).find("input[name='fileTitle']").val(),
	        newFileId: $(this).find("input[name='newFileId']").val(),
	        fileCol1: $(this).find("input[name='fileCol1']").val(),
	        fileCol2: $(this).find("input[name='fileCol2']").val(),
	        fileCol3: $(this).find("input[name='fileCol3']").val(),
	        fileCol4: $(this).find("input[name='fileCol4']").val(),
	        fileCol5: $(this).find("input[name='fileCol5']").val(),
	        fileCol6: $(this).find("input[name='fileCol6']").val(),
	        fileCol7: $(this).find("input[name='fileCol7']").val(),
	        fileCol8: $(this).find("input[name='fileCol8']").val(),
	    };
	    jsonData.push(item2);
	});
	

	var arrayOfJsonData = [];

	// jsonData의 각 항목을 순회하면서 객체를 생성하여 배열에 추가
	jsonData.forEach(function(item) {
	    var dataToSend = {
	        fileTitle: item.fileTitle,
	        newFileId: item.newFileId,
	        fileCol1: item.fileCol1,
	        fileCol2: item.fileCol2,
	        fileCol3: item.fileCol3,
	        fileCol4: item.fileCol4,
	        fileCol5: item.fileCol5,
	        fileCol6: item.fileCol6,
	        fileCol7: item.fileCol7,
	        fileCol8: item.fileCol8,
	    };
	    arrayOfJsonData.push(dataToSend);
	});

	// 이 코드를 실행하면 여러 개의 JSON 객체가 배열로 출력
	console.log("arrayOfJsonData:",arrayOfJsonData);
	
	
	    $.ajax({
	        type: "POST",
	        url: "<c:url value='/sales/updateFile.do' />",
	        contentType: "application/json",
	        data: JSON.stringify(arrayOfJsonData),
	        success: function(resp) {
	        	
				if(resp){
					
					  $("#exampleModalXl").modal('hide');
					 Swal.fire({
		                    text: '수정을 완료하였습니다.',
		                    icon: 'success'
		                });
					 
					  // 모달이 완전히 닫힌 후에 Swal.fire() 호출
		            $("#exampleModalXl").on("hidden.bs.modal", function () {
		               
		            }).modal("hide");
					  
		            // 오른쪽 뷰(수정한 파일을 수정한 내용으로) 리로드
					selectFileLoad(fileTitle);
					
		        }
		    },
	        error: function(xhr, status, error) {
	            // Handle error
	        }
	    });
	});	 

   
</script>



<script>

/* 파일 삭제 클릭 시 확인 모달창 */
$(document).on("click", ".deleteBtn", function() {
	
	
	Swal.fire({
		   text:'정말 파일을 삭제하시겠습니까?',
		   icon: 'warning',
		   
		   showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
		   confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
		   cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
		   confirmButtonText: '삭제', // confirm 버튼 텍스트 지정
		   cancelButtonText: '취소', // cancel 버튼 텍스트 지정
		   
		   
		}).then(result => { 
		   if (result.isConfirmed) { // 만약 모달창에서 confirm 버튼을 눌렀다면
	
	  var deleteButton = $(this);
	  var fileTitle = $(this).data("title");

	        
	        $.getJSON("<c:url value='/sales/deleteFile.do' />", {
	            fileTitle: fileTitle
	        }).done(function(resp) {
	            if (resp) {
	            	Swal.fire({
	   	    			  text: '파일이 삭제되었습니다.', 
	   	    			  icon: 'success'                       
	   	    			});
	            
	                // Update the file list
	                updateFileList();
	                location.reload();
	            } else {
	            	Swal.fire({
	   	    			  text: '파일 삭제 중 오류가 발생했습니다.', 
	   	    			  icon: 'error'                       
	   	    			});
	            } /*else  */
	        });/*json  */

		   }
		});
});  

/* 저장된 파일 목록 출력 */
$.getJSON("<c:url value='/sales/allFileList.do' />").done(function(resp) {
	
	console.log(resp);

	var tbody = $("#fileList");
	
	tbody.empty();

	if (resp.length > 0) {

		$(resp).each(function(idx,fileList) {
			let tr = $("<tr>").append(
			            $("<td>").text(fileList.rnum),
			            $("<td>").append(
			                $("<button class='btn-success selectBtn'>")
			                    .attr("data-title", fileList.fileTitle)
			                    .text(fileList.fileTitle)
			            ),
			            $("<td>").text(fileList.empNo),
			            $("<td>").text(fileList.fileDate),
			            $("<td>").append(
			                $("<button class='btn btn-success editBtn'>")
			                    .attr("data-bs-toggle", "modal")
			                    .attr("data-title", fileList.fileTitle)
			                    .append($("<i class='icofont-edit'>")),
			                $("<button class='btn btn-danger deleteBtn'>")
			                    .attr("data-bs-toggle", "modal")
			                    .attr("data-title", fileList.fileTitle)
			                    .css("margin-left", "10px")
			                    .append($("<i class='icofont-ui-delete'>"))
			            )
			        );
					
			        tbody.append(tr);
			        
		           });
	} else {
		tbody.append($("<tr>").html(
				$("<td colspan='4'>").html("등록한 자료가 없습니다.")
				));
	}
}); /*getJson  */


/*파일목록 업데이트  */

function updateFileList() {
		$.getJSON("<c:url value='/sales/allFileList.do' />").done(function(resp) {
			var tbody = $("#fileList");
			tbody.empty();
			if (resp.length > 0) {
				$(resp).each(function(idx,fileList) {
					let tr = $("<tr>").append(
					            $("<td>").text(fileList.rnum),
					            $("<td>").append(
					                $("<button class='btn-success selectBtn'>")
					                    .attr("data-title", fileList.fileTitle)
					                    .text(fileList.fileTitle)
					            ),
					            $("<td>").text(fileList.empNo),
					            $("<td>").text(fileList.fileDate),
					            $("<td>").append(
					                $("<button class='btn btn-success editBtn'>")
					                    .attr("data-bs-toggle", "modal")
					                    .attr("data-title", fileList.fileTitle)
					                    .append($("<i class='icofont-edit'>")),
					                $("<button class='btn btn-danger deleteBtn'>")
					                    .attr("data-bs-toggle", "modal")
					                    .attr("data-title", fileList.fileTitle)
					                    .css("margin-left", "10px")
					                    .append($("<i class='icofont-ui-delete'>"))
					            )
					        );
							
					        tbody.append(tr);
					        
				           });
			} else {
				tbody.append($("<tr>").html(
						$("<td colspan='4'>").html("등록한 자료가 없습니다.")
						));
			}
		}); /*getJson  */

		}
		
	/*페이징  */
	
	$("#fileUploadForm").submit(function() {
    event.preventDefault(); 

    var form = $(this);
    var url = form.attr("action");
    var formData = new FormData(form[0]);
	const fileTitle = form.find('input[name="fileTitle"]').val(); 
	 
    
    $.ajax({
        type: "POST",
        url: url,
        data: formData,
        contentType: false,
        processData: false, 
        dataType: "text", 
        success: function(resp) {
            console.log(resp);
            if (resp === "success") {
            	Swal.fire({
 	    			  text: '파일을 등록에 성공하였습니다.', 
 	    			  icon: 'success'                       
 	    			});
                updateFileList(); //왼쪽 파일 목록창 업데이트
                selectFileLoad(fileTitle); //오른쪽 파일조회 화면 업데이트
                
            } else {
            	Swal.fire({
	    			  text: '파일 등록 중 오류가 발생하였습니다. 다시 시도해주시기 바랍니다.', 
	    			  icon: 'error'                       
	    			});
            }
        },
        error: function(xhr, status, error) {
            console.log(error);
            Swal.fire({
  			  text: '파일 등록 중 오류가 발생하였습니다.', 
  			  icon: 'error'                       
  			});
        }
    });
});
	
</script>




<script>
loadTable();
function loadTable(){
	
var thead = $("#fileInfoHead");
var tbody = $("#fileInfo");
thead.empty();
tbody.empty();
tbody.append($("<tr>").html(
		$("<td colspan='5'>").html("파일목록에서 조회하고 싶은 파일을 선택해주세요")
		));
}




/*파일 선택 시 로드  */
	$(document).on("click", ".selectBtn", function() {
		var fileTitle = $(this).data("title");
		
		$.getJSON("<c:url value='/sales/newFileInfo.do' />", {
			fileTitle : fileTitle
		}).done(function(resp) {
			
			console.log(resp);

			var thead = $("#fileInfoHead");
			var tbody = $("#fileInfo");
			var fileDownloadDiv = $("#fileDownload"); 
			   
			tbody.empty();
			thead.empty();
			fileDownloadDiv.empty(); 

			if (resp.length > 0) {
				
				//다운로드 버튼
				var fileDownloadBtn = $("<button type='button' class='btn btn-success fileDownloadBtn'>파일다운로드</button>")
			    .attr("data-dcode", fileTitle);
			     $("#fileDownload").append(fileDownloadBtn);
				

				var theadRow = $("<tr>");
				theadRow.append(
								$("<th>").html(resp[0].fileCol1),
								$("<th>").html(resp[0].fileCol2),
								resp[0].fileCol3 !== null ? $("<th>").html(resp[0].fileCol3): "",
								resp[0].fileCol4 !== null ? $("<th>").html(resp[0].fileCol4): "",
								resp[0].fileCol5 !== null ? $("<th>").html(resp[0].fileCol5): "",
								resp[0].fileCol6 !== null ? $("<th>").html(resp[0].fileCol6): "",
								resp[0].fileCol7 !== null ? $("<th>").html(resp[0].fileCol7): "",
								resp[0].fileCol8 !== null ? $("<th>").html(resp[0].fileCol8): ""
					    		);
				thead.empty().append(theadRow);

				// Create tbody rows
				$(resp.slice(1)).each(function(idx,info) {
					let tr = $("<tr>").append(
						     $("<td>").html(info.fileCol1),
							 $("<td>").html(info.fileCol2),
							info.fileCol3 !== null ? $("<td>").html(info.fileCol3): "",
							info.fileCol4 !== null ? $("<td>").html(info.fileCol4): "",
							info.fileCol5 !== null ? $("<td>").html(info.fileCol5): "",
							info.fileCol6 !== null ? $("<td>").html(info.fileCol6): "",
							info.fileCol7 !== null ? $("<td>").html(info.fileCol7): "",
							info.fileCol8 !== null ? $("<td>").html(info.fileCol8): ""
									);
							
					        tbody.append(tr);
				           });
			
				
			} else {
				tbody.append($("<tr>").html(
						$("<td colspan='11'>").html("선택한 자료의 정보가 존재하지 않습니다.")
						));
			}
		}); /*getJson  */
	})
	
	
	
	
/*파일 다운로드   */	
$(document).on("click", ".fileDownloadBtn", function() {

	var fileTitle = $(this).data("dcode");
	var downloadUrl = "${pageContext.request.contextPath}/sales/selectFileDownload.do?fileTitle=" + fileTitle;

	
	//loadingOverlay 라이브러리 실행
	$.LoadingOverlay("show", {
        image: "<%=request.getContextPath() %>/resources/images/mainSpinnerIcon.gif" // 로딩 중에 표시될 이미지 경로
        ,imageAnimation: false  //빙글빙글 돌아가는거 막음
    });

    // 1초 후에 함수 실행
    setTimeout(function () {
	
	
	// 파일 다운로드 요청
	window.location.href = downloadUrl;
	

	 // LoadingOverlay 숨기기
   	$.LoadingOverlay("hide");
   	}, 1000); // 1초 후에 실행
   	
   }); /*function  */
	

	
	
	
	
	
	
/*수정한 후 수정한 파일 내용 리로드*/
function selectFileLoad(fileTitle) {
	
		console.log(fileTitle);
		
		$.getJSON("<c:url value='/sales/newFileInfo.do' />", {
			fileTitle : fileTitle
		}).done(function(resp) {
			
			console.log(resp);

			var thead = $("#fileInfoHead");
			var tbody = $("#fileInfo");
			
			tbody.empty();
			thead.empty();

			if (resp.length > 0) {

				var theadRow = $("<tr>");
				theadRow.append(
								$("<th>").html(resp[0].fileCol1),
								$("<th>").html(resp[0].fileCol2),
								resp[0].fileCol3 !== null ? $("<th>").html(resp[0].fileCol3): "",
								resp[0].fileCol4 !== null ? $("<th>").html(resp[0].fileCol4): "",
								resp[0].fileCol5 !== null ? $("<th>").html(resp[0].fileCol5): "",
								resp[0].fileCol6 !== null ? $("<th>").html(resp[0].fileCol6): "",
								resp[0].fileCol7 !== null ? $("<th>").html(resp[0].fileCol7): "",
								resp[0].fileCol8 !== null ? $("<th>").html(resp[0].fileCol8): ""
					    		);
				thead.empty().append(theadRow);

				// Create tbody rows
				$(resp.slice(1)).each(function(idx,info) {
					let tr = $("<tr>").append(
						     $("<td>").html(info.fileCol1),
							 $("<td>").html(info.fileCol2),
							info.fileCol3 !== null ? $("<td>").html(info.fileCol3): "",
							info.fileCol4 !== null ? $("<td>").html(info.fileCol4): "",
							info.fileCol5 !== null ? $("<td>").html(info.fileCol5): "",
							info.fileCol6 !== null ? $("<td>").html(info.fileCol6): "",
							info.fileCol7 !== null ? $("<td>").html(info.fileCol7): "",
							info.fileCol8 !== null ? $("<td>").html(info.fileCol8): ""
									);
							
					        tbody.append(tr);
				           });
			} else {
				tbody.append($("<tr>").html(
						$("<td colspan='11'>").html("선택한 자료의 정보가 존재하지 않습니다.")
						));
			}
		}); /*getJson  */
}
	
	

	/*페이징  */
	$(document).ready(function() {
		$('#myProjectTable').addClass('nowrap').dataTable({
			responsive : true,
			columnDefs : [ {
				targets : [ -1, -3 ],
				className : 'dt-body-right'
			} ]
		});

		$('#myDataTable').addClass('nowrap').dataTable({
			responsive : true,
			columnDefs : [ {
				targets : [ -1, -3 ],
				className : 'dt-body-right'
			} ]
		});

	});
	

	
</script>

