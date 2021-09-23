package com.lithan.action;


import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.lithan.dao.LoginDao;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{

	

	private static final long serialVersionUID = -4971856450438473117L;
	private String email;
	private String password;
	private SessionMap<String,Object> sessionMap;
	
	
	
	
	public void setSession(Map<String, Object> map) {  
	    this.sessionMap=(SessionMap)map;  
	}  
	
	
	public String execute() throws SQLException, Exception
	{   
	
	if(email != null) {
		LoginDao bao = new LoginDao();
		boolean check = bao.validate(email, password);
		
		
		if(check == true)
		{
			
		}
		else {
			addActionMessage("Email Or Password Is Incorrect");
			return "error";
		}
		sessionMap.put("login","true");  
		sessionMap.put("email",email);  
	}
	
	return "success";
	}
	
	public String logout(){  
	    if(sessionMap!=null){  
	        sessionMap.invalidate();
	        addActionMessage("Logout Successful");
	    }  
	    return "fsuccess";  
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}  
   
	
	}