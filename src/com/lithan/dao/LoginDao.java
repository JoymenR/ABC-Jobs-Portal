package com.lithan.dao;
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
  
public class LoginDao {  
  
public boolean validate(String email,String password){  
 boolean status=false;  
  try{  
	  Class.forName("com.mysql.cj.jdbc.Driver"); 
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/in0719a14o?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","IN0719A14O","i5vAhfrF1");  
     
   PreparedStatement ps=con.prepareStatement(  
     "select * from employee where email=? and password=?");  
   ps.setString(1,email);  
   ps.setString(2,password);  
   ResultSet rs=ps.executeQuery();  
   status=rs.next();  
   
  }catch(Exception e){e.printStackTrace();}  
 return status;  
}  
}