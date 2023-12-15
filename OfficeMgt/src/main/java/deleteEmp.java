

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.hrDao;


@WebServlet("/deleteEmp")
public class deleteEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public deleteEmp() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));
		hrDao hd = new hrDao();
		int status = 0;
		status = hd.delateEmployee(id);
		if(status >= 1)
		{
			response.sendRedirect("hr/emplist.jsp");
		}
		else
		{
			pw.print("Not deleted"); 
		}
		   
		
	}

	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
