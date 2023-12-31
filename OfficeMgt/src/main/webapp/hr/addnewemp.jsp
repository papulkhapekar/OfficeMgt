<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
                           <input type="text" class="form-control" placeholder="First Name" name="fname" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Last Name</label>
                           <input type="text" class="form-control" placeholder="Last Name" name="lname" required>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Contact Number</label>
                           <input type="text" class="form-control" placeholder="Contact Number" name="contact" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Alternate contact Number</label>
                           <input type="text" class="form-control" placeholder="Alternate contact Number" name="acontact">
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Email as Username</label>
                           <input type="text" class="form-control" placeholder="Email as Username" name="email" required >
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Password</label>
                           <input type="text" class="form-control" placeholder="Password" name="password"  required>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Gender</label>
                           <input type="text" class="form-control" placeholder="Gender" name="gender" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Date of Birth</label>
                           <input type="date" class="form-control" placeholder="Date of Birth" name="dob" required>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Address</label>
                           <input type="text" class="form-control" placeholder="Address" name="address" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">City</label>
                           <input type="text" class="form-control" placeholder="City" name="city" required>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">State</label>
                           <input type="text" class="form-control" placeholder="State" name="state" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Pincode</label>
                           <input type="text" class="form-control" placeholder="Pincode" name="pincode" required>
                        </div>
                     </div>
                  </div>
                  <div class="row mt-3">
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Hire Date</label>
                           <input type="date" class="form-control" placeholder="Hire Date" name="doj" required>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="form-group">
                           <label class="form-label">Experiance</label>
                           <select class="form-select" aria-label="Default select example" name="experiance" required>
                              <option selected>Select Experiance</option>
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
                           <select class="form-select" aria-label="Default select example" name="designation" required>
                              <option selected>Select Designation</option>
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
                           <select class="form-select" aria-label="Default select example" name="education" required>
                              <option selected>Select Education</option>
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
                           <button type="submit" class="btn btn-primary"> Add Employee</button>
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