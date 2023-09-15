<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>:: I-Health::  Patient List </title>
    <link rel="icon" href="favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- plugin css file  -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
    <!-- project css file  -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">
</head>
<body>

    
    <jsp:include page="<%=request.getContextPath()%>/includee/doctorleftMenu.jsp" />

        <!-- Body: Body -->
        <div class="body d-flex py-3">
            <div class="container-xxl">
                <div class="row align-items-center">
                    <div class="border-0 mb-4">
                        <div class="card-header py-3 no-bg bg-transparent d-flex align-items-center px-0 justify-content-between border-bottom flex-wrap">
                            <h3 class="fw-bold mb-0">Patient List</h3>
                        </div>
                    </div>
                </div> <!-- Row end  -->
                <div class="row mb-3">
                    <div class="card">
                        <div class="card-body">
                            <table id="patient-table" class="table table-hover align-middle mb-0" style="width: 100%;">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Patients</th>
                                        <th>Age</th>
                                        <th>Adress</th>
                                        <th>Admited</th>
                                        <th>Discharge</th>
                                        <th>Progress</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>PT-0001</td>
                                        <td><img src="assets/images/xs/avatar3.jpg" class="avatar  rounded-circle me-2" alt="profile-image"><span>Molly </span></td>
                                        <td>45</td>
                                        <td>70 Bowman St. South Windsor, CT 06074</td>
                                        <td>May 13, 2021</td>
                                        <td>May 16, 2021</td>
                                        <td>
                                            <div class="progress" style="height: 3px;">
                                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;"> <span class="sr-only">40% Complete</span> </div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-info">Admit</span></td>
                                    </tr>
                                    <tr>
                                        <td>PT-0011</td>
                                        <td><img src="assets/images/xs/avatar1.jpg" class="avatar  rounded-circle me-2" alt="profile-image"><span>Brian</span></td>
                                        <td>35</td>
                                        <td>123 6th St. Melbourne, FL 32904</td>
                                        <td>May 13, 2021</td>
                                        <td>May 22, 2021</td>
                                        <td>
                                            <div class="progress" style="height: 3px;">
                                                <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"> <span class="sr-only">100% Complete</span> </div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-success">Discharge</span></td>
                                    </tr>
                                    <tr>
                                        <td>PT-0045</td>
                                        <td><img src="assets/images/xs/avatar2.jpg" class="avatar  rounded-circle me-2" alt="profile-image"><span>Julia</span></td>
                                        <td>42</td>
                                        <td>4 Shirley Ave. West Chicago, IL 60185</td>
                                        <td>May 17, 2021</td>
                                        <td>May 16, 2021</td>
                                        <td>
                                            <div class="progress" style="height: 3px;">
                                                <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"> <span class="sr-only">100% Complete</span> </div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-success">Discharge</span></td>
                                    </tr>
                                    <tr>
                                        <td>PT-0030</td>
                                        <td><img src="assets/images/xs/avatar4.jpg" class="avatar  rounded-circle me-2" alt="profile-image"><span>Sonia</span></td>
                                        <td>25</td>
                                        <td>123 6th St. Melbourne, FL 32904</td>
                                        <td>May 13, 2021</td>
                                        <td>May 23, 2021</td>
                                        <td>
                                            <div class="progress" style="height: 3px;">
                                                <div class="progress-bar bg-info" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 15%;"> <span class="sr-only">15% Complete</span> </div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-info">Admit</span></td>
                                    </tr>
                                    <tr>
                                        <td>PT-0078</td>
                                        <td><img src="assets/images/xs/avatar5.jpg" class="avatar  rounded-circle me-2" alt="profile-image"><span>Adam H</span></td>
                                        <td>18</td>
                                        <td>4 Shirley Ave. West Chicago, IL 60185</td>
                                        <td>May 18, 2021</td>
                                        <td>May 18, 2021</td>
                                        <td>
                                            <div class="progress" style="height: 3px;">
                                                <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%;"> <span class="sr-only">85% Complete</span> </div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-info">Admit</span></td>
                                    </tr>
                                    <tr>
                                        <td>PT-0098</td>
                                        <td><img src="assets/images/xs/avatar9.jpg" class="avatar  rounded-circle me-2" alt="profile-image"><span>Alexander</span></td>
                                        <td>38</td>
                                        <td>123 6th St. Melbourne, FL 32904</td>
                                        <td>May 13, 2021</td>
                                        <td>May 22, 2021</td>
                                        <td>
                                            <div class="progress" style="height: 3px;">
                                                <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"> <span class="sr-only">100% Complete</span> </div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-success">Discharge</span></td>
                                    </tr>
                                    <tr>
                                        <td>PT-0999</td>
                                        <td><img src="assets/images/xs/avatar11.jpg" class="avatar  rounded-circle me-2" alt="profile-image"><span>Gabrielle</span></td>
                                        <td>65</td>
                                        <td>4 Shirley Ave. West Chicago, IL 60185</td>
                                        <td>May 17, 2021</td>
                                        <td>May 16, 2021</td>
                                        <td>
                                            <div class="progress" style="height: 3px;">
                                                <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"> <span class="sr-only">100% Complete</span> </div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-success">Discharge</span></td>
                                    </tr>
                                    <tr>
                                        <td>PT-0101</td>
                                        <td><img src="assets/images/xs/avatar12.jpg" class="avatar  rounded-circle me-2" alt="profile-image"><span>Grace</span></td>
                                        <td>40</td>
                                        <td>4 Shirley Ave. West Chicago, IL 60185</td>
                                        <td>May 17, 2021</td>
                                        <td>May 16, 2021</td>
                                        <td>
                                            <div class="progress" style="height: 3px;">
                                                <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"> <span class="sr-only">100% Complete</span> </div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-success">Discharge</span></td>
                                    </tr>
                                    <tr>
                                        <td>PT-1001</td>
                                        <td><img src="assets/images/xs/avatar8.jpg" class="avatar  rounded-circle me-2" alt="profile-image"><span>Ryan </span></td>
                                        <td>34</td>
                                        <td>70 Bowman St. South Windsor, CT 06074</td>
                                        <td>May 13, 2021</td>
                                        <td>May 16, 2021</td>
                                        <td>
                                            <div class="progress" style="height: 3px;">
                                                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;"> <span class="sr-only">40% Complete</span> </div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-info">Admit</span></td>
                                    </tr>
                                    <tr>
                                        <td>PT-1101</td>
                                        <td><img src="assets/images/xs/avatar7.jpg" class="avatar  rounded-circle me-2" alt="profile-image"><span>Christian</span></td>
                                        <td>21</td>
                                        <td>123 6th St. Melbourne, FL 32904</td>
                                        <td>May 13, 2021</td>
                                        <td>May 22, 2021</td>
                                        <td>
                                            <div class="progress" style="height: 3px;">
                                                <div class="progress-bar bg-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"> <span class="sr-only">100% Complete</span> </div>
                                            </div>
                                        </td>
                                        <td><span class="badge bg-success">Discharge</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
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
<script>
     $(document).ready(function() {
        $('#patient-table')
        .addClass( 'nowrap' )
        .dataTable( {
            responsive: true,
            columnDefs: [
                { targets: [-1, -3], className: 'dt-body-right' }
            ]
        });
    });

</script>
 
</body>
</html> 