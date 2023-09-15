<%@ page language="java" contentType="application/vnd.ms-excel; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<% 
	response.setHeader("Content-Type", "application/vnd.ms-excel; charset=UTF-8");
 	response.setHeader("Content-Disposition", "attachment; filename='test.xlsx'");
	response.setHeader("Content-Description", "JSP Generated Data");
%>


<table class="table table-hover align-middle mb-0">
								<thead>
									<tr>
										<th>작성ID</th>
										<th>작성글수</th>
										<th>합계</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="boardList" value="${empFreeList}" />
									<c:if test="${empty boardList }">
										<tr>
											<td colspan="6">데이터가 없습니다</td>
										</tr>
									</c:if>
									<c:if test="${not empty boardList }">
										<c:forEach items="${boardList }" var="boardList">

											<c:url value="/free/freeView.do" var="viewURL">
												<c:param name="what" value="${boardList.boardNo }"></c:param>
											</c:url>

											<tr>
												<td>${boardList.empNo }</td>
												<td>${boardList.freeEmpCount }</td>
												<td>0</td>
											</tr>
										</c:forEach>
									</c:if>
								</tbody>
							</table>
							
							
							
















<%-- 

<div id="ihealth-layout" class="theme-tradewind">
    

    <!-- main body area -->
    <div class="main px-lg-4 px-md-4">

        <!-- Body: Body -->
        <div class="body d-flex py-3">
            <div class="container-xxl">
                <div class="row g-3 mb-3 row-deck">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">Covid-19 Status</h6> 
                            </div>
                            <div class="card-body">
                                <div class="echart" id="covidinfo" style="height: 600px;"></div> 
                            </div>
                        </div>
                    </div>
                </div><!-- .row end -->
                <div class="row g-3 mb-3 row-deck">
                    <div class="col-lg-12 col-xl-12 col-xxl-4">
                        <div class="card">
                            <div class="card-body basic-custome-color">
                                <h6 class=" fw-bold ">Covid-19 Test & Result</h6> 
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                            <th scope="col">Status</th>
                                            <th scope="col">Total</th>
                                            <th scope="col">Negetive</th>
                                            <th scope="col">Positive</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                            <th scope="row">Test Registered</th>
                                            <td>5840</td>
                                            <td>- </td>
                                            <td>-</td>
                                            </tr>
                                            <tr>
                                            <th scope="row">Result Given</th>
                                            <td>4000</td>
                                            <td>1500</td>
                                            <td>2500</td>
                                            </tr>
                                            <tr>
                                            <th scope="row">Pending</th>
                                            <td>1840</td>
                                            <td>-</td>
                                            <td>-</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card-body basic-custome-color pt-0">
                                <h6 class=" fw-bold ">Patients</h6> 
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                            <th scope="col">Category</th>
                                            <th scope="col">Total</th>
                                            <th scope="col">Cured</th>
                                            <th scope="col">Died</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                            <th scope="row">Critical</th>
                                            <td>800</td>
                                            <td>750 </td>
                                            <td>50</td>
                                            </tr>
                                            <tr>
                                            <th scope="row">Non Critical</th>
                                            <td>4000</td>
                                            <td>3500</td>
                                            <td>500</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card-body basic-custome-color pt-0">
                                <h6 class=" fw-bold ">Vaccine Alert</h6> 
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                            <th scope="col">Type</th>
                                            <th scope="col">Total</th>
                                            <th scope="col">Not Attended</th>
                                            <th scope="col">Name</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                            <th scope="row">First Dose </th>
                                            <td>800</td>
                                            <td  class="text-center">750 </td>
                                            <td>Covishield</td>
                                            </tr>
                                            <tr>
                                            <th scope="row">Second Dose</th>
                                            <td>4000</td>
                                            <td  class="text-center">3500</td>
                                            <td>Covishield</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-xl-12 col-xxl-8">
                        <div class="card">
                            <div class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
                                <h6 class="mb-0 fw-bold ">Covid-19 Country</h6> 
                            </div>
                            <div class="card-body">
                                <div class="echart" id="covidcountry" style="height: 600px;"></div> 
                            </div>
                        </div>
                    </div>
                </div><!-- .row end -->
            </div>
        </div>
      
       
    </div>
  
</div>



<script src="<%=request.getContextPath() %>/resources/dist/assets/plugin/echarts/echarts.min.js"></script>


<script src="<%=request.getContextPath() %>/resources/js/page/covid.js"></script>
 
 --%>