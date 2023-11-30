<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
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
	<%int id = (int)session.getAttribute("id");%>
	<%String name = (String)session.getAttribute("name");%>
	<%String designation = (String) session.getAttribute("designation");%>
	<% request.setAttribute("id",id);%>
	<% request.setAttribute("name", name);%>
	<% request.setAttribute("designation", designation);%>
</head>
  <!-- ======= Header ======= -->
  
   <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <i class="bi bi-list toggle-sidebar-btn"></i>
      <a href="hrdashboard.jsp" class="logo d-flex align-items-center">
        <span class="d-none d-lg-block hr-head-ml" style="margin-left:15px;">Human Resource</span>
      </a>
      
    </div><!-- End Logo -->

   <!-- End Search Bar -->
	<h5  style="margin-left:20px; margin-bottom:20px;"><h5><b>Welcome, ${name} (${designation})</b></h5>
    <nav class="header-nav ms-auto me-4">
      <a href="#" class=" btn btn-primary">logout</a>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->