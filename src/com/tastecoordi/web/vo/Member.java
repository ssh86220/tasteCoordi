package com.tastecoordi.web.vo;

import java.sql.Date;

public class Member {
	
	private String ID;
	private String Name;
	private String PW;
	private String Email;
	private Date RegDate;
	private String image;
	private String DefaultRole;
	
	public String getID() {
		return ID;
	}
	public String getDefaultRole() {
		return DefaultRole;
	}
	public void setDefaultRole(String defaultRole) {
		DefaultRole = defaultRole;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPW() {
		return PW;
	}
	public void setPW(String pW) {
		PW = pW;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public Date getRegDate() {
		return RegDate;
	}
	public void setRegDate(Date regDate) {
		RegDate = regDate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

	

}
