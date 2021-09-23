package com.lithan.action;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.ServletActionContext;

import com.lithan.bean.employee;
import com.lithan.dao.ReportDao;
import com.opensymphony.xwork2.ActionSupport;

public class ReportAction  extends ActionSupport{

	private String username;
	
	private static final long serialVersionUID = 2989931575807176879L;

	ResultSet rs = null;
	employee bean = null;
	List<employee> beanList = null;
	ReportDao admin = new ReportDao();
	private boolean noData = false;
	
	public String execute() throws Exception {
		
		 HttpSession session=ServletActionContext.getRequest().getSession(false); 
		 
	        if(session==null || session.getAttribute("login")==null){  
	        	addActionMessage("Please Login First");
	        	return "admerror";
	             
	        }  
	        else{  
		
		
		
		
		
		
		try {
			beanList = new ArrayList<employee>();
			rs = admin.report();
			int i = 0;
			if (rs != null) {
				while (rs.next()) {
					i++;
					bean = new employee();
					bean.setSrNo(i);
					bean.setFname(rs.getString("First_Name"));
					bean.setLname(rs.getString("Last_Name"));
					bean.setGender(rs.getString("Gender"));
					bean.setEmail(rs.getString("Email"));
					bean.setContact(rs.getString("Contact"));
					bean.setPassword(rs.getString("Password").replaceAll("(?s).", "*"));
					beanList.add(bean);
				}
			}
			if (i == 0) {
				noData = false;
			} else {
				noData = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "REPORT";
		
		
		
	        }
		
		
		
		
	}
	
	
	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}
	
	
	public List<employee> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<employee> beanList) {
		this.beanList = beanList;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}
}
