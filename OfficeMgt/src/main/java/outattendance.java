

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.attBean;
import dao.empDao;


@WebServlet("/outattendance")
public class outattendance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public outattendance() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		int empId = Integer.parseInt(request.getParameter("id"));
		String dateTime =  getCurrentTimeStamp();
		String[] splitDatetime = dateTime.split(" ",2);
		String intime =splitDatetime[1];
		String tDate =splitDatetime[0];	
		attBean ab = new attBean();
		ab.setEmpid(empId);
		ab.setLogintim(intime);
		ab.setToday(tDate);
		empDao ed = new empDao();
		int status = ed.LogOutAttendance(ab);
		HttpSession session = request.getSession();
		if(status>=1)
		{
			session.setAttribute("in", null);
			response.sendRedirect("emp/empdashboard.jsp");
		}
		else
		{
			pw.print("not done");
		}
	}
	
	public static String getCurrentTimeStamp() {
	    SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//dd/MM/yyyy
	    Date now = new Date();
	    String strDate = sdfDate.format(now);
	    return strDate;
	}
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
