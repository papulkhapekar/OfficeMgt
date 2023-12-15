<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@page import="java.util.*" %>
	<%@page import="bean.empbean" %>
	<%@page import="dao.hrDao" %>
	<%int eid = Integer.parseInt(request.getParameter("id")); %>
	<%empbean eb = hrDao.viewEmp(eid);%>
	<%request.setAttribute("e", eb);%>
</head>
   <body>
      <!-- ======= Header ======= -->
      <%@ include file="hrheader.jsp" %>  
      <!-- ======= Sidebar End======= -->
      <!-- ======= Sidebar ======= -->
      <%@ include file="hrsidebar.jsp" %>  
      <!-- ======= Sidebar End======= -->
      <main id="main" class="main">
         <div class="pagetitle">
            <h1>Add New Employee</h1>
         </div>
         <section class="section">
            <div class="card">
               <div class="card-body">
        		<form method="post" action="../addnewemp">
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Your Name</label>
                           <input type="text" class="form-control" placeholder="First Name" name="fname" value="${e.getFname()}" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Last Name</label>
                           <input type="text" class="form-control" placeholder="Last Name" name="lname" value="${e.getLname()}" required>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Contact Number</label>
                           <input type="text" readonly class="form-control" placeholder="Contact Number" name="contact" value="${e.getContact()}" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Alternate contact Number</label>
                           <input type="text" class="form-control" placeholder="Alternate contact Number" name="acontact" value="${e.getAcontact()}">
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Email as Username</label>
                           <input type="text" readonly class="form-control" placeholder="Email as Username" name="email" value="${e.getEmail()}" required >
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label"></label>
                           <input type="hidden" class="form-control" placeholder="Password" name="password"  required>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Gender</label>
                           <input type="text" class="form-control" placeholder="Gender" name="gender" value="${e.getGender()}" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Date of Birth</label>
                           <input type="date" class="form-control" placeholder="Date of Birth" name="dob" value="${e.getDob()}" required>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Address</label>
                           <input type="text" class="form-control" placeholder="Address" name="address" value="${e.getAddress()}" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">City</label>
                           <input type="text" class="form-control" placeholder="City" name="city" value="${e.getCity()}" required>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">State</label>
                           <input type="text" class="form-control" placeholder="State" name="state" value="${e.getState()}" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Pincode</label>
                           <input type="text" class="form-control" placeholder="Pincode" name="pincode" value="${e.getPincode()}" required>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Hire Date</label>
                           <input type="date" class="form-control" placeholder="Hire Date" name="doj" value="${e.getDoj()}" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Experiance</label>
                           <select class="form-select" aria-label="Default select example" name="experiance" value="${e.getExperiance()}" required>
                             
                              <option value="0">Fresher</option>
                              <option value="1">1 year</option>
                              <option value="2">2 year</option>
                              <option value="3">3 year</option>
                           </select>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Designation</label>
                           <select class="form-select" aria-label="Default select example" name="designation" value="${e.getDesignation()}" required>
                              
                              <option value="Developer">Developer</option>
                              <option value="Tester">Tester</option>
                              <option value="Team Lead">Team Lead</option>
                              <option value="Project Manager">Project Manager</option>
                           </select>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Education</label>
                           <select class="form-select" aria-label="Default select example" name="education" value="${e.getEducation()}" required>
                             
                              <option value="Graduate">Graduate</option>
                              <option value="Post Graduate">Post Graduate</option>
                              <option value="MS">MS</option>
                           </select>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-5">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <button type="submit" class="btn btn-primary"> Update Employee</button>
                        </div>
                     </div>
                     <div class="col-lg-6">
                     </div>
                  </div>
                  </form>
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