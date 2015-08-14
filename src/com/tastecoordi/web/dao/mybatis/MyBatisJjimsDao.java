package com.tastecoordi.web.dao.mybatis;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.dao.JjimsDao;
import com.tastecoordi.web.vo.Jjims;

public class MyBatisJjimsDao implements JjimsDao {
	
	@Autowired
	private SqlSession session;
	

	@Override
	public List<Jjims> getJjims(String mid) {
		JjimsDao dao = session.getMapper(JjimsDao.class);
		return dao.getJjims(mid);
	}

	@Override
	public int delJjims(String clothesCode) {
		JjimsDao dao = session.getMapper(JjimsDao.class);
		return dao.delJjims(clothesCode);
	}

	@Override
	public int addJjims(Jjims j) {
		
		int result=0;
		result = session.insert("com.tastecoordi.web.dao.JjimsDao.addJjims",j);
		return result;
	}

	@Override
	public int removeJjims(String clothesCode, String mid) {
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("clothesCode",clothesCode);
		params.put("mid", mid);
		
		
		int result=0;
		result = session.delete("com.tastecoordi.web.dao.JjimsDao.removeJjims", params);
		return result;
	}



	@Override
	public List<Jjims> getJjim(String mid) {
		
		List<Jjims> list = session.selectList("com.tastecoordi.web.dao.JjimsDao.getJjim", mid);
		//session.close();
		return list;
	}

	@Override
	public int getJjimsCount(String code) {
		
		JjimsDao j = session.getMapper(JjimsDao.class);		
		return j.getJjimsCount(code);
	}

	@Override
	public List<Jjims> getJjimsPeople(String clothesCode) {
		
		List<Jjims> list = session.selectList("com.tastecoordi.web.dao.JjimsDao.getJjimsPeople", clothesCode);		
		//session.close();
		return list;
	}

	
	
	@Override
	public List<Jjims> getJjims(String mid, String clothesCode, Date regDate) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		params.put("mid", mid);
		params.put("clothesCode", clothesCode);
		params.put("regDate", regDate);
		
	
		
		List<Jjims> list = session.selectList("getJjims", params);
		session.close();
		return list;
	}

	@Override
	public int removeJjims(String mid) {
		
		int result=0;
		try{
		result = session.delete("com.tastecoordi.web.dao.JjimsDao.removeJjims", mid);
		session.commit();
		}
		finally{
		session.rollback();
		session.close();
		}
		return result;
	}

	@Override
	public List<String> getJjimsMid(String clothesCode) {
		// TODO Auto-generated method stub
		
		JjimsDao j = session.getMapper(JjimsDao.class);		
		return j.getJjimsMid(clothesCode);
		
		/*List<String> list = session.selectList("com.tastecoordi.web.dao.JjimsDao.getJjimsPeople", clothesCode);		
		//session.close();
		return list;*/
	}

}
