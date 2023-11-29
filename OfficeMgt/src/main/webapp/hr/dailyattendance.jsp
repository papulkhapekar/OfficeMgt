<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1.0" name="viewport">
      <title>Dashboard - NiceAdmin Bootstrap Template</title>
      <meta content="" name="description">
      <meta content="" name="keywords">
      <!-- Favicons -->
      <link href="../assets/img/favicon.png" rel="icon">
      <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">
      <!-- Google Fonts -->
      <link href="https://fonts.gstatic.com" rel="preconnect">
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
      <!-- Vendor CSS Files -->
      <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
      <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
      <link href="../assets/vendor/quill/quill.snow.css" rel="stylesheet">
      <link href="../assets/vendor/quill/quill.bubble.css" rel="stylesheet">
      <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
      <link href="../assets/vendor/simple-datatables/style.css" rel="stylesheet">
      <!-- Template Main CSS File -->
      <link href="../assets/css/style.css" rel="stylesheet">
   </head>
   <body>
      <!-- ======= Header ======= -->
      <header id="header" class="header fixed-top d-flex align-items-center">
         <div class="d-flex align-items-center justify-content-between">
            <a href="index.html" class="logo d-flex align-items-center">
            <img src="assets/img/logo.png" alt="">
            <span class="d-none d-lg-block">Human Resource</span>
            </a>
            <i class="bi bi-list toggle-sidebar-btn"></i>
         </div>
         <!-- End Logo -->
         <!-- End Search Bar -->
         <nav class="header-nav ms-auto me-4">
            <a href="#" class=" btn btn-primary">logout</a>
         </nav>
         <!-- End Icons Navigation -->
      </header>
      <!-- End Header -->
      </header><!-- End Header -->
      <!-- ======= Sidebar ======= -->
      <aside id="sidebar" class="sidebar">
         <ul class="sidebar-nav" id="sidebar-nav">
            <li class="nav-item">
               <a class="nav-link " href="index.html">
               <i class="bi bi-grid"></i>
               <span>Dashboard</span>
               </a>
            </li>
            <!-- End Dashboard Nav -->
            <li class="nav-item">
               <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
               <i class="bi bi-hand-index-thumb"></i><span>Daily Attendance</span>
               </a>
            </li>
            <!-- End Components Nav -->
            <li class="nav-item">
               <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
               <i class="bi bi-calendar2-week-fill"></i><span>Leave Management</span>
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
               <i class="bi bi-file-earmark-check"></i><span>Document Application</span>
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
               <i class="bi bi-file-person-fill"></i><span>Add Employee</span>
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
               <i class="bi bi-gear"></i><span>Setting</span>
               </a>
            </li>
            <li class="nav-item">
               <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
               <i class="bi bi-toggle2-off"></i><span>LogOut</span>
               </a>
            </li>
         </ul>
      </aside>
      <!-- End Sidebar-->
      <main id="main" class="main">
         <div class="pagetitle">
            <h1>Daily Attendance</h1>
         </div>
         <section class="section">
            <div class="card">
               <div class="card-body">
               <div class="row mt-3">
               <form action="dailyattendance.jsp" method="post">
                     <div class="col-lg-6">
                     <div class="form-group">
                         <input type="date" name="addeddate" class="form-control" >
                          <label class="form-label">Select date to see attendance</label>
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="form-group">
						<button class="btn btn-primary" type="submit">Submit</button>
                         </div>
                     </div>
                     </form>
                  </div>
               	
                     </div>
                     
               		<table class="table table-striped p-5" style="font-size: small;">
                <thead>
                  <tr>
                    <th scope="col">SR No</th>
                    <th scope="col">Name</th>
                    <th scope="col">Designation</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Hire Date</th>
                    <th scope="col">Contact</th>
                    <th scope="col">Email</th>
                    <th scope="col">View</th>
                  </tr>
                </thead>
                <tbody>
                <% String date = request.getParameter("addeddate");
                int a = 0;
             	if(date != null)
             	{
             		 a = 10;
             	}
             	else
             	{
             		 a = 0;
             	} 
                for(int i = 1; i<=a; i++){%>
                  <tr>
                    <th scope="row">1</th>
                    <td>Brandon Jacob</td>
                    <td>Designer</td>
                    <td>Male</td>
                    <td>2016-05-25</td>
                    <td>9999999999</td>
                    <td>email@email.com</td>
                    <td><button class="btn btn-warning btn-sm" style="font-size: small">View</button></td>
                  </tr>
                  <%} %>
                </tbody>
              </table>
               </div>
            </div>
         </section>
      </main>
      <!-- End #main -->
      <!-- ======= Footer ======= -->
      <footer id="footer" class="footer">
         <div class="copyright">
            &copy; Copyright <strong><span>Office MGT</span></strong>. All Rights Reserved
         </div>
         <div class="credits">
            <!-- All the links in the footer should remain intact. -->
            <!-- You can delete the links only if you purchased the pro version. -->
            <!-- Licensing information: https://bootstrapmade.com/license/ -->
            <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
         </div>
      </footer>
      <!-- End Footer -->
      <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
      <!-- Vendor JS Files -->
      <script src="../assets/vendor/apexcharts/apexcharts.min.js"></script>
      <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="../assets/vendor/chart.js/chart.umd.js"></script>
      <script src="../assets/vendor/echarts/echarts.min.js"></script>
      <script src="../assets/vendor/quill/quill.min.js"></script>
      <script src="../assets/vendor/simple-datatables/simple-datatables.js"></script>
      <script src="../assets/vendor/tinymce/tinymce.min.js"></script>
      <script src="../assets/vendor/php-email-form/validate.js"></script>
      <!-- Template Main JS File -->
      <script src="../assets/js/main.js"></script>
   </body>
</html>