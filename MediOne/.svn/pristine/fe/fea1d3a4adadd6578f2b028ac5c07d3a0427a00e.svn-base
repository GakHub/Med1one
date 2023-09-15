<%@page import="java.util.Locale"%>
<%@page import="java.time.format.TextStyle"%>
<%@page import="java.time.DayOfWeek"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<style>

 /* 모달 창 스타일 */
    .modal-content {
/*         background-color: rgba(0, 0, 0, 0.6);  */
        width: 80%;
        margin: 0 auto;
        position: relative;
        padding: 0;
    }

    /* 로고 이미지 스타일 */
    .logoImage {
        display: flex;
        justify-content: center;
        align-items: center;
        opacity: 0.2;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 1;
    }


.inspImg{
	width: 350px;
}
.top-color {
	border-top: 3px solid #6aab9c;
}

.noteBtn {
	float: right;
	margin-top: 7px;
}

.swal2-title {
	font-size: 1.70em;
}

.pill {
	padding: 0.5em 2em;
	border-radius: 2.5rem;
}

.pmtCo {
	background-color: #ff9148 !important;
}
</style>
<security:authorize access="isAuthenticated()">
	<security:authentication property="principal.realUser" var="authMember" />
	<div style="display: none;">
		<h6>${authMember.empNm}간호사</h6>
	</div>
</security:authorize>


<!-- 컨테이너  -->
<div class="container-xxl">
	<div class="row g-3 mb-3 custom-box" style="">
		<div class="col-md-12 col-lg-6" style="width: 50%; float: left;">
			<div class="card-header py-3 bg-transparent border-bottom-0" style="padding-left: 0px; margin-bottom: -10px;">
				<input type="search" class="form-control" id="searchForm" list="inPatntList" name="patnt" placeholder="환자 검색" autocomplete="off" style="width: 758px; margin-top: -16px; border-top: 3px solid #6aab9c" />
				<datalist id="inPatntList"></datalist>
			</div>
			<div class="card mb-3  top-color" style="margin-right: 20px; width:758px">
				<div
					class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0" style="42px">
					<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;  ">환자 정보</h6>
				</div>
				<table class="table table-hover align-middle mb-0" style="height: 141px;">
					<thead>
						<tr>
							<th>식별코드</th>
							<th>성 명</th>
							<th>호실</th>
							<th>침상번호</th>
							<th>나이</th>
							<th>키</th>
							<th>몸무게</th>
							<th>입원날짜</th>
							<th>퇴원예정날짜</th>
							<th>담당의</th>
						</tr>
					</thead>
					<tbody class="inPatnt"></tbody>
				</table>
			</div>
			<div class="col-md-12 col-lg-6"
				style="width: 97%; height: 570px; flex-grow: 1;">
				<div class="card h-100  top-color">
					<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0" style="margin-top: 12px;">
						<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;  ">처방내역</h6>
					</div>
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<th style="width:550px">약품명</th>
									<th>투약량</th>
									<th style="width:100px">투약횟수</th>
								</tr>
							</thead>
							<tbody class="presList">
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="row g-3 mb-3" style="height: 87vh; width: 50%">
			<div class="col-md-4 col-lg-4" style="width: 100%; height: 100%;">
 
				<div class="card top-color" style="height: 30%; margin-bottom: 15px">
					<!-- card top-color start -->
					<div
						class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
						<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;  " data-bs-toggle="tooltip" data-bs-placement="bottom" title="test!">환자기록 작성</h6>
					</div>
					<div class="card-body">
						<div id="#">
							<button type="button" id="vitalModalBtn" class="btn-light py-2 input-group" style="margin-bottom: 1em;">바이탈 기록지</button>
							<button type="button" id="dietIOModalBtn" class="btn-light py-2 input-group" style="margin-bottom: 1em;">식이, I/O 기록지</button>
							<button type="button" id="inspModalBtn" class="btn-light py-2 input-group" style="margin-bottom: 1em;">검사 기록지</button>
							<div></div>
						</div>
					</div>
				</div>

				<div class="card top-color" style="height: 68%;">
					<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
						<div class="d-flex justify-content-between align-items-center" style="width: 100%;">
							<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c; margin-top:10px;">간호일지 작성</h6>
							<div class="col-md-6" style="margin-top: 7px;">
								<select name="nurwkCode" id="workSel" class="form-select mb-0" style="width: fit-content; margin-left:30px; ">
									<option value="N01">데이</option>
									<option value="N02">이브닝</option>
									<option value="N03">나이트</option>
								</select>
							</div>
								
							<table style="margin-left: auto;">
								<i class="far fa-clock"></i>
								<span id="currentTime"></span>
							</table>
						</div>
					</div>
					<div class="card-body">
						<div id="#">
							<div>
<!-- 								<h5>인수인계</h5> -->
								<div class="card-body" style="height:200px">
									<table class="table">
										<tbody id="nurseNote"></tbody>
									</table>
								</div>
							</div>
							<div>
								<form id="nurseNoteForm">
									<textarea class="form-control" id="nurseNoteFormTextarea" rows="10" placeholder="간호일지 인수인계 작성." style="height:200px"></textarea>
									<input type="submit" id="nurseNoteBtn" class="btn btn-primary noteBtn" value="저장" />
								</form>
									<button class="btn btn-primary" style="margin-top:7px;" onclick="window.open('<%=request.getContextPath()%>/nurse/nurseNoteAllList.do','window_name','width=1300,height=800,left = 600,top=100,left=250px,location=no,status=no,scrollbars=yes')">이전일지 조회</button>
							</div>
						</div>
					</div>
				</div>
				<!-- card top-color end -->
			</div>
		</div>
	</div>
</div>

<!-- 바이탈 Modal -->
<div class="modal fade" id="vitalModal" tabindex="-1"
    aria-labelledby="vitalModal" style="display: none; z-index: 1060;"
    aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-body">
                <div class="col-md-12 col-lg-6">
                    <div class="card mb-3" style="width: 885px; height: 690px;">
						<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0" style="height: 0px;">
							<h4 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">바이탈 기록지</h4>
						</div>
						<div class="card-body">
							<!-- 환자 -->
							<div class="tab-pane" id="tab6" role="tabpanel" aria-labelledby="tab6-tab">
								<table class="table table-hover align-middle mb-0" style="height: 163px;">
									<thead>
										<tr>
											<th id="patntCode" style="width: 100px;">환자 코드</th>
											<th id="patntNm" style="text-align: center;">성명</th>
											<th id="patntIdentino" style="text-align: center;">주민번호</th>
											<th id="patntAge" style="width: 55px;">나이</th>
											<th id="gen" style="width: 55px;">성별</th>
											<th id="hsptlzTotal">HOD</th>
											<th id="clinicContent" style="text-align: center;">진단명</th>
										</tr>
									</thead>
									<tbody class="inModal">
									</tbody>
								</table>
							</div>
							<!-- 환자 end -->
							<!-- 바이탈 기록 -->
							<div class="tab-pane" id="tab6" role="tabpanel" aria-labelledby="tab6-tab">
								<div class="py-3">
									<span class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">활력징후 V/S</span>
									<div style="float:right;"><input type="button" onclick="vitalEx()" value="click"></div>
								</div>
								<form id="vitalForm">
									<div class="row g-3 align-items-center" style="text-align: center;">
										<div class="recordDtl" style="display: none;"></div>
										<div class="col-md-12" style="margin-left: 50px;">
											<div class="col--md-4" style="display: flex;">
												<label class="form-label form-check-inline">
													<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c;">Date</a>
												</label>
													<input type="date" class="form-control form-label form-check-inline" id="vtDate" name="vtDate" pattern="yyyy-MM-dd" style="width: auto;" />
												<label class="form-label form-check-inline">
													<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c; margin-left: 150px;">Time</a>
												</label>
													<input type="time" class="form-control form-label form-check-inline" id="vtTime" name="vtTime" pattern="HH:mm:ss" style="width: auto;" />
											</div>
										</div>
										<div class="recordDtl" style="display: none;"></div>
										<div class="col-md-12" style="margin-left: 50px;">
											<div class="col--md-4" style="display: flex;">
												<label class="form-label" style="font-weight: 700; font-size: 12px; color: #173b6c;">
													<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c;">BP</a>
												</label>
													<input type="text" class="form-control form-label" id="vtBp" name="vtBp" style="width: 155px; margin-left: 30px;" />
												<label class="form-label">
													<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c; margin-left: 166px;">PLS</a>
												</label>
													<input type="text" class="form-control form-label" id="vtPls" name="vtPls" style="width: 139px; margin-left: 26px;" />
											</div>
										</div>
<!-- 										<div class="logoImage"> -->
<%-- 						                    <img src="${pageContext.request.contextPath}/resources/images/logomark.png" style="width: 600px; height: 112px;" /> --%>
<!-- 						                </div> -->
										
										<div class="recordDtl" style="display: none;"></div>
										<div class="col-md-12" style="margin-left: 50px;">
											<div class="col--md-4" style="display: flex;">
											<label class="form-label">
												<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c;">RP</a>
											</label>
											<input type="text" class="form-control form-label" id="vtRp" name="vtRp" style="width: 156px; margin-left: 29px;" />
											<label class="form-label">
												<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c; margin-left:166px;" >BT</a>
											</label>
											<input type="text" class="form-control form-label" id="vtTmp" name="vtTmp" style="width: 139px; margin-left: 33px;" />
										</div>
										<div class="col-md-12" style="text-align: right; padding-bottom: 24px;">
											<input type="submit" id="vitalSubmitBtn" class="btn btn-primary" value="저장" style="margin-right: 78px; background-color: #173b6c; color: white;" />
										</div>
									</div>
									</div>
								</form>
								<div class="tab-pane" id="tab6" role="tabpanel" aria-labelledby="tab6-tab">
									<div id="vitalRC" class="row g-3 align-items-center" style="overflow: auto; height: 200px;"></div>
								</div>
							</div>
							<!-- 기록 end -->
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- 바이탈 모달 끝 -->
<!-- 식이, I/O Modal -->
<div class="modal fade" id="dietIOModal" tabindex="-1" aria-labelledby="dietIOModal" style="display: none; z-index: 1060;" aria-hidden="true">
	<div class="modal-dialog modal-xl">
		<div class="modal-content" >

			<div class="modal-body">

				<div class="col-md-12 col-lg-6" style="width: 100%; max-height:780px; margin-right: 1px; overflow-y: auto;">
					<div class="card mb-3">
						<div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0" style="height: 0px;">
							<h5 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">식이, I/O 기록지</h5>
						</div>
						<div class="card-body">
							<!-- 환자 -->
							<div class="tab-pane" id="tab6" role="tabpanel" aria-labelledby="tab6-tab">
								<table class="table table-hover align-middle mb-0" style="height: 100px;">
									<thead>
										<tr>
											<th id="patntCode">환자 코드</th>
											<th id="patntNm" style="text-align:center">성명</th>
											<th id="patntIdentino" style="text-align:center">주민번호</th>
											<th id="patntAge">나이</th>
											<th id="gen">성별</th>
											<th id="hsptlzTotal">HOD</th>
											<th id="clinicContent" style="text-align:center">진단명</th>
										</tr>
									</thead>
									<tbody class="inModal">
									</tbody>
								</table>
							</div>
							<!-- 환자 end -->
							<!-- 식이 기록 -->
							<div class="tab-pane" id="tab6" role="tabpanel" aria-labelledby="tab6-tab">
								<div class="py-3">
									<span class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">식이</span>
									<div style="float:right;"><input type="button" onclick="dietIOEx()" value="click"></div>
								</div>
								<form id="dietForm">
									<div class="recordDtl" style="display: none;"></div>
									<div class="row g-3 align-items-center">
										<div class="col-md-6" style="width: 45%;">
											<select name="dietCode" class="form-select mb-0" style="width: fit-content;">
												<option value="RD" selected>일반식</option>
												<option value="SD">연식</option>
												<option value="NPO">금식</option>
												<option value="LD">유동식</option>
											</select>
										</div>
										<div class="col-md-6">
<!-- 											<label class="form-label">날짜</label> -->
											<div style=" width: 480px;">
												<label class="form-label form-check-inline">
													<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c;">Date</a>
												</label>
												<input type="date" class="form-control form-label form-check-inline" id="dietRcddate" name="dietRcddate" pattern="yyyy-MM-dd" style="width: auto;" />
													<label class="form-label form-check-inline">
													<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c;">Time</a>
													</label>
												<input type="time" class="form-control form-label form-check-inline" id="dietTime" name="dietTime" pattern="HH:mm:ss" style="width: auto;" />
											</div>
										</div>
										<div class="col-md-12" style="padding-bottom: 24px; text-align: right; text-align: right;">
											<input type="submit" id="dietSubmitBtn" class="btn btn-primary" value="식이 저장"  style=" margin-right: 9px; background-color: #173b6c; color: white;"/>
										</div>
									</div>
								</form>
								<div class="tab-pane" id="tab6" role="tabpanel"
									aria-labelledby="tab6-tab">
									<div id="dietRC" class="row g-3 align-items-center" style="overflow: auto; height: 200px;"></div>
								</div>
							</div>
							<!--식이 기록 end -->
							<!-- I/O 기록 -->
							<div class="tab-pane" id="tab6" role="tabpanel" aria-labelledby="tab6-tab">
								<div class="py-3">
									<span class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">I/O</span>
								</div>
								<form id="ioForm">
									<div class="recordDtl" style="display: none;"></div>
									<div class="row g-3 align-items-center">
										<div class="col-md-12" style="margin-left: 383px;">
											<div style="display: flex;">
												<label class="form-label form-check-inline">
													<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c;">Date</a>
												</label>
												<input type="date" class="form-control form-label form-check-inline" id="ioDate" name="ioDate" pattern="yyyy-MM-dd" style="width: auto;" />
													<label class="form-label form-check-inline">
														<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c;">Time</a>
													</label>
													<input type="time" class="form-control form-label form-check-inline" id="ioTime" name="ioTime" pattern="HH:mm:ss" style="width: auto;" />
											</div>
										</div>
										
										<br>
										<br>
										<br>
										<br>
										<div style="display: flex;">
												<label class="form-label">
													<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c;">Intake</a>
												</label>
												<input type="text" class="form-control form-label" id="ioIn" style="width: auto;" />
											
<!-- 											<div class="col-md-6"> -->
												<label class="form-label">
													<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c;">Output</a>
												</label>
												<input type="text" class="form-control form-label" id="ioOut" style="width: auto;" />
<!-- 											</div> -->
										</div>
										
										
										<div>
											<label class="form-label">
												<a class="bi bi-chevron-right" style="font-weight: 700; font-size: 14px; color: #173b6c;">투약여부</a>
											</label>
												<input type='radio' class="form-check-input form-check-inline" name='ioMedi' value='Y' checked="checked" />
												<span style="font-weight: 700; font-size: 14px; color: #173b6c;">Y</span>
												<input type='radio' class="form-check-input form-check-inline" name='ioMedi' value='N' />
												<span style="font-weight: 700; font-size: 14px; color: #173b6c;">N</span>
											<div class="col-md-12"
												style="padding-bottom: 24px; text-align: right;">
												<input type="submit" id="IOsubmitBtn" class="btn btn-primary" value="I/O 기록 저장" style="margin-right: 9px; background-color: #173b6c; color: white;"/>
											</div>
										</div>
									</div>
								</form>
								<div class="tab-pane" id="tab6" role="tabpanel"
									aria-labelledby="tab6-tab">
									<div id="ioRC" class="row g-3 align-items-center"
										style="overflow: auto; height: 200px;"></div>
								</div>
							</div>
							<!-- I/O 기록 end -->
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- 식이, I/O  모달 끝 -->
<!-- 검사기록지 Modal -->
<div class="modal fade" id="inspModal" tabindex="-1" aria-labelledby="inspModal" style="display: none; z-index: 1060;" aria-hidden="true">
	<div class="modal-dialog modal-xl">
		<div class="modal-content" style="width: 100%;">

			<div class="modal-body">

				<div class="col-md-12 col-lg-6" style="width: 100%; margin-right: 1px">
					<div class="card mb-3">
						<div
							class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"
							style="height: 0px;">
							<h5 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">검사 기록지</h5>
						</div>
						<div class="card-body">
							<!-- 환자 -->
							<div class="tab-pane" id="tab6" role="tabpanel"
								aria-labelledby="tab6-tab">
								<table class="table table-hover align-middle mb-0"
									style="height: 100px;">
									<thead>
										<tr>
											<th id="patntCode">환자 코드</th>
											<th id="patntNm">성명</th>
											<th id="patntIdentino" style="text-align: center;">주민번호</th>
											<th id="patntAge" style="text-align: center;">나이</th>
											<th id="gen" style="text-align: center;">성별</th>
											<th id="hsptlzTotal" style="text-align: center;">HOD</th>
											<th id="clinicContent" style="text-align: center;">진단명</th>
										</tr>
									</thead>
									<tbody class="inModal">
									</tbody>
								</table>
							</div>
							<!-- 환자 end -->
							<!-- 검사 기록 -->
							<div class="tab-pane" id="tab6" role="tabpanel" aria-labelledby="tab6-tab">
								<div class="py-3">
									<span class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">검사 결과</span>
								</div>
								
								<div class="tab-pane" id="tab6" role="tabpanel" aria-labelledby="tab6-tab">
									<div id="inspRC" class="row g-3 align-items-center" style="overflow: auto; height: 350px;"></div>
								</div>
							</div>
							<!--검사 기록 end -->
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- 검사기록지 모달 끝 -->

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script>
//시연 버튼1
function vitalEx(){
	var today = new Date();
	var year = today.getFullYear();
	var month = today.getMonth()+1;
	var day = date.getDate();
	
	var hours = today.getHours().toString().padStart(2, '0');
    var min = today.getMinutes().toString().padStart(2, '0');
	
	var month1 = (month > 9) ? month.toString() : "0"+month.toString();
	var day1 = (day > 9) ? day.toString() : "0"+day.toString();
	
	$("#vtDate").val(year + '-' + month1 + '-' + day1);
	$("#vtTime").val(hours+':'+min);
	$("#vtBp").val("150/94");
	$("#vtPls").val("65");
	$("#vtRp").val("20");
	$("#vtTmp").val("36.3");
}
//시연 버튼2
function dietIOEx(){
	var today = new Date();
	var year = today.getFullYear();
	var month = today.getMonth()+1;
	var day = date.getDate();
	
	var hours = today.getHours().toString().padStart(2, '0');
    var min = today.getMinutes().toString().padStart(2, '0');
	
	var month1 = (month > 9) ? month.toString() : "0"+month.toString();
	var day1 = (day > 9) ? day.toString() : "0"+day.toString();
	
	$("#dietRcddate").val(year + '-' + month1 + '-' + day1);
	$("#dietTime").val(hours+':'+min);
	$("#ioDate").val(year + '-' + month1 + '-' + day1);
	$("#ioTime").val(hours+':'+min);
	$("#ioIn").val("2550");
	$("#ioOut").val("1580");
}

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


//입원중인 환자 전체출력
function inPatnt(){
	$.getJSON("<c:url value='ingPatntList.do'/>",{code:"011"}).done(function(resp){
		var datalist = $('#inPatntList');
		datalist.empty();
		
		$(resp).each(function(index,list){
			var optionValue = list.patntCode + " " + list.patnt.patntNm + " " + "만"+list.patnt.patntAge+"세"; // 공백 추가
			var option = $("<option>").attr("value",optionValue);
			datalist.append(option);
		});
	});
}

//검색 환자 detail 화면 출력용
function inPatntDetail(){
	//입원중 환자 검색 시 tbody에 detail 출력
	$.getJSON("<c:url value='hospitalPatientDetail.do'/>", {who:who}).done(function(result){
		
		var tbody = $('.inPatnt');
		
		tbody.empty();
		
		$(result).each(function(index, dtl){
	    	
	        var tr = $("<tr>").append(
	            $("<td>").html(dtl.patntCode)
	            ,$("<td>").html(dtl.patnt.patntNm)
	            ,$("<td>").html(dtl.sckbdRo)
	            ,$("<td>").html(dtl.sckbdNo)
	            ,$("<td>").html(dtl.patnt.patntAge)
	            ,$("<td>").html(dtl.patnt.height)
	            ,$("<td>").html(dtl.patnt.weight)
	            ,$("<td>").html(dtl.hsptlzIn)
	            ,$("<td>").html(dtl.hsptlzOut)
	            ,$("<td>").html(dtl.emp.empNm)
	            
	        );
	        tbody.append(tr);
	    });
	});
	presList();
};

var who = "";
var pres = "";
var tbody = "";
//입원중인 환자 검색 시 datalist에 출력
function searchInPatnt(){
	var searchWord1 = $('#searchForm').val();
	searchWord2 = searchWord1.split(' ');
	searchWord = searchWord2[1];
	
	$.getJSON("<c:url value='hospitalPatntSearch.do'/>"
			,{word:searchWord, code:"011"}).done(function(resp){
	
		$(resp).each(function(index,list){
  			who = list.pres.clinic.recept.patntCode;
  			pres = list.presCode;
		});
		
	});
	inPatntDetail();
}

var hsptlzCode = '';
var rcdrNm = '';
var recCode ='';
//모달창의 환자정보출력
function Modal(result){
	
	
	var tbody = $('.inModal');
	
	tbody.empty();
	$(result).each(function(index,list){
		var tr = $("<tr>").append(
			$("<td>").html(list.patntCode)
			,$("<td>").html(list.patnt.patntNm)
			,$("<td>").html(list.patnt.patntIdentino)
			,$("<td>").html(list.patnt.patntAge).attr("style","text-align:center")
			,$("<td>").html(list.patnt.gen).attr("style","text-align:center")
			,$("<td>").html(list.hsptlzTotal).attr("style","text-align:center")
			,$("<td>").html(list.dss.dssNm)
			,$("<td>").html(list.hsptlzCode).attr("style","display:none;")
			,$("<td>").html("${authMember.empNm}").attr("style","display:none;")
			
		);
 		hsptlzCode = list.hsptlzCode;
 		rcdrNm="${authMember.empNm}"
 		recCode = list.recCode;
		tbody.append(tr);
		
	});
	
	if(clickBtn == 'vital'){
		$.getJSON("<c:url value='vitalList.do'/>", {hsptlzCode:hsptlzCode}).done(vitalRC);
	}else if(clickBtn == "dietIO"){
		$.getJSON("<c:url value='dietList.do'/>", {hsptlzCode:hsptlzCode}).done(dietRC);
		$.getJSON("<c:url value='ioList.do'/>", {hsptlzCode:hsptlzCode}).done(ioRC);
	}else if(clickBtn == 'insp'){
		$.getJSON("<c:url value='inspRsltList.do'/>",{recCode:recCode}).done(inspRC);
	}
};

var vitalCode = '';
//바이탈 기록 불러오기
function vitalRC(result){
	var div = $("#vitalRC");
	div.empty();
	var i = 1;
	
	var table = $("<table>").addClass("table table-hover align-middle mb-0").attr("style","height: 100px;").append(
				$("<thead>").attr("style","text-align: center;").append(
					$("<th>").html("번호")
					,$("<th>").html("일시")
					,$("<th>").html("BP")
					,$("<th>").html("PR")
					,$("<th>").html("BT")
					,$("<th>").html("RR")
					,$("<th>").html("기록자")
				)
			);
	$(result).each(function(index,vital){
		
		var tbody = $("<tbody>").attr("style","text-align: center;").append(
					$("<tr>").append(
						$("<td>").attr("style","display:none;").html(vital.vtCode)
						,$("<td>").html(i)
						,$("<td>").html(vital.vtDate+" "+vital.vtTime)
						,$("<td>").html(vital.vtBp+"mmHg")
						,$("<td>").html(vital.vtPls+"회")
						,$("<td>").html(vital.vtTmp+"˚C")
						,$("<td>").html(vital.vtRp+"회")
						,$("<td>").html(vital.rcdrNm)
						,$("<td>").append(
							$("<button>").addClass("btn btn-outline-secondary deleteVt").attr("type","button").attr("id","vitalDelete"+i).attr("value",vital.vtCode).append(
								$("<i>").addClass("icofont-ui-delete text-danger")
							)
						)
					)
			);
		i++;
		table.append(tbody);
		div.append(table);
		
	});
}

//식이 기록 불러오기
var drcdrCode = '';
function dietRC(result){
	var div = $("#dietRC");
	div.empty();
	var i = 1;
	
	var table = $("<table>").addClass("table table-hover align-middle mb-0").attr("style","height: 100px;").append(
			$("<thead>").attr("style","text-align: center;").append(
				$("<th>").html("번호")
				,$("<th>").html("일시")
				,$("<th>").html("식이")
				,$("<th>").html("기록자")
			)
		);
	
	$(result).each(function(index,diet){
		
		var tbody = $("<tbody>").attr("style","text-align: center;").append(
				$("<tr>").append(
					$("<td>").attr("style","display:none;").html(diet.drcdrCode)
					,$("<td>").html(i)
					,$("<td>").html(diet.dietRcddate+" "+diet.dietTime)
					,$("<td>").html(diet.dietCode)
					,$("<td>").html(diet.rcdrNm)
					,$("<td>").append(
							$("<button>").addClass("btn btn-outline-secondary deleteDiet").attr("type","button").attr("id","dietDelete"+i).attr("value",diet.drcdrCode).append(
								$("<i>").addClass("icofont-ui-delete text-danger")
							)
						)
				)
		);
	i++;
	table.append(tbody);
	div.append(table);
	});
	
}

//io 기록 불러오기
var ioCode ='';
function ioRC(result){
	var div = $("#ioRC");
	div.empty();
	var i = 1;
	
	var table = $("<table>").addClass("table table-hover align-middle mb-0").attr("style","height: 100px;").append(
			$("<thead>").attr("style","text-align: center;").append(
				$("<th>").html("번호")
				,$("<th>").html("일시")
				,$("<th>").html("Intake")
				,$("<th>").html("Output")
				,$("<th>").html("I/O")
				,$("<th>").html("투약여부")
				,$("<th>").html("기록자")
			)
		);
	
	$(result).each(function(index,io){
		
		var tbody = $("<tbody>").attr("style","text-align: center;").append(
				$("<tr>").append(
					$("<td>").attr("style","display:none;").html(io.ioCode)
					,$("<td>").html(i)
					,$("<td>").html(io.ioDate+" "+io.ioTime)
					,$("<td>").html(io.ioIn)
					,$("<td>").html(io.ioOut)
					,$("<td>").html(io.ioIn-io.ioOut)
					,$("<td>").html(io.ioMedi)
					,$("<td>").html(io.rcdrNm)
					,$("<td>").append(
							$("<button>").addClass("btn btn-outline-secondary deleteIO").attr("type","button").attr("id","ioDelete"+i).attr("value",io.ioCode).append(
								$("<i>").addClass("icofont-ui-delete text-danger")
							)
						)
				)
		);
		i++;
		table.append(tbody);
		div.append(table);
		
	});
}

