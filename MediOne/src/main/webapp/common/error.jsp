<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<style>
.logform-size{
height: 600px;

}
.form-background {
    background-color: #6aab9c;
}

# background {
background-color: #6aab9c;
}

.secondary-color{
	color: darkorange;
}


</style>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>:: I-Health:: 404 Page</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/dist/favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- project css file  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/assets/css/ihealth.style.min.css">
</head>

<body>

<div id="ihealth-layout" class="theme-tradewind">

    <!-- main body area -->
    <div class="main p-2 py-3 p-xl-5">
        
        <!-- Body: Body -->
        <div class="body d-flex p-0 p-xl-5">
            <div class="container-xxl">

                <div class="row g-0">
                    <div class="col-lg-6 d-none d-lg-flex justify-content-center align-items-center rounded-lg auth-h100">
                        <div style="max-width: 25rem;">
                            <div class="text-center mb-5">
                                <i class="icofont-heart-beat secondary-color" style="font-size: 90px;"></i>
                          </div>
                            <div class="mb-5">
                                <h2 class="color-900 text-center">I-Health, We aim to make your life better</h2>
                            </div>
                            <!-- Image block -->
                            <div class="">
                                <img src="<%=request.getContextPath()%>/resources/dist/assets/images/login-img.svg" alt="login-img">
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 d-flex justify-content-center align-items-center border-0 rounded-lg auth-h100">
                        <div class="w-100 p-3 p-md-5 card border-0 form-background text-light" style="max-width: 32rem;" id="background">
                            <!-- Form -->
                            <form class="row g-1 p-3 p-md-4 form-background" >
                                <div class="col-12 text-center mb-4">
                                    <img src="<%=request.getContextPath()%>/resources/dist/assets/images/not_found.svg" class="w240 mb-4" alt="" />
                                    <h5>OOP! PAGE NOT FOUND</h5>
                                    <span class="text-light">Sorry, the page you're looking for doesn;t exist. if you think something is brlken, report a problem.</span>
                                </div>
                                <div class="col-12 text-center">
                                    <a href="index.html" title="" class="btn btn-lg btn-block btn-light lift text-uppercase">Back to Home</a>
                                </div>
                            </form>
                            <!-- End Form -->
                        </div>
                    </div>
                </div> <!-- End Row -->
                
            </div>
        </div>

    </div>

</div>

<!-- Jquery Core Js -->
<script src="<%=request.getContextPath()%>/resources/dist/assets/bundles/libscripts.bundle.js"></script>

</body>
</html>