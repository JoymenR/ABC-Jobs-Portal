package com.lithan.action;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.lithan.dao.RegisterDao;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
private static final long serialVersionUID = 2129186287825680487L;
private String fname, lname, gender, email, contact, password;
private String msg = "";
RegisterDao admin = null;
int ctr = 0;
@Override
public String execute() throws Exception {
if(email != "") {

admin = new RegisterDao();
boolean  check = admin.registerEmailCheck(email);
System.out.println(email);
if(check == false) {
try {
ctr = admin.registerUser(fname, lname, gender, email, contact, password);

if (ctr > 0) {
msg = "Registration Successfull";
String to=email;
Properties props = new Properties();
props.put("mail.smtp.host", "smtp.gmail.com");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.port", "465");
Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
protected PasswordAuthentication getPasswordAuthentication() 
{
return new PasswordAuthentication("abcjobsproject@gmail.com","tphf5425");
}
});

try {
	MimeMessage message = new MimeMessage(session);
	message.setFrom(new InternetAddress("abcjobsproject@gmail.com"));
	message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
	message.setSubject("Welcome To ABC Jobs");
	message.setText("Welcome To Abc Jobs"+" "+ fname+" "+lname+ "."+ " " +"This Email Address is now registered with Us. All your Account related queries will be sent here.");
	
	
	Transport.send(message);
	System.out.println("message sent successfully " + fname);
	 
	  
	} 
catch (MessagingException e)
      {
		throw new RuntimeException(e);
		
		
      }
} else {
msg = "Some error";
}
} catch (Exception e) {
e.printStackTrace();
}
System.out.println("Registration done");
return "register";

}
else 
{
 System.out.println("This Email is Already In Use");
 addActionMessage("This Email is Already In Use");
 return "backRegister";
}
}
return "error";
}
public String getMsg() {
return msg;
}
public void setMsg(String msg) {
this.msg = msg;
}
public int getCtr() {
return ctr;
}
public void setCtr(int ctr) {
this.ctr = ctr;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}



}

