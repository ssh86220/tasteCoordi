package com.tastecoordi.web.dao;

import java.util.List;

import com.tastecoordi.web.vo.Jjims;

public interface JjimsDao {
	
public List<Jjims> getJjims(String mid);
	
	public int delJjims(String clothesCode);
	
	//°¡¿µ
	public int addJjims(Jjims j);
	
	public int removeJjims(String clothesCode, String mid);
	
	/*public List<Jjims> getJjims(String field, String query);
	
	public List<Jjims> getJjims();*/
	
	public List<Jjims> getJjim(String mid);
	
	public int getJjimsCount(String code);
	
	public List<Jjims> getJjimsPeople(String clothesCode);

}
