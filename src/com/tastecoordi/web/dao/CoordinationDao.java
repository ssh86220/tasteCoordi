package com.tastecoordi.web.dao;

import java.util.List;

import com.tastecoordi.web.vo.Coordination;

public interface CoordinationDao {

	public int addCodi(Coordination codi);

	public int delCodi(String code);
	
	public Coordination getCoordination(String code);
	
	public List<Coordination> getCoordinations();
	public List<Coordination> getCoordinations(int page);
	public List<Coordination> getCoordinations(int page, String field, String query);
	public List<Coordination> getSearchCodi(String style, String category, String color);
	
	//소윤
	public List<Coordination> getCodis(String id);
	public int openCodi(String code);
	
	//가영
	public String getCoordiesCode(String mid);
	
	//영조
	

	public List<Coordination> getCodis(); // 모두출력

	public List<Coordination> getCodis(int page, String field, String query);
	
	public Coordination getCodi(String code);
	
	//선희
	public Coordination getCodiSearch(String code);
	
}
