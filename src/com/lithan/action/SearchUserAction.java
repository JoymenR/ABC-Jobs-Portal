package com.lithan.action;

import com.lithan.bean.employee;
import com.lithan.dao.SearchDao;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class SearchUserAction extends ActionSupport  {
	
	

	
	private static final long serialVersionUID = -6750168050684601868L;
	private String Search;
	
	ResultSet rs = null;
	ResultSet rsss = null;
	employee bean = null;
	employee beans = null;
	ArrayList<employee> beanList = null;
	ArrayList<employee> beanl = null;
	SearchDao admins = new SearchDao();
	private boolean noData = false;
	private String email;
	
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public String getEmail()
	{
		return email;
	}
	
	public String execute() throws Exception
	{
		
		beanList = new ArrayList<employee>();
		if(Search == "") {
			addActionMessage("Search Field is Mandatory");
			return "error";
		}
		else {
    	rs = admins.userList(Search);
    	System.out.println(Search);
    	int i = 0;
    	
    	while (rs.next()) {
    	i++;
    	bean = new employee();
    	bean.setFname(rs.getString("First_Name"));
    	bean.setLname(rs.getString("last_name"));
    	bean.setLocation(rs.getString("Location"));
    	bean.setJobt(rs.getString("Job_Title"));
    	bean.setEmail(rs.getString("Email"));
    	beanList.add(bean);
    	}
    	
    	
    	
    	if (i == 0) {
    	noData = false;
    	
    	
    	
    	} else {
    	noData = true;
    	}
		}
    	
        return "successful";  
	}
	
	public String fullprofile() throws SQLException, Exception
	{
	
		beanl = new ArrayList<employee>();
		
		System.out.println(email);
		rsss = admins.report(email);
		
		int i = 0;
    	
    	if (rsss != null) {
    	while (rsss.next()) {
    	i++;
    	System.out.println(i);
    	beans = new employee();
    	beans.setFname(rsss.getString("First_Name"));
    	beans.setLname(rsss.getString("Last_Name"));
    	beans.setGender(rsss.getString("Gender"));
    	beans.setEmail(rsss.getString("Email"));
    	beans.setJobt(rsss.getString("Job_Title"));
    	beans.setExp(rsss.getString("Experience"));
    	beans.setLocation(rsss.getString("Location"));
    	beans.setKskill(rsss.getString("Key_Skill"));
    	beans.setKskill2(rsss.getString("Key_Skill2"));
    	beans.setInstitue(rsss.getString("Institute"));
    	beans.setAge(rsss.getString("age"));
    	beans.setFore(rsss.getString("Fresher_or_Experienced"));
    	beanl.add(beans);
    	}
    	}
    	
    	System.out.println(i);
    	if (i == 0) {
    	noData = false;
    	} else {
    	noData = true;
    	}
    	
    	
        return "REPORTS";  
		
		
	}
	
	public void setSearch(String Search)
	{
		this.Search = Search;
	}
	
	public String getSearch()
	{
		return Search;
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
	
	public void setBeanl(ArrayList<employee> beanl)
	{
		this.beanl = beanl;
	}
	
	public ArrayList<employee> getBeanl()
	{
		return beanl;
	}
	
	public void setBeanList(ArrayList<employee> beanList) {
		this.beanList = beanList;
		}

}
