package com.tastecoordi.web.dao;

import java.util.List;

import com.tastecoordi.web.vo.QnaComment;

public interface QnaCommentDao {

	public List<QnaComment> getComment(String code);
	
	public int addComment(QnaComment comment);
	public int removeQnA(String code);
	public int revisionQnA(String code,String title,String content,String memberUid);

	
}
