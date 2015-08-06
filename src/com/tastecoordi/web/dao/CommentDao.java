package com.tastecoordi.web.dao;

import java.util.List;

import com.tastecoordi.web.vo.Comment;

public interface CommentDao {

	public List<Comment> getComment(String code);
	
	public int addComment(Comment comment);
	public int removeQnA(String code);
	public int revisionQnA(String code,String title,String content,String memberUid);

	//����
	public Comment getCommemtCnt(String mid);
}
