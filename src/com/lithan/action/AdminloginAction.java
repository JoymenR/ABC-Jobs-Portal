package com.lithan.action;


import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.lithan.dao.AdminloginDao;
import com.opensymphony.xwork2.ActionSupport;

public class AdminloginAction extends ActionSupport implements SessionAware{

	
	private static final long serialVersionUID = -3353507406394033775L;
	private String username;
	private String password;
	private SessionMap<String,Object> sessionMap;
	
	
	
	
	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public void setSession(Map<String, Object> map) {  
	    this.sessionMap=(SessionMap)map;  
	}  
	
	
	public String execute() throws SQLException, Exception
	{   
	
	if(username != null) {
		AdminloginDao bao = new AdminloginDao();
		boolean check = bao.loginadmin(username, password);
		
		
		if(check == true)
		{
			String  messages = "Login is successfull";
			
		   
		}
		else {
			addActionMessage("Please Enter Valid Username and Password");
			return "backLogin";
		}
		 sessionMap.put("login","true");  
		 sessionMap.put("username",username);  
		 addActionMessage("Logout Successful");
	}
	
	return "login";
	}
	
	public String logout(){  
	    if(sessionMap!=null){  
	        sessionMap.invalidate();
	        addActionMessage("Logout Successful");
	    }  
	    return "alogout";  
	}  
   
	
	}
	

