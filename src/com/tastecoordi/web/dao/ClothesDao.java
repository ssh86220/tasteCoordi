package com.tastecoordi.web.dao;

import java.sql.SQLException;
import java.util.List;

import com.tastecoordi.web.vo.Clothes;

public interface ClothesDao {

public int addClothes(Clothes c);
	
	public int removeClothes(String code);
	//public int addClothes(Clothes c) throws ClassNotFoundException,	SQLException;

	public List<Clothes> getClothes(int page, String field, String query,
	String startDate, String endDate);

	public List<Clothes> getMyClothes(String mid, int page, String field, String query,
	String startDate, String endDate); //내옷장에서 내 이미지 불러오기


	public Clothes getCloth(String code) throws ClassNotFoundException,
	SQLException;

	public List<Clothes> getClothes();
	public List<Clothes> getClothes(int page);
	
	public List<Clothes> getMyClothes(String mid);
	
	//가영
	public List<Clothes> searchCategory(String category);
	public List<Clothes> searchColor(String color);
	

}
