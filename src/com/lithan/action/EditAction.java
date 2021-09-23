package com.lithan.action;

import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.lithan.bean.employee;
import com.lithan.dao.EditDao;
import com.opensymphony.xwork2.ActionSupport;

public class EditAction extends ActionSupport {

	private static final long serialVersionUID = 7171749483406665692L;
	private String fname = "", lname = "", gender = "", contact = "", emailhidden = "", dob = "", institue = "",
			location = "", fore = "", jobt = "", exp = "", expectedsal = "", kskill = "", skillexp = "", kskill2 = "",
			skillexp2 = "", resumetime = "", resume = "";
	private String msg = "";
	ResultSet rs = null;
	EditDao dao = new EditDao();
	String submitType;
	employee user = new employee();

	public employee getUser() {
		return user;
	}

	public void setUser(employee user) {
		this.user = user;
	}

	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession(false);

		if (session == null || session.getAttribute("login") == null) {
			return "error";

		} else {
			String email = (String) session.getAttribute("email");
			int i = dao.updateUserDetails(fname, lname, gender, contact, emailhidden, dob, institue, location, fore,
					jobt, exp, expectedsal, kskill, skillexp, kskill2, skillexp2, resumetime, resume, email);
			if (i > 0) {
				msg = "Record Updated Successfuly";
			} else {
				msg = "error";
			}
		}
		return "success";

	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getSubmitType() {
		return submitType;
	}

	public void setSubmitType(String submitType) {
		this.submitType = submitType;
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

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmailhidden() {
		return emailhidden;
	}

	public void setEmailhidden(String emailhidden) {
		this.emailhidden = emailhidden;
	}

	public String getInstitue() {
		return institue;
	}

	public void setInstitue(String institue) {
		this.institue = institue;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getFore() {
		return fore;
	}

	public void setFore(String fore) {
		this.fore = fore;
	}

	public String getJobt() {
		return jobt;
	}

	public void setJobt(String jobt) {
		this.jobt = jobt;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public String getExpectedsal() {
		return expectedsal;
	}

	public void setExpectedsal(String expectedsal) {
		this.expectedsal = expectedsal;
	}

	public String getKskill() {
		return kskill;
	}

	public void setKskill(String kskill) {
		this.kskill = kskill;
	}

	public String getSkillexp() {
		return skillexp;
	}

	public void setSkillexp(String skillexp) {
		this.skillexp = skillexp;
	}

	public String getKskill2() {
		return kskill2;
	}

	public void setKskill2(String kskill2) {
		this.kskill2 = kskill2;
	}

	public String getSkillexp2() {
		return skillexp2;
	}

	public void setSkillexp2(String skillexp2) {
		this.skillexp2 = skillexp2;
	}

	public String getResumetime() {
		return resumetime;
	}

	public void setResumetime(String resumetime) {
		this.resumetime = resumetime;
	}

	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

}