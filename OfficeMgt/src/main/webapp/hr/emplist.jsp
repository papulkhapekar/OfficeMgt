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
	<%list = hrDao.showAllEmp();%>
	<%request.setAttribute("list", list);%>
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
                           <th scope="col">Operations</th>
                        </tr>
                     </thead>
                     <tbody>
                     	<%int i = 1;%>
							<c:forEach items="${list}" var="u">
                        <tr>
                        	
                           <th><%out.print(i++); %></th>
                           <td>${u.getFname()} ${u.getLname()}</td>
                           <td>${u.getDesignation()}</td>
                           <td>${u.getGender()}</td>
                           <td>${u.getDoj()}</td>
                           <td>${u.getContact()}</td>
                           <td>${u.getEmail()}</td>
                           <td>
                           	<a href="viewemp.jsp?id=${u.getEmpid()}" data-toggle="tooltip" title="View"><i class="bi bi-eye primary"></i></a> 
                           	<a href="editEmp.jsp?id=${u.getEmpid()}" data-toggle="tooltip" title="Edit"><i class="bi bi-pencil primary"></i></a>
                           	<a href="../deleteEmp?id=${u.getEmpid()}" data-toggle="tooltip" title="Delete"><i class="bi bi-file-earmark-x primary"></i></a>
                           </td>
                        	
                        </tr>
                 	</c:forEach>
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