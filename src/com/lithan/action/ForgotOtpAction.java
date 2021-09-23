package com.lithan.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.lithan.bean.employee;
import com.opensymphony.xwork2.ActionSupport;

public class ForgotOtpAction extends ActionSupport{
	


	private static final long serialVersionUID = -7008231011433576701L;
	employee user = null;
	int ctr = 0; 
	String messageotp;
	
	public void setUser(employee user)
	{
		this.user = user;
	}
	
	public employee getUser()
	{
		return user;
	}
	
	public void setctr(int ctr)
	{
		this.ctr = ctr;
	}
	
	public int getctr()
	{
		return ctr;
	}
	
	public void setmessageotp(String messageotp)
	{
		this.messageotp = messageotp;
	}
	
	
	public String getmessageotp()
	{
		return messageotp;
	}
	
	
	
	
	public String execute() throws Exception 
	{
	HttpSession session=ServletActionContext.getRequest().getSession(false);
	
	if(session==null || session.getAttribute("mail")==null){  
    	
		return "Failure";
         
    }  
	
		int otp = (Integer) session.getAttribute("otp");
		
		
		System.out.println(user.getOtpvalue());
		
		if(otp == user.getOtpvalue())
		{
			
			System.out.println("Otp matches");
		}
		
		else
		{	
			
			
			addActionMessage("The OTP Entered Is Incorrect");
			messageotp = "Otp entered is not correct";
			System.out.println("otp does not match");
			
			return "error";
		}
		
	
	
	return "OtpProcess";
}
	

}
