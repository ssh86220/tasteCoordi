package com.tastecoordi.web.dao;

import java.util.List;

import com.tastecoordi.web.vo.QnA;

public interface QnaDao {

	public List<QnA> getQnAs();
	public List<QnA> getQnAs(int page);
	public List<QnA> getQnAs(int page, String field, String query);

	public QnA getQnA(String number);
	public int addQnA(QnA qna);
	public int removeQnA(String number);
	
	public int revisionQnA(String number,String title,String email,String content);
}
