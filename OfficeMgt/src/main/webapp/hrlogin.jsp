<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1.0" name="viewport">
      <title>Pages / Login - NiceAdmin Bootstrap Template</title>
      <meta content="" name="description">
      <meta content="" name="keywords">
      <!-- Favicons -->
      <link href="assets/img/favicon.png" rel="icon">
      <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
      <!-- Google Fonts -->
      <link href="https://fonts.gstatic.com" rel="preconnect">
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
      <!-- Vendor CSS Files -->
      <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
      <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
      <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
      <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
      <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
      <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
      <!-- Template Main CSS File -->
      <link href="assets/css/style.css" rel="stylesheet">
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
      <%String errMsg = (String)session.getAttribute("errMsg");%> 
      <%request.setAttribute("errMsg", errMsg);%> 
      <%
      	if(session.getAttribute("id")!=null)
      	{
      		response.sendRedirect("hr/hrdashboard.jsp");
      	}
      %>
   </head>
   <body>
      <main>
         <div class="container">
            <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
               <div class="container">
                  <div class="row justify-content-center">
                     <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
                        <div class="d-flex justify-content-center py-4">
                           <a href="index.html" class="logo d-flex align-items-center w-auto">
                           <span class="d-none d-lg-block">Human Resouce Login</span>
                           </a>
                        </div>
                        <!-- End Logo -->
                        <div class="card mb-3">
                           <div class="card-body">
                              <div class="pt-4 pb-2">
                                 <h5 class="card-title text-center pb-0 fs-4"></h5>
                                 <c:if test="${not empty errMsg}">
                                 <p class="text-center"><span class="text-danger">${errMsg}</span></p>
                                 <c:remove var="errMsg"/>
                                 </c:if>
                                 <p class="text-center small">Enter your email & password to login</p>
                              </div>
                              <form  method="post" action="./hrLogin">
                                 <div class="col-12">
                                    <label for="yourUsername" class="form-label">Username</label>
                                    <input type="text"  class="form-control" id="yourUsername" name="username" required>
                                 </div>
                                 <div class="col-12">
                                    <label for="yourPassword" class="form-label">Password</label>
                                    <input type="password"  class="form-control" id="yourPassword" name="pass" required>
                                 </div>
                                 <div class="col-12">
                                    <button  class="btn btn-primary w-100 mt-3" type="submit">Login</button>
                                 </div>
                              </form>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
         </div>
      </main>
      <!-- End #main -->
      <!-- Vendor JS Files -->
      <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
      <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="assets/vendor/chart.js/chart.umd.js"></script>
      <script src="assets/vendor/echarts/echarts.min.js"></script>
      <script src="assets/vendor/quill/quill.min.js"></script>
      <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
      <script src="assets/vendor/tinymce/tinymce.min.js"></script>
      <script src="assets/vendor/php-email-form/validate.js"></script>
      <!-- Template Main JS File -->
      <script src="assets/js/main.js"></script>
   </body>
</html>