

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.hrbean;
import dao.hrDao;


@WebServlet("/hrLogin")
public class hrLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public hrLogin() {
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
		String username, password;
		username = request.getParameter("username");
		password = request.getParameter("pass");
		hrDao hd = new hrDao();
		hrbean hb = new hrbean();
		hb = hd.hrLogin(username, password);
		HttpSession session=request.getSession();  
		if(username.equals(hb.getEmail()) && password.equals(hb.getPassword()))
		{
			 
			 session.setAttribute("id", hb.getId());
			 session.setAttribute("name", hb.getName());
			 session.setAttribute("designation", hb.getDesignation());
			 response.sendRedirect("hr/hrdashboard.jsp");
		}
		else
		{
			session.setAttribute("errMsg", "Invalid Cradentials");
			response.sendRedirect("hrlogin.jsp");
		}
	}

}
