package com.lithan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SearchDao {
	
	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/in0719a14o?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","IN0719A14O","i5vAhfrF1");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	public ResultSet userList (String Search) throws SQLException, Exception
	{
		ResultSet rs = null;
		
		
			try
			{
				String sql = "SELECT * FROM employee where First_Name Like ? or Last_Name Like ? or Job_Title Like ? or Location Like ?";
				PreparedStatement ps = getConnection().prepareStatement(sql);
				
				System.out.println(Search);
				ps.setString(1, "%"+Search+"%");
				ps.setString(2, "%"+Search+"%");
				ps.setString(3, "%"+Search+"%");
				ps.setString(4, "%"+Search+"%");
				
				rs = ps.executeQuery();
				
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
				
			}
			finally {
				if (getConnection() != null) {
				getConnection().close();
				}
		
			}
		
		
			return rs;
			
	    
	}
	
	
	
	public ResultSet report(String email) throws SQLException, Exception {
		ResultSet rs = null;
		try {
		String sql = "SELECT *,YEAR(CURDATE()) - YEAR(Date_Of_Birth) AS age FROM employee where email = ?";
		PreparedStatement ps = getConnection().prepareStatement(sql);
		ps.setString(1, email);
		rs = ps.executeQuery();
		return rs;
		} catch (Exception e) {
		e.printStackTrace();
		return null;
		} finally {
		if (getConnection() != null) {
		getConnection().close();
		}
		}
		}
	
	
	
	
	
	
	
	
	
	
	

}
