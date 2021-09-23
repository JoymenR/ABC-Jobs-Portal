package com.lithan.dao;
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;
import java.sql.SQLException;  
  
public class AdminloginDao {  
	
	
	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/in0719a14o?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","IN0719A14O","i5vAhfrF1");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
  
	public boolean loginadmin(String username, String password) throws SQLException, Exception
	{
	boolean whatthestatus = false; 
	try {
	String sqls = "Select * from admin WHERE username=? and password=?";
	PreparedStatement ps = getConnection().prepareStatement(sqls);
	ps.setString(1, username);
	ps.setString(2, password);
	ResultSet rs = ps.executeQuery();
	whatthestatus = rs.next();
	}
	catch(SQLException e){
		e.printStackTrace();
		
		
	}
	catch(Exception b)
	{
	b.printStackTrace();

	}

	return whatthestatus;
	}
}