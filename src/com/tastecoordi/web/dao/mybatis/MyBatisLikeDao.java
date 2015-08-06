package com.tastecoordi.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.dao.LikeDao;
import com.tastecoordi.web.vo.Like;

public class MyBatisLikeDao implements LikeDao{
	
	@Autowired
	private SqlSession session;
	

	@Override
	public List<Like> getLikes(String mid) {
		LikeDao dao = session.getMapper(LikeDao.class);
		return dao.getLikes(mid);
	}


	@Override
	public int delLike(String codicode) {
		LikeDao dao = session.getMapper(LikeDao.class);
		return dao.delLike(codicode);
	}

}
