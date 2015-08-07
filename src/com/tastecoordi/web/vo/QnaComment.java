package com.tastecoordi.web.vo;

import java.sql.Date;

public class QnaComment {
	
	private String Code;
	private String Mid;
	private Date RegDate;
	private String QnaNumber;
	private String Content;
	
	
	public String getMid() {
		return Mid;
	}
	public void setMid(String mid) {
		Mid = mid;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getQnaNumber() {
		return QnaNumber;
	}
	public void setQnaNumber(String qnaNumber) {
		QnaNumber = qnaNumber;
	}
	public String getCode() {
		return Code;
	}
	public void setCode(String code) {
		Code = code;
	}
	
	public Date getRegDate() {
		return RegDate;
	}
	public void setRegDate(Date regDate) {
		RegDate = regDate;
	}
	
	

}
