package com.tastecoordi.web.dao.mybatis;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.vo.Follow;
import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.dao.FollowDao;

public class MyBatisFollowDao implements FollowDao {

	@Autowired
	private SqlSession session;
	
/*	SqlSessionFactory factory = new SqlTastecodiSessionFactory()
			.getSqlSessionFactory();*/

	/*@Override
	public int getfollow(Follow f) throws ClassNotFoundException, SQLException {
		
		return 0;
	}

	@Override
	public int removeFollow(String Mid) throws ClassNotFoundException,
			SQLException {
		SqlSession session = factory.openSession();

		int result = 0;
		try { // rollback½Ã try catch ¾²±â
			result = session.delete(
					"com.tastecoordi.web.dao.FollowDao.removeFollow",
					Mid);

			session.commit();
		} finally {
			session.rollback();
			session.close();

		}

		return result;
	}

	@Override
	public int addFollow(Follow f) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();

		int result = 0;

		try {
			result = session.insert(
					"com.tastecoordi.web.dao.FollowDao.addFollow", f);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}

		return result;
	}

	@Override
	public int removeFollow(Follow f) throws ClassNotFoundException,
			SQLException {
		// TODO Auto-generated method stub
		return 0;
	}*/

	@Override
	public int removeFollow(String tagetMid) {
		FollowDao dao = session.getMapper(FollowDao.class);
		
		return dao.removeFollow(tagetMid);
	}
	
	@Override
	public Follow getFollowerCnt(String Mid) {
		//SqlSession session = factory.openSession();
		FollowDao dao = session.getMapper(FollowDao.class);
		
		return dao.getFollowerCnt(Mid);
	}

	@Override
	public Follow getFollowingCnt(String Mid) {	
		//SqlSession session = factory.openSession();
		FollowDao dao = session.getMapper(FollowDao.class);
		
		return dao.getFollowingCnt(Mid);
	}

	@Override
	public List<Follow> getFollowerImg(String tagetMid) {
		FollowDao dao = session.getMapper(FollowDao.class);
		
		return dao.getFollowerImg(tagetMid);
	}


	@Override
	public List<Follow> getFollowingImg(String Mid) {
		FollowDao dao = session.getMapper(FollowDao.class);
		
		return dao.getFollowingImg(Mid);
	}


}