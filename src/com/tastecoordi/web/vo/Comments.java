package com.tastecoordi.web.vo;

import java.util.Date;

public class Comments {
	private String code;
	private String mid;
	private String codiCode;
	private Date regDate;
	private String content;
	
	//º“¿±
		private int commentCnt;
		public int getCommentCnt() {
			return commentCnt;
		}
		public void setCommentCnt(int commentCnt) {
			this.commentCnt = commentCnt;
		}
	
		
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getCodiCode() {
		return codiCode;
	}
	public void setCodiCode(String codiCode) {
		this.codiCode = codiCode;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
