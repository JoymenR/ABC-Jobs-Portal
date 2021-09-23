package com.lithan.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;

import com.lithan.bean.employee;
import com.lithan.dao.ProfileDao;
import com.opensymphony.xwork2.ActionSupport;

public class ProfileAction extends ActionSupport{
	private SessionMap<String,Object> sessionMap;
	
	
	private static final long serialVersionUID = 994041322593789317L;
	ResultSet rs = null;
	employee user = null;
	ArrayList<employee> beanList = null;
	ProfileDao admin = new ProfileDao();
	private boolean noData = true;
	@Override
	public String execute() throws Exception {
		 HttpSession session=ServletActionContext.getRequest().getSession(false); 
		 
	        if(session==null || session.getAttribute("login")==null){  
	        	addActionMessage("Please Login First To See Profile ");
	        	return "error";
	             
	        }  
	        else{  
               String email = (String) session.getAttribute("email");
	        	
	        	beanList = new ArrayList<employee>();
	        	rs = admin.report(email);
	        	int i = 0;
	        	if (rs != null) {
	        	while (rs.next()) {
	        	i++;
	        	user = new employee();
	        	user.setFname(rs.getString("First_Name"));
	        	user.setLname(rs.getString("Last_Name"));
	        	user.setGender(rs.getString("Gender"));
	        	user.setEmail(rs.getString("Email"));
	        	user.setContact(rs.getString("Contact"));
	        	user.setDob(rs.getString("Date_Of_Birth"));
	        	user.setInstitue(rs.getString("Institute"));
	        	user.setLocation(rs.getString("Location"));
	        	user.setFore(rs.getString("Fresher_or_Experienced"));
	        	user.setJobt(rs.getString("Job_Title"));
	        	user.setExp(rs.getString("Experience"));
	        	user.setExpectedsal(rs.getString("Expected_Salary"));
	        	user.setKskill(rs.getString("Key_Skill"));
	        	user.setSkillexp(rs.getString("Skill_Experience"));
	        	user.setKskill2(rs.getString("Key_skill2"));
	        	user.setSkillexp2(rs.getString("Skill_Experience2"));
	        	user.setResumetime(rs.getString("Resume_Time"));
	        	user.setResume(rs.getString("Resume"));
				beanList.add(user);
	        	}
	        	}
	        	if (i == 0) {
	        	noData = false;
	        	} else {
	        	noData = true;
	        	}
	            return "success";  
	        }  
		
	
	
	}
	public boolean isNoData() {
	return noData;
	}
	public void setNoData(boolean noData) {
	this.noData = noData;
	}
	public ArrayList<employee> getBeanList() {
	return beanList;
	}
	public void setBeanList(ArrayList<employee> beanList) {
	this.beanList = beanList;
	}
	
	public String logout(){  
	    if(sessionMap!=null){  
	        sessionMap.invalidate();  
	    }  
	    return "LoginAction.fsuccess";  }
	
	
		public void setSession(Map<String, Object> map) {  
		    this.sessionMap=(SessionMap)map;  
		}  
		
	
	
	}