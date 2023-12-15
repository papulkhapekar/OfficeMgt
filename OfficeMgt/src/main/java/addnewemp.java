

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.empbean;
import dao.hrDao;


@WebServlet("/addnewemp")
public class addnewemp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public addnewemp() {
        super();
        // TODO Auto-generated constructor stub
    }

	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		empbean eb = new empbean();
		
		eb.setFname(request.getParameter("fname"));
		eb.setLname(request.getParameter("lname"));
		eb.setContact(Long.parseLong(request.getParameter("contact")));
		eb.setAcontact(Long.parseLong(request.getParameter("acontact")));
		eb.setEmail(request.getParameter("email"));
		eb.setPassword(request.getParameter("password"));
		eb.setGender(request.getParameter("gender"));
		eb.setDob(request.getParameter("dob"));
		eb.setDoj(request.getParameter("doj"));
		eb.setAddress(request.getParameter("address"));
		eb.setCity(request.getParameter("city"));
		eb.setState(request.getParameter("state"));
		eb.setPincode(Integer.parseInt(request.getParameter("pincode")));
		eb.setExperiance(request.getParameter("experiance"));
		eb.setDesignation(request.getParameter("designation"));
		eb.setEducation(request.getParameter("education"));
		
		hrDao hd = new hrDao();
		int status = hd.addNewEmployee(eb);
		if(status>=1)
		{
			response.sendRedirect("hr/emplist.jsp");
		}
		else
		{
			pw.print("Data not inserted");
		}
	}

}
