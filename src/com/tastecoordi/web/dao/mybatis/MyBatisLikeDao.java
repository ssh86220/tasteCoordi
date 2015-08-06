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


	
	
	@Override
	public int addLike(Like m) {
		

		int result = 0;

		try {
			result = session.insert("com.tastecoordi.web.dao.LikeDao.addLike",
					m);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}


	@Override
	public int removeLike(String uid) {

		
		int result = 0;

		try {
			result = session.delete(
					"com.tastecoordi.web.dao.LikeDao.removeLike ", uid);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;

	}

	@Override
	public Like getLike(String uid) {
		

		Like m = session.selectOne("com.tastecoordi.web.dao.LikeDao.getLike",
				uid);

		session.close();

		return m;
	}

}
