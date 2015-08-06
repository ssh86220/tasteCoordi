package com.tastecoordi.web.dao.mybatis;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.vo.Clothes;
import com.tastecoordi.web.dao.ClothesDao;

public class MyBatisClothesDao implements ClothesDao {

	@Autowired
	private SqlSession session;
	
	//SqlSessionFactory factory = new SqlTastecodiSessionFactory().getSqlSessionFactory();
	
	@Override
	public int addClothes(Clothes c) {
		ClothesDao dao = session.getMapper(ClothesDao.class);
		
		return dao.addClothes(c);

/*		SqlSession session = factory.openSession();
		int result = 0;

		try {
			result = session.insert(
					"com.tastecoordi.web.dao.ClothesDao.addClothes", c);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;*/

	}
	
	@Override
	public List<Clothes> getMyClothes(String mid) {
		ClothesDao dao = session.getMapper(ClothesDao.class);
		
		return dao.getMyClothes(mid);	
		//return getMyClothes(mid, 1, "CODE", "","2015-04-19","2015-07-28");
	}
	
	
	@Override
	public int removeClothes(String code){
		ClothesDao dao = session.getMapper(ClothesDao.class);
		return dao.removeClothes(code);
		/*int result = 0;
		SqlSession session = factory.openSession();
		
		try {
			ClothesDao dao = session.getMapper(ClothesDao.class);
			result = dao.removeClothes(code);
			session.commit();
		} finally {
			session.rollback();
			session.close();

		}
		return result;*/
	}

	@Override
	public List<Clothes> getClothes(int page, String field, String query,
			String startDate, String endDate) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("field", field);
		params.put("query", query);
		params.put("startDate", startDate);
		params.put("endDate", endDate);

		//SqlSession session = factory.openSession();
		List<Clothes> list = session.selectList("getClothes", params);
		//session.close();
		return list;
		
	}



	@Override
	public List<Clothes> getClothes() {
		// TODO Auto-generated method stub
		return getClothes(1, "CODE", "","2015-04-19","2015-07-28");
	}

	@Override
	public List<Clothes> getClothes(int page) {
		// TODO Auto-generated method stub
		return getClothes(page, "CODE", "","2015-04-19","2015-07-28");
	}

	@Override
	public Clothes getCloth(String code) throws ClassNotFoundException,
			SQLException {
		// TODO Auto-generated method stub
		
		ClothesDao dao = session.getMapper(ClothesDao.class);
		
		return dao.getCloth(code);
	}



	@Override
	public List<Clothes> getMyClothes(String mid, int page, String field, String query,
			String startDate, String endDate) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("mid", mid);
		params.put("page", page);
		params.put("field", field);
		params.put("query", query);
		params.put("startDate", startDate);
		params.put("endDate", endDate);

		
		List<Clothes> list = session.selectList("getMyClothes", params);
		//session.close();
		return list;
		
	}

	@Override
	public List<Clothes> searchCategory(String category) {
		// TODO Auto-generated method stub
		List<Clothes> list = session.selectList("searchCategory", category);
		//session.close();
		return list;
	}

	@Override
	public List<Clothes> searchColor(String color) {
		// TODO Auto-generated method stub
		List<Clothes> list = session.selectList("searchColor", color);
		//session.close();
		return list;
	}



	
	

}
