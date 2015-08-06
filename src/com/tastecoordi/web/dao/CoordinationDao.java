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
	
	//º“¿±
	public List<Coordination> getCodis(String id);
	public int openCodi(String code);
	
	//∞°øµ
	public String getCoordiesCode(String mid);
	
}
