package com.tastecoordi.web.dao.mybatis;

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

}
