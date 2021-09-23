package com.lithan.action;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.lithan.dao.ForgotDao;

public class ForgotUpdateAction {

private String password;
	
	

	public String execute() throws SQLException, Exception 
	{
		HttpSession session=ServletActionContext.getRequest().getSession(false); 
		 
        if(session==null || session.getAttribute("mail")==null){  
        	return "Failure";
             
        }  
        
        else 
        {
        	String email = (String) session.getAttribute("email");
        	
        	
        	ForgotDao bao = new ForgotDao();
        	int insert = bao.updatePass(email, password);
        	String msgs;
        	if (insert > 0) 
        	{
        		msgs = "Update Successfull";
        	} 
        	else
        	{
        		msgs = "Some error";
        	}
         } 
        		return "updatepass";
        	
        }



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
