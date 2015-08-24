package com.tastecoordi.web.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.vo.Coordination;

public class MyBatisCoordinationDao implements CoordinationDao {

	/*
	 * SqlSessionFactory factory = new SqlNewlecSessionFactory()
	 * .getSqlSessionFactory();
	 */

	@Autowired
	private SqlSession session;

	@Override
	public int delCodi(String code) {
		// TODO Auto-generated method stub
		/* SqlSession session = factory.openSession(); */
		int result = 0;
		result = session.delete(
				"com.tastecoordi.web.dao.CoordinationDao.delCodi", code);

		return result;
	}

	@Override
	public int addCodi(Coordination codi) {
		/* SqlSession session = factory.openSession(); */

		int result = 0;
		result = session.insert(
				"com.tastecoordi.web.dao.CoordinationDao.addCodi", codi);

		return result;
	}

	@Override
	public List<Coordination> getCoordinations() {
		/* SqlSession session = factory.openSession(); */
		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getCoordinations(1, "TITLE", "");
	}

	@Override
	public List<Coordination> getCoordinations(int page) {
		/* SqlSession session = factory.openSession(); */
		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getCoordinations(page, "title", "");
	}

	@Override
	public List<Coordination> getCoordinations(int page, String field,
			String query) {
		/* SqlSession session = factory.openSession(); */
		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getCoordinations(1, "title", "");
	}

	@Override
	public Coordination getCoordination(String code) {

		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getCoordination(code);

	}

	@Override
	public List<Coordination> getSearchCodi(String style, String category,
			String color) {
		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getSearchCodi("style", "category", "color");
	}

	@Override
	public List<Coordination> getCodis(String id) {
		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getCodis(id);
	}

	@Override
	public int openCodi(String code) {
		CoordinationDao dao = session.getMapper(CoordinationDao.class);
		return dao.openCodi(code);
	}

	@Override
	public String getCoordiesCode(String mid) {
		// TODO Auto-generated method stub
		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getCoordiesCode(mid);
	}

	@Override
	public List<Coordination> getCodis() {
		// SqlSession session = factory.openSession();
		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getCodis();
	}

	@Override
	public List<Coordination> getCodis(int page, String field, String query) {

		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("field", field);
		params.put("query", query);

		// SqlSession session = factory.openSession();
		List<Coordination> list = session.selectList("getCoordination", params);

		session.close();

		return list;
	}

	@Override
	public Coordination getCodi(String code) {
		// SqlSession session = factory.openSession();
		CoordinationDao dao = session.getMapper(CoordinationDao.class);
		return dao.getCodi(code);
	}

	@Override
	public List<Coordination> getCodiSearch(String style, String categories,
			String color) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("style", style);
		params.put("color", color);
		params.put("categories", categories);

		List<Coordination> list = session.selectList("getCodiSearch", params);

		return list;
		/*
		 * List<Coordination> list = session.selectList("getCodiSearch", code);
		 * return list;
		 */
	}

	
	//15.08.24 영조 : 해당 아이템이 쓰인 코디 리스트
	@Override
	public List<Coordination> getClothesNCoordi(String CodiCode) {
		CoordinationDao dao = session.getMapper(CoordinationDao.class);
		return dao.getClothesNCoordi(CodiCode);
	}

	/*@Override
	public String getClothescode() {
		CoordinationDao dao = session.getMapper(CoordinationDao.class);
		return dao.getClothescode();
	}*/

	


	/*
	 * //15.08.17 영조
	 * 
	 * @Override public Coordination getProfile(String code) { CoordinationDao
	 * dao = session.getMapper(CoordinationDao.class); return
	 * dao.getProfile(code); }
	 */

}
