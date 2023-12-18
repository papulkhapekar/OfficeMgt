package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.attBean;
import bean.empbean;

public class empDao {
static Connection con = null;
	
	static Connection Connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/officemgt","root","");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
	
	public static empbean empllogin(String email, String pass)
	{
		empbean ab = null;
		try {
			Connection con = Connect();
			 PreparedStatement ps=con.prepareStatement("select empid,fname,lname,email,password,designation from employee where email=? and password=?");
			 ps.setString(1, email);
			 ps.setString(2, pass);
			 ResultSet rs = ps.executeQuery();
		
				 while(rs.next())
				 {
					 ab = new empbean();
					 ab.setEmpid(rs.getInt(1));
					 ab.setFname(rs.getString(2));
					 ab.setLname(rs.getString(3));
					 ab.setEmail(rs.getString(4));
					 ab.setPassword(rs.getString(5));
					 ab.setDesignation(rs.getString(6));
					 
				 }
			 
			 
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		return ab;
	}
	
	public static int LogAttendance(attBean ab)
	{
		int status = 0;
		
		try {
			Connection con = Connect();
			 PreparedStatement ps=con.prepareStatement("insert into attendance (logintime,today,empid) values(?,?,?)");
			 ps.setString(1, ab.getLogintim());
			 ps.setString(2, ab.getToday());
			 ps.setInt(3, ab.getEmpid());
			 status = ps.executeUpdate();
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int LogOutAttendance(attBean ab)
	{
		int status = 0;
		
		try {
			Connection con = Connect();
			 PreparedStatement ps=con.prepareStatement("update attendance set logouttime=? where today=? and empid=?");
			 ps.setString(1, ab.getLogintim());
			 ps.setString(2, ab.getToday());
			 ps.setInt(3, ab.getEmpid());
			 status = ps.executeUpdate();
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
}
