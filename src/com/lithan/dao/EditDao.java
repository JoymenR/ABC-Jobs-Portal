package com.lithan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EditDao {

	private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss");
	Timestamp timestamp = new Timestamp(System.currentTimeMillis());
	Date date = new Date();

	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(
					"jdbc:mysql://localhost/in0719a14o?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
					"IN0719A14O", "i5vAhfrF1");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public ResultSet fetchUserDetails(String email) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM employee WHERE EMAIL=?";
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

	public int updateUserDetails(String fname, String lname, String gender, String contact, String emailhidden,
			String dob, String institue, String location, String fore, String jobt, String exp, String expectedsal,
			String kskill, String skillexp, String kskill2, String skillexp2, String resumetime, String resume,
			String email) throws SQLException, Exception {
		int i = 0;
		try {
			String sql = "UPDATE employee SET First_Name=?, Last_Name=?, Gender=?, Contact=?, Location=?, Date_Of_Birth=?, Institute=?, Fresher_or_Experienced=?, Job_Title=?, Experience=?, Expected_Salary=?, Key_Skill=?, Skill_Experience=?, Key_skill2=?, Skill_Experience2=?, Resume=?, Resume_Time=? WHERE Email=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			System.out.println(fname);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, gender);
			ps.setString(4, contact);
			ps.setString(5, location);
			ps.setString(6, dob);
			ps.setString(7, institue);
			ps.setString(8, fore);
			ps.setString(9, jobt);
			ps.setString(10, exp);
			ps.setString(11, expectedsal);
			ps.setString(12, kskill);
			ps.setString(13, skillexp);
			ps.setString(14, kskill2);
			ps.setString(15, skillexp2);
			ps.setString(16, resume);
			ps.setString(17, sdf.format(timestamp));
			ps.setString(18, email);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

}
