package com.tastecoordi.web.vo;

import java.sql.Date;

public class Member {
	
	private String id;
	private String name; // 닉네임 or 업체명
	private String pw;
	private String email;
	private Date regDate;
	private String image;
	private String DefaultRole;
	
	//소윤
	private int rowNum;
	private Date RequestDate;
	private Date AllowDay;
	
	public Date getAllowDay() {
		return AllowDay;
	}
	public void setAllowDay(Date allowDay) {
		AllowDay = allowDay;
	}
	public Date getRequestDate() {
		return RequestDate;
	}
	public void setRequestDate(Date requestDate) {
		RequestDate = requestDate;
	}
	public int getRowNum() {
		return rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}
	public String getDefaultRole() {
		return DefaultRole;
	}
	public void setDefaultRole(String defaultRole) {
		DefaultRole = defaultRole;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	

}
