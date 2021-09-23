package com.lithan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegisterDao {

	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/in0719a14o?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","IN0719A14O","i5vAhfrF1");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int registerUser(String fname, String lname, String gender, String email, String contact, String password) throws Exception {
		int i = 0;
		try {
		String sql = "INSERT INTO employee(First_Name, Last_Name, Gender, Email, Contact, Password) VALUES (?,?,?,?,?,?)";
		PreparedStatement ps =
		getConnection().prepareStatement(sql);
		ps.setString(1, fname);
		ps.setString(2, lname);
		ps.setString(3, gender);
		ps.setString(4, email);
		ps.setString(5, contact);
		ps.setString(6, password);
		i = ps.executeUpdate();
		return i;
		} catch (Exception e) {
		e.printStackTrace();
		return i;
		} finally {
		if (getConnection() != null) {
		getConnection().close();
		}
		}
		}
	
	
	public boolean registerEmailCheck(String email) throws Exception
	{
 System.out.println(email);
	 boolean check = false;
	 
	 try 
	 {
		 String sql = "Select * From employee where Email = ?";
		 PreparedStatement ps = getConnection().prepareStatement(sql);
		 ps.setString(1, email);
		 ResultSet rs = ps.executeQuery();
		 check = rs.next();
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	 
	 return check;
	}
}
