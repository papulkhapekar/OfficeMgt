package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	
	public static hrbean hrLogin(hrbean hb)
	{
		try {
		Connection con = Connect(); 
        PreparedStatement ps=con.prepareStatement("select * from hr where email=? and password=?");  
        ps.setString(1, hb.getEmail());
        ps.setString(2, hb.getPassword());
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
        	hb =new hrbean();  
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
}
