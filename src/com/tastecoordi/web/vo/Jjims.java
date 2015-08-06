package com.tastecoordi.web.vo;

import java.util.Date;

public class Jjims {
	private String mid;
	private String clothesCode;
	private Date regdate;
	
	//
	private String image;
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getClothesCode() {
		return clothesCode;
	}
	public void setClothesCode(String clothesCode) {
		this.clothesCode = clothesCode;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

}