//검사 기록 불러오기
function inspRC(result){
	var div = $('#inspRC');
	div.empty();
	var i = 1;
	
	var table = $("<table>").addClass("table table-hover align-middle mb-0").attr("style","height: 100px;").append(
			$("<thead>").attr("style","text-align: center;").append(
				$("<th>").html("번호")
				,$("<th>").html("일시")
				,$("<th>").html("검사명")
				,$("<th>").html("소견")
				,$("<th>").html("결과")
			)
		);
	 if (result.length === 0) {
		 var div1 = $("<div>").attr("style","text-align: center; font-weight: bold; font-size: 1.3em;").text("해당 환자의 검사 이력이 없습니다.");
         div.append(div1);
     } else {
			$(result).each(function(index,inspR){
				var inspCode = inspR.inspCode;
				
				var tbody = $("<tbody>").attr("style","text-align: center;").append(
						$("<tr>").append(
								$("<td>").html(i)
								,$("<td>").html(inspR.inspDay)
								,$("<td>").html(inspR.insp.inspNm)
								,$("<td>").html(inspR.inspRsltCn)
								,$("<td>").addClass("imageArea")
							)
				);
				
				var imageArea = tbody.find('.imageArea');
				
				if (inspCode === 'I04' || inspCode === 'I05' || inspCode === 'I39') {
			        let imgSrc = "<%=request.getContextPath()%>/resources/images/CT1.png"; 
			        let img = $("<img>").attr("src", imgSrc)
			                            .addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
			        imageArea.empty().append(img);
			    } else if(inspCode === 'I11'){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/CT3.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I15'){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/mri.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I02' || inspCode === 'I03' || inspCode === 'I12'){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/brainCT.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I01'){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/bodyCT.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I06' || inspCode === 'I07' || inspCode === 'I10' ){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/baeCT.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I08' || inspCode === 'I09'){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/heart.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I27'){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/boneCT.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I13' || inspCode === 'I14' ){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/brainMri.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I16'){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/ultrasound1.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I17' || inspCode === 'I18'){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/ultrasound2.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I19' || inspCode === 'I20' || inspCode === 'I21' || inspCode === 'I38'){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/ultrasound3.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I22' || inspCode === 'I23' || inspCode === 'I24' || inspCode === 'I25' || inspCode === 'I26' ){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/stom.png";
			    	let img = $("<img>").attr("src", imgSrc)  
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else if(inspCode === 'I34'){
			    	let imgSrc = "<%=request.getContextPath()%>/resources/images/sim.png";
			    	let img = $("<img>").attr("src", imgSrc)
		            			.addClass("rounded-3 mb-3 img-thumbnail shadow-sm inspImg");
					 	imageArea.empty().append(img);
			    } else{
			    	let img = $("<img>").addClass("barcode");
			    	imageArea.empty().append(img);
			    	<!--js바코드-->
			    	JsBarcode(".barcode") 
			    	.options({font: "OCR-B"})
			    	.EAN13("1234567890128", {fontSize: 18, textMargin: 0})
			    	.render();
			    }
				
				i++;
				table.append(tbody);
				div.append(table);
			});
     }
}

//검색한 환자의 처방내역 출력
function presList(){
	$.getJSON("<c:url value='presList.do'/>",{pres:pres}).done(function(presList){
		var div = $('.presList');
		div.empty();
		
		$(presList).each(function(index,presdtl){
			
			 let tr = $("<tr>").append(
				$("<td>").html(presdtl.medi.mediNm)
				,$("<td>").append($("<span>").addClass("badge bg-primary pill").text(presdtl.presMAmt))
				,$("<td>").append($("<span>").addClass("badge bg-secondary me-2 pmtCo").text(presdtl.presMCo + "회"))
			 );
			 
			div.append(tr);
		});
	});
}
	
//인수인계 내용 출력
function noteList(dayNote){
	$.getJSON("<c:url value='/nurse/nurseList.do'/>",{dayNote:dayNote}).done(function(resp){
		let div = $('#nurseNote')
		div.empty();
		
		$(resp).each(function(index, list){
			 let row = $("<tr>");

		        let cell1 = $("<td>");
		        let badge = $("<span>").addClass("badge");

		        if (list.nurwkCode === 'N01') {
		            badge.addClass("bg-success").text("데이");
		        } else if (list.nurwkCode === 'N02') {
		            badge.addClass("bg-warning").text("이브닝");
		        } else if (list.nurwkCode === 'N03') {
		            badge.addClass("bg-secondary").text("나이트");
		        }
		        cell1.append(badge).append($("<i>").addClass("fas fa-user-nurse"))
		        .append(list.nrsnoteNm + " 간호사 : ");

		        let cell2 = $("<td>").text(list.nrsnoteContent);

		        row.append(cell1, cell2);

		     div.append(row);
		});
	});
}


var clickBtn = '';
$(document).ready(function(){
	//datalist에 출력되는 입원중인 환자 전체 목록
	inPatnt();
	
		//입원중 환자 검색
		$('#searchForm').on('keydown', function(event){
			if(event.keyCode == 13){
		        searchInPatnt();
			}
		});
		
	//오늘 입력된 인수인계 간호일지 있으면 출력
	date = new Date();
	var year =  date.getFullYear();
	var month = date.getMonth()+1;
	var day = date.getDate();
	
	var month1 = (month > 9) ? month.toString() : "0"+month.toString();
	var day1 = (day > 9) ? day.toString() : "0"+day.toString();
	var dayNote = year.toString()+month1+day1;
	
	noteList(dayNote);
	
	//간호기록 저장 버튼 클릭시
	$('#nurseNoteForm').on('submit', function(event){
		event.preventDefault();
		var empNo = "${authMember.empNo}"
		var nrsnoteNm = "${authMember.empNm}"
		var nrsnoteContent = $('#nurseNoteFormTextarea').val()
		var formData = {
				nurwkCode: $('select[name="nurwkCode"]').val()
				,nrsnoteContent: nrsnoteContent
				,nrsnoteDate:dayNote
				,nrsnoteNm:nrsnoteNm
				,empNo:empNo
		}
		
		if(!(nrsnoteContent == null || nrsnoteContent == '')){
			Swal.fire({
				 title: '인수인계 기록 하시겠습니까?',
				 text: "",
				 icon: 'warning',
				 showCancelButton: true,
				 confirmButtonColor: '#3085d6',
				 cancelButtonColor: '#d33',
				 confirmButtonText: '확인'
				}).then((result) => {
				  if (result.isConfirmed) {
					$.ajax({
				        type: 'POST',
				        url: '<c:url value="/nurse/nurseNoteInsert.do" />',
				        data: JSON.stringify(formData), // JSON 데이터로 변환
				        contentType: 'application/json', // 컨텐츠 타입을 JSON으로 설정
				        success: function (response) {
				        		Toast.fire({
				        			icon: 'success',
				 	    		    title: '기록 저장 성공'
				        		});
				        		$('#nurseNoteFormTextarea').val("");
				        		noteList(dayNote);
				            },
				            error: function(xhr, textStatus, error){
				            	Swal.fire({
									text: '기록 저장 실패',  
									icon: 'error'
								});
				            }
				    });
				  }
			})
		}else{
			Swal.fire({
				text: '내용을 입력하세요.',  
				icon: 'error'
			});
		}
	})
		
	//바이탈기록지 버튼 클릭 시
	$('#vitalModalBtn').click(function(){
		if( $('#searchForm').val().length < 7 ){
			
			Swal.fire("환자를 검색하세요"); //data-bs-toggle 과 data-bs-target속성 없애야 원하는대로 실행됨

		}else{
			clickBtn = "vital";
			
			$('#vitalModal').modal('show');
				
			$.getJSON("<c:url value='hospitalPatientDetail.do'/>", {who:who}).done(Modal);
			
		}  
	});
	//바이탈 저장버튼 클릭 시
	$('#vitalForm').on('submit',function(event){
		event.preventDefault();
		var formData = {
				hsptlzCode: hsptlzCode
 				,rcdrNm: rcdrNm
 				,vtDate: $('#vtDate').val()
 		        ,vtTime: $('#vtTime').val()
 		        ,vtBp: $('#vtBp').val()
 		        ,vtPls: $('#vtPls').val()
 		        ,vtRp: $('#vtRp').val()
 		        ,vtTmp: $('#vtTmp').val()
 				}
			Swal.fire({
				 title: '바이탈 기록 하시겠습니까?',
				 text: "",
				 icon: 'warning',
				 showCancelButton: true,
				 confirmButtonColor: '#3085d6',
				 cancelButtonColor: '#d33',
				 confirmButtonText: '확인'
				}).then((result) => {
				  if (result.isConfirmed) {
					$.ajax({
				        type: 'POST',
				        url: '<c:url value="vitalInsert.do" />',
				        data: JSON.stringify(formData), // JSON 데이터로 변환
				        contentType: 'application/json', // 컨텐츠 타입을 JSON으로 설정
				        success: function (response) {
				        		Swal.fire("바이탈 기록 저장 성공");
				        		
				        		$('#vtDate, #vtTime, #vtBp, #vtPls, #vtRp, #vtTmp').val('');
				        		
				                $.getJSON("<c:url value='vitalList.do'/>", {hsptlzCode:hsptlzCode}).done(vitalRC);
				            },
				            error: function(xhr, textStatus, error){
				            	Swal.fire("바이탈 기록 저장 실패");
				            }
				    });
				  }
			})
	});
	//바이탈 모달에서 삭제버튼 클릭 시
	$(document).on('click',".deleteVt",function(){
		var vtCodeBtn = this.id
		var vtCode = $("#" + vtCodeBtn).val()
		Swal.fire({
			 title: '바이탈기록 삭제 하시겠습니까?',
			 text: "",
			 icon: 'warning',
			 showCancelButton: true,
			 confirmButtonColor: '#3085d6',
			 cancelButtonColor: '#d33',
			 confirmButtonText: '확인'
			}).then((result) => {
			  if (result.isConfirmed) {
				$.getJSON("<c:url value='deleteVital.do'/>",{vtCode:vtCode}).done(function(data){
					Swal.fire('삭제 완료');
					$.getJSON("<c:url value='vitalList.do'/>", {hsptlzCode:hsptlzCode}).done(vitalRC);
				}).fail(function(){
					Swal.fire('삭제 실패');
					})
				}
			})
	});
	
	//식이, I/O기록지 버튼 클릭 시
	$('#dietIOModalBtn').on("click",function() {
		if($('#searchForm').val().length < 7 ){ //검색환자 없이 버튼 클릭시 '환자를 검색하세요' Swal.fire 띄우기
			Swal.fire("환자를 검색하세요");
		}else{
			clickBtn = "dietIO";
			$('#dietIOModal').modal('show');
				
			$.getJSON("<c:url value='hospitalPatientDetail.do'/>", {who:who}).done(Modal);
			
		}  
	});
	//식이기록 저장버튼 클릭시
	$('#dietForm').on('submit',function(event){
		event.preventDefault();
		
		var dietCode = $('select[name="dietCode"]').val();
		
		var formData = {
				hsptlzCode: hsptlzCode
 				,rcdrNm: rcdrNm
 				,dietCode: dietCode
 		        ,dietRcddate: $('#dietRcddate').val()
 		        ,dietTime: $('#dietTime').val()
 				}
		Swal.fire({
			 title: '식이기록 저장 하시겠습니까?',
			 text: "",
			 icon: 'warning',
			 showCancelButton: true,
			 confirmButtonColor: '#3085d6',
			 cancelButtonColor: '#d33',
			 confirmButtonText: '확인'
			}).then((result) => {
			  if (result.isConfirmed) {
				$.ajax({
			        type: 'POST',
			        url: '<c:url value="dietInsert.do" />',
			        data: JSON.stringify(formData), // JSON 데이터로 변환
			        contentType: 'application/json', // 컨텐츠 타입을 JSON으로 설정
			        success: function (response) {
			            	Swal.fire("식이 기록 저장 성공");
			            	
			            	$('#dietRcddate').val('');
			            	$('#dietTime').val('');
			            	
			                $.getJSON("<c:url value='dietList.do'/>", {hsptlzCode:hsptlzCode}).done(dietRC);
			            },
			            error: function(xhr, textStatus, error){
			            	Swal.fire("식이 기록 저장 실패");
			            }
			        })
			  }
		});
	});
	//식이기록 삭제버튼 클릭시
	$(document).on('click',".deleteDiet",function(){
		var dietCodeBtn = this.id
		var drcdrCode = $("#" + dietCodeBtn).val()
		Swal.fire({
			 title: '식이기록 삭제 하시겠습니까?',
			 text: "",
			 icon: 'warning',
			 showCancelButton: true,
			 confirmButtonColor: '#3085d6',
			 cancelButtonColor: '#d33',
			 confirmButtonText: '확인'
			}).then((result) => {
			  if (result.isConfirmed) {
				$.getJSON("<c:url value='deleteDiet.do'/>",{drcdrCode:drcdrCode}).done(function(data){
					Swal.fire("삭제 완료");
					$.getJSON("<c:url value='dietList.do'/>", {hsptlzCode:hsptlzCode}).done(dietRC);
				}).fail(function(){
					Swal.fire({
						text: '삭제 실패',  
						icon: 'error'
					});
				})
			}
		})
	});
	
	//I/O기록 저장버튼 클릭시
	$('#ioForm').on('submit',function(event){
		event.preventDefault();
		
		var ioMedi = $("input[name='ioMedi']:checked").val();
		
		var formData = {
				hsptlzCode: hsptlzCode
 				,rcdrNm: rcdrNm
 				,ioIn: $('#ioIn').val()
 		        ,ioOut: $('#ioOut').val()
 		        ,ioDate: $('#ioDate').val()
 		        ,ioTime: $('#ioTime').val()
 		        ,ioMedi: ioMedi
 				}
		Swal.fire({
			 title: 'I/O기록 저장 하시겠습니까?',
			 text: "",
			 icon: 'warning',
			 showCancelButton: true,
			 confirmButtonColor: '#3085d6',
			 cancelButtonColor: '#d33',
			 confirmButtonText: '확인'
			}).then((result) => {
			  if (result.isConfirmed) {
				$.ajax({
			        type: 'POST',
			        url: '<c:url value="IOInsert.do" />',
			        data: JSON.stringify(formData), // JSON 데이터로 변환
			        contentType: 'application/json', // 컨텐츠 타입을 JSON으로 설정
			        success: function (response) {
			            	Swal.fire("I/O 기록 저장 성공");
			            	
			            	$('#ioIn').val('');
			            	$('#ioOut').val('');
			            	$('#ioDate').val('');
			            	$('#ioTime').val('');
			            	
			                $.getJSON("<c:url value='ioList.do'/>", {hsptlzCode:hsptlzCode}).done(ioRC);
			            },
			            error: function(xhr, textStatus, error){
			            	Swal.fire({
								text: '저장 실패',  
								icon: 'error'
							});
			            }
			        })
			    }
			})
	});
	//IO 삭제 버튼 클릭시
	$(document).on('click',".deleteIO",function(){
		var ioCodeBtn = this.id
		var ioCode = $("#" + ioCodeBtn).val()
		Swal.fire({
			 title: 'I/O기록 삭제 하시겠습니까?',
			 text: "",
			 icon: 'warning',
			 showCancelButton: true,
			 confirmButtonColor: '#3085d6',
			 cancelButtonColor: '#d33',
			 confirmButtonText: '확인'
			}).then((result) => {
			  if (result.isConfirmed) {
					$.getJSON("<c:url value='deleteIO.do'/>",{ioCode:ioCode}).done(function(data){
						Swal.fire("삭제 완료");
						$.getJSON("<c:url value='ioList.do'/>", {hsptlzCode:hsptlzCode}).done(ioRC);
				}).fail(function(){
					Swal.fire({
						text: '삭제 실패',  
						icon: 'error'
					});
				})
			}
		});
	});
	
	//검사기록지 버튼 클릭 시
	$('#inspModalBtn').click(function() {
			if($('#searchForm').val().length < 7 ){
				Swal.fire("환자를 검색하세요");
			}else{
				clickBtn="insp";
				$('#inspModal').modal('show');
				$.getJSON("<c:url value='hospitalPatientDetail.do'/>", {who:who}).done(Modal);
			}
	});
	
	
	
	//시간 함수
	function updateCurrentTime() {
	    const now = new Date();
	    const formattedTime = `\${now.getFullYear()}년 \${now.getMonth() + 1}월 \${now.getDate()}일 \${now.getHours().toString().padStart(2,'0')}:\${now.getMinutes().toString().padStart(2,'0')}`;
	    document.getElementById('currentTime').textContent = formattedTime;
	}

	// 최초 실행
	updateCurrentTime();

	
});
</script>