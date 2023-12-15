<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@page import="java.util.*" %>
	<%@page import="bean.empbean" %>
	<%@page import="dao.hrDao" %>
</head>
   <body>
      <!-- ======= Header ======= -->
      <%@ include file="hrheader.jsp" %>  
      <!-- ======= Sidebar End======= -->
      <!-- ======= Sidebar ======= -->
      <%@ include file="hrsidebar.jsp" %>  
      <!-- ======= Sidebar End======= -->
    <%List <empbean>list = new ArrayList<empbean>();%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
	<%int eid = Integer.parseInt(request.getParameter("id")); %>
	<%empbean eb = hrDao.viewEmp(eid);%>
	<%request.setAttribute("e", eb);%>
      <main id="main" class="main">
         <div class="pagetitle">
            <h1>Employee Details</h1>
         </div>
         <section class="section">
            
               <div class="row">
        <div class="col-xl-4">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

              <img src="../assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
              <h2>${e.getFname()} ${e.getLname()}</h2>
              <h3>(${e.getDesignation()})</h3>
              
            </div>
          </div>

        </div>
        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
                </li>

               

              </ul>
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                  
                  <h5 class="card-title">Profile Details</h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label fontdesign">Full Name</div>
                    <div class="col-lg-9 col-md-8 fontdesign">${e.getFname()} ${e.getLname()}</div>
                  </div>
					<div class="row">
                    <div class="col-lg-3 col-md-4 label fontdesign">Gender</div>
                    <div class="col-lg-9 col-md-8 fontdesign">${e.getGender()}</div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label fontdesign">Designation</div>
                    <div class="col-lg-9 col-md-8 fontdesign">${e.getDesignation()}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label fontdesign">Experiance</div>
                    <div class="col-lg-9 col-md-8 fontdesign">${e.getExperiance()} year</div>
                  </div>
					<hr>
					
					<h5 class="card-title">Address Details</h5>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label fontdesign">Address</div>
                    <div class="col-lg-9 col-md-8 fontdesign">${e.getAddress()}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label fontdesign">State</div>
                    <div class="col-lg-9 col-md-8 fontdesign">${e.getState()}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label fontdesign">City</div>
                    <div class="col-lg-9 col-md-8 fontdesign">${e.getCity()} - ${e.getPincode()}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label fontdesign">Email</div>
                    <div class="col-lg-9 col-md-8 fontdesign">${e.getEmail()}</div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label fontdesign">Contact</div>
                    <div class="col-lg-9 col-md-8 fontdesign">${e.getContact()}</div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label fontdesign">Alternate Contact</div>
                    <div class="col-lg-9 col-md-8 fontdesign">${e.getAcontact()}</div>
                  </div>

                </div>

                

                

       

              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
        </div>
                 
              
         </section>
      </main>
      <!-- End #main -->
      <!-- ======= Footer ======= -->
      <!-- Footer Data Tag Start-->
      <%@ include file="hrfooter.jsp" %>  
      <!-- Footer Data Tag End-->
   </body>
</html>