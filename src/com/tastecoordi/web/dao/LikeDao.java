package com.tastecoordi.web.dao;

import java.util.List;

import com.tastecoordi.web.vo.Like;

public interface LikeDao {

	public List<Like> getLikes(String mid);
	
	public int delLike(String codicode);

}
