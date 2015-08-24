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
	
	//����
	public List<Coordination> getCodis(String id);
	public int openCodi(String code);
	
	//����
	public String getCoordiesCode(String mid);
	
	//����
	
	public List<Coordination> getCodis(); // ������

	public List<Coordination> getCodis(int page, String field, String query);
	
	public Coordination getCodi(String code);
	
	//public Coordination getProfile(String code);//15.08.17 ���� �߰���
	
	public List<Coordination> getClothesNCoordi(String CodiCode);	//15.08.24 ����: �ش�������� ���� �ڵ� ����Ʈ
	//public String getClothescode();
	
	
	//����
	public List <Coordination> getCodiSearch(String style, String categories, String color);
	
}
