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
            <h1>Employee List</h1>
         </div>
         <section class="section">
            <div class="card">
               <div class="card-body">
                  <table class="table table-striped" style="font-size: small">
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
                        <% int a = 50; 
                           String firstname = "Heeramani";
                           String lastname = "Mourya";
                           for(int i = 1; i<=a; i++){%>
                        <tr>
                           <th scope="row"><%out.print(i); %></th>
                           <td><%out.print(firstname+" "+lastname); %></td>
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