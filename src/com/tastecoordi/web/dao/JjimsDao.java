package com.tastecoordi.web.dao;

import java.util.List;

import com.tastecoordi.web.vo.Jjims;

public interface JjimsDao {
	
	public List<Jjims> getJjims(String mid);
	
	public int delJjims(String clothesCode);

}
