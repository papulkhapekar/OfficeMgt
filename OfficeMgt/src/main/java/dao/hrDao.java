package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.empbean;

import bean.hrbean;


public class hrDao {
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
	
	public static hrbean hrLogin(String uname,String pass)
	{
		hrbean hb = new hrbean(); 
		try {
		Connection con = Connect(); 
        PreparedStatement ps=con.prepareStatement("select * from hr where email=? and password=?");  
        ps.setString(1, uname);
        ps.setString(2, pass);
        ResultSet rs=ps.executeQuery(); 

        	while(rs.next()){ 
            	hb.setId(rs.getInt(1));
            	hb.setName(rs.getString(2));
            	hb.setDesignation(rs.getString(3));
            	hb.setEmail(rs.getString(4));
            	hb.setPassword(rs.getString(5));
            	} 
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return hb;
	}
	
	public static List<empbean> showAllEmp()
	{
		List <empbean>list = new ArrayList<empbean>();
		try {
			Connection con = Connect();
			PreparedStatement ps=con.prepareStatement("select empid,fname,lname,contact,email,gender,designation,doj from employee where dflag=1");  
	        ResultSet rs=ps.executeQuery(); 
	        while(rs.next())
	        {
	        	empbean eb = new empbean();
	        	eb.setEmpid(rs.getInt(1));
	        	eb.setFname(rs.getString(2));
	        	eb.setLname(rs.getString(3));
	        	eb.setDesignation(rs.getString(7));
	        	eb.setGender(rs.getString(6));
	        	eb.setDoj(rs.getString(8));
	        	eb.setContact(rs.getLong(4));
	        	eb.setEmail(rs.getString(5));
	        	list.add(eb);
	        }
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	
	public static int addNewEmployee(empbean eb)
	{
		int status = 0;
		
		try {
			Connection con = Connect();
			 PreparedStatement ps=con.prepareStatement("insert into employee(fname,lname,contact,acontact,email,password,gender,dob,doj,address,city,state,pincode,experiance,designation,education) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			 ps.setString(1, eb.getFname());
			 ps.setString(2, eb.getLname());
			 ps.setLong(3, eb.getContact());
			 ps.setLong(4, eb.getAcontact());
			 ps.setString(5, eb.getEmail());
			 ps.setString(6, eb.getPassword());
			 ps.setString(7, eb.getGender());
			 ps.setString(8, eb.getDob());
			 ps.setString(9, eb.getDoj());
			 ps.setString(10, eb.getAddress());
			 ps.setString(11, eb.getCity());
			 ps.setString(12, eb.getState());
			 ps.setInt(13, eb.getPincode());
			 ps.setString(14, eb.getExperiance());
			 ps.setString(15, eb.getDesignation());
			 ps.setString(16, eb.getEducation());
			 status = ps.executeUpdate();
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int delateEmployee(int id)
	{
		int status = 0;
		try {
			Connection con = Connect();
			 PreparedStatement ps=con.prepareStatement("update employee set dflag = 0 where empid="+id);
			
			 status = ps.executeUpdate();
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static empbean viewEmp(int id)
	{
		empbean eb = null; 
		try {
		Connection con = Connect(); 
        PreparedStatement ps=con.prepareStatement("select * from employee where empid="+id);  
        ResultSet rs=ps.executeQuery(); 
        	while(rs.next()){ 
        		eb = new empbean();
        		eb.setFname(rs.getString(2));
        		eb.setLname(rs.getString(3));
        		eb.setContact(rs.getLong(4));
        		eb.setAcontact(rs.getLong(5));
        		eb.setEmail(rs.getString(6));
        		eb.setPassword(rs.getString(7));
        		eb.setGender(rs.getString(8));
        		eb.setDob(rs.getString(9));
        		eb.setDoj(rs.getString(10));
        		eb.setAddress(rs.getString(11));
        		eb.setCity(rs.getString(12));
        		eb.setState(rs.getString(13));
        		eb.setPincode(rs.getInt(14));
        		eb.setExperiance(rs.getString(15));
        		eb.setDesignation(rs.getString(16));
        		eb.setEducation(rs.getString(17));
            } 
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return eb;
	}
}
