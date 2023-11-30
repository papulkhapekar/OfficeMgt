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
      <!-- Footer Data Tag Start-->
      <%@ include file="hrfooter.jsp" %>  
      <!-- Footer Data Tag End-->
   </body>
</html>