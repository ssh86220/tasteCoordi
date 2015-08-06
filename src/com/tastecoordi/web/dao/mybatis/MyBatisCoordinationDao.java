package com.tastecoordi.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.vo.Coordination;

public class MyBatisCoordinationDao implements CoordinationDao {

	/*SqlSessionFactory factory = new SqlNewlecSessionFactory()
			.getSqlSessionFactory();*/
	
	@Autowired
	private SqlSession session;

	@Override
	public int delCodi(String code) {
		// TODO Auto-generated method stub
		/*SqlSession session = factory.openSession();*/
		int result = 0;
		result = session.delete(
				"com.tastecoordi.web.dao.CoordinationDao.delCodi", code);
	
		return result;
	}

	@Override
	public int addCodi(Coordination codi) {
		/*SqlSession session = factory.openSession();*/

		int result = 0;
		result = session.insert(
				"com.tastecoordi.web.dao.CoordinationDao.addCodi", codi);


		return result;
	}

	@Override
	public List<Coordination> getCoordinations() {
		/*SqlSession session = factory.openSession();*/
		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getCoordinations(1, "TITLE", "");
	}

	@Override
	public List<Coordination> getCoordinations(int page) {
		/*SqlSession session = factory.openSession();*/
		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getCoordinations(page, "title", "");
	}

	@Override
	public List<Coordination> getCoordinations(int page, String field,
			String query) {
		/*SqlSession session = factory.openSession();*/
		CoordinationDao dao = session.getMapper(CoordinationDao.class);

		return dao.getCoordinations(1, "title", "");
	}

	@Override
	public Coordination getCoordination(String code) {

		/*SqlSession session = factory.openSession();*/ // 여러가지 DAO가 담긴 보따리에서 내가 원하는
		// DAO를 꺼내오는 것

		Coordination m = session.selectOne(
				"com.tastecoordi.web.dao.CoordinationDao.getCoordination", code);

	
		return m;
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

}
