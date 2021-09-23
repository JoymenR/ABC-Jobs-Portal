package com.lithan.action;


import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.*;
import javax.mail.internet.*;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.lithan.dao.ForgotDao;
import com.opensymphony.xwork2.ActionSupport;



public class ForgotMailAction extends ActionSupport implements SessionAware{
  
	private static final long serialVersionUID = 7028721707048827586L;
		private String email;
	      private boolean noData = false;
	      private SessionMap<String,Object> sessionMaps;
	      
	      public void setEmail(String email)
	      {
	    	  this.email = email;
	      }
	      
	      public String getEmail()
	      {
	    	  return this.email;
	      }
	      
	      public void setSession(Map<String, Object> map) {  
	  	    this.sessionMaps=(SessionMap)map;  
	  	}  
	  	
	      
	      public String execute() throws SQLException, Exception
	      {
	    	  if(email != null)
	    	  {
	    		  ForgotDao mao = new ForgotDao();
	    		  ResultSet rs = mao.reports(email);
	    		  int i = 0;
	    		  if(rs != null)
	    		  while(rs.next())
	    		  {
	    			i++;
	    			Random rand = new Random();
	    			int otp = rand.nextInt(900000) + 100000; 
	    			
	    		    String to=email;
	    			//Getting the session object
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
	    				message.setSubject("OTP Verification");
	    				message.setText("The OTP to change Your ABC Jobs Password is  " + otp);
	    				//send message
	    				Transport.send(message);
	    				System.out.println("message sent successfully " + otp);
	    				 
	    				  
	    				} 
	    			catch (MessagingException e)
	    			      {
	    					throw new RuntimeException(e);
	    					
	    					
	    			      }
	    			sessionMaps.put("mail","true");  
	    			sessionMaps.put("otp",otp); 
	    			sessionMaps.put("email",email);
	    			  
	    			 
	    		  }
	    		  
	    		  if (i == 0) {
	  	        	noData = false;
	  	        	System.out.println("Email is incorrect!");
	  	        	addActionMessage("This Email Address Is Not Registerd with Us");
	  	        	return "error";
	  	        	} else {
	  	        	noData = true;
	  	        	System.out.println("Email is correct!");
	  	        	
	  	        	}
	    		  
	    		  
	    	  }
	    	  
	    	
	    	  return "success";
	    	  
	      }
	
	      public boolean isNoData() {
	    		return noData;
	    		}
	    		public void setNoData(boolean noData) {
	    		this.noData = noData;
	    		}
	      
	 
	
}

