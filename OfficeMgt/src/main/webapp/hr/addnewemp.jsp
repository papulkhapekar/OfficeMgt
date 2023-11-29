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
            <h1>Add New Employee</h1>
         </div>
         <section class="section">
            <div class="card">
               <div class="card-body">
                  <div class="row mt-3">
                     <div class="col-lg-6">
                     <div class="form-group">
                     <label class="form-label">Your Name</label>
                         <input type="text" class="form-control" placeholder="First Name">
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="form-group">
                          <label class="form-label">Last Name</label>
                         <input type="text" class="form-control" placeholder="Last Name">
                         </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                     <div class="form-group">
                      <label class="form-label">Contact Number</label>
                         <input type="text" class="form-control" placeholder="Contact Number">
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="form-group">
                          <label class="form-label">Alternate contact Number</label>
                         <input type="text" class="form-control" placeholder="Alternate contact Number">
                         </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                     <div class="form-group">
                      <label class="form-label">Email as Username</label>
                         <input type="text" class="form-control" placeholder="Email as Username">
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="form-group">
                          <label class="form-label">Password</label>
                         <input type="text" class="form-control" placeholder="Password">
                         </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                     <div class="form-group">
                      <label class="form-label">Gender</label>
                         <input type="text" class="form-control" placeholder="Gender">
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="form-group">
                          <label class="form-label">Date of Birth</label>
                         <input type="date" class="form-control" placeholder="Date of Birth">
                         </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                     <div class="form-group">
                      <label class="form-label">Address</label>
                         <input type="text" class="form-control" placeholder="Address">
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="form-group">
                          <label class="form-label">City</label>
                         <input type="text" class="form-control" placeholder="City">
                         </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                     <div class="form-group">
                      <label class="form-label">State</label>
                         <input type="text" class="form-control" placeholder="State">
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="form-group">
                          <label class="form-label">Pincode</label>
                         <input type="text" class="form-control" placeholder="Pincode">
                         </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                     <div class="form-group">
                      <label class="form-label">Hire Date</label>
                         <input type="date" class="form-control" placeholder="Hire Date">
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="form-group">
                          <label class="form-label">Experiance</label>
                        <select class="form-select" aria-label="Default select example">
	                      <option selected>Select Experiance</option>
	                      	<option value="1">Fresher</option>
	                  		<option value="2">1 year</option>
	                  		<option value="3">2 year</option>
	                  		<option value="4">3 year</option>
	                    </select>
                         </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                     <div class="form-group">
                      <label class="form-label">Designation</label>
                         <select class="form-select" aria-label="Default select example">
	                      <option selected>Select Designation</option>
	                 
	                      	<option value="1">Developer</option>
	                  		<option value="2">tester</option>
	                  		<option value="2">Team Lead</option>
	                  		<option value="2">Project Manager</option>
	                    </select>
                         </div>
                     </div>
                     <div class="col-lg-6">
                         <div class="form-group">
                          <label class="form-label">Education</label>
                         <select class="form-select" aria-label="Default select example">
	                      <option selected>Select Education</option>
	                      <option value="1">Graduate</option>
	                      <option value="2">Post Graduate</option>
	                      <option value="3">MS</option>
	                    </select>
                         </div>
                     </div>
                  </div>
                  <div class="row mt-5">
                     <div class="col-lg-6">
                     <div class="form-group">
                      
                         <button type="submit" class="btn btn-primary"> Add Employee</button>
                         </div>
                     </div>
                     <div class="col-lg-6">
                         
                     </div>
                  </div>
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