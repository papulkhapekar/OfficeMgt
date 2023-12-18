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
	<style>
		.fontdesign
		{
			color:black;
			font-size:small;
		}
	</style>
  <!-- Template Main CSS File -->
  <link href="../assets/css/style.css" rel="stylesheet">
	<% int id = 0;
      	if(session.getAttribute("id")!=null)
      	{
      		id = (int)session.getAttribute("id");
      		String in = (String)session.getAttribute("in");
      		request.setAttribute("in", in);
      	}
      	else
      	{ response.sendRedirect("../hrlogin.jsp");
      		 
      	}
      %>
	<%String name = (String)session.getAttribute("name");%>
	<%String designation = (String) session.getAttribute("designation");%>
	<% request.setAttribute("id",id);%>
	<% request.setAttribute("name", name);%>
	<% request.setAttribute("designation", designation);%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
 <!-- ======= Header ======= -->
  
   <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Employee</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

   <!-- End Search Bar -->

    <nav class="header-nav ms-auto me-4">
    <c:if test="${empty in}">
           <a href="../logattendance?id=${id}" class=" btn btn-primary">Login to Work</a>
    </c:if>
    <c:if test="${not empty in}">
           <a href="../outattendance?id=${id}" class=" btn btn-danger">Logout to Work</a>
    </c:if>
    	
      <a href="../emplogout" class=" btn btn-primary">logout</a>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->