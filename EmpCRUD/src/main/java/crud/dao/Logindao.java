package crud.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import crud.bean.Loginbean;

public class Logindao {

	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.cj.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root","root");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	
	public static boolean validate(Loginbean bean){  
		boolean status=false;  
	  Connection con = getConnection();
	  try {
		PreparedStatement ps = con.prepareStatement("select * from login where username=? and password=?");
		
		ps.setString(1,bean.getUsername());
		ps.setInt(2,bean.getPassword());
		
		ResultSet rs= ps.executeQuery();
		status = rs.next();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return status;

}
	

}