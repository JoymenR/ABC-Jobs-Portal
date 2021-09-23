package com.lithan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ForgotDao {
	
	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/in0719a14o?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","IN0719A14O","i5vAhfrF1");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	
	public ResultSet reports(String Email) throws SQLException, Exception {
		ResultSet rs = null;
		try {
		String sql = "SELECT * FROM employee where email = ?";
		PreparedStatement ps = getConnection().prepareStatement(sql);
		ps.setString(1, Email);
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
	
	
	public int updatePass(String email, String password) throws SQLException, Exception
	{
	int i = 0;
	try {
	 String sqls = "Update employee set password = ? where email = ?";
	 PreparedStatement ps = getConnection().prepareStatement(sqls);
	 ps.setString(1, password);
	 ps.setString(2, email);

	 i = ps.executeUpdate();
	}
	catch(SQLException e)
	{
	 e.printStackTrace();	
	}
	catch(Exception f)
	{
	f.printStackTrace();	 
	}
	 return i;
	}

}
