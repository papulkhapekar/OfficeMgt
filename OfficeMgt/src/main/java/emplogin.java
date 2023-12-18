

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.empbean;
import dao.empDao;

@WebServlet("/emplogin")
public class emplogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public emplogin() {
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
		String email, password;
		email = request.getParameter("username");
		password =  request.getParameter("password");
		empDao ed = new empDao();
		empbean eb = new empbean();
		eb = ed.empllogin(email, password);
		HttpSession session = request.getSession();
		if(eb != null)
		{
			if(email.equals(eb.getEmail()) && password.equals(eb.getPassword()))
			{
				session.setAttribute("id", eb.getEmpid());
				session.setAttribute("fname", eb.getFname());
				session.setAttribute("lanme", eb.getLname());
				session.setAttribute("email", eb.getEmail());
				session.setAttribute("desi", eb.getDesignation());
				response.sendRedirect("emp/empdashboard.jsp");
			}
			else
			{
				session.setAttribute("errMsg", "Invalid Cradentials");
				response.sendRedirect("emplogin.jsp");
			}
		}
		else
		{
			session.setAttribute("errMsg", "Invalid Cradentials");
			response.sendRedirect("emplogin.jsp");
		}
		
	}

}
