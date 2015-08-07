package com.tastecoordi.web.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.dao.QnaCommentDao;
import com.tastecoordi.web.dao.QnaDao;
import com.tastecoordi.web.vo.QnaComment;

public class MyBatisQnaCommentDao implements QnaCommentDao {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public int removeQnA(String number) {
		int result = 0;
		
		//SqlSession session = factory.openSession();
		QnaDao dao = session.getMapper(QnaDao.class);
		result = dao.removeQnA(number);
		
		/*try {
			session.commit();
		} finally {
			session.rollback();
			session.close();

		}*/
		return result;
	}

	@Override
	public int revisionQnA(String number, String title, String email,
			String content) {
		HashMap<String, Object> params=new HashMap<String, Object>();
		params.put("number", number);
		params.put("title", title);
		params.put("email", email);
		params.put("content", content);
		
		//SqlSession session = factory.openSession();
		int result = 0;
		
		result = session.update("com.tastecoordi.web.dao.QnaDao.revisionQnA",params);
		/*try {
			session.commit();
		} finally {
			session.rollback();
			session.close();

		}*/

		return result;
	}

	@Override
	public List<QnaComment> getComment(String qnaNumber) {
		QnaCommentDao dao=session.getMapper(QnaCommentDao.class);
		return dao.getComment(qnaNumber);
	}

	@Override
	public int addComment(QnaComment comment) {
		int result = 0;
		
		QnaCommentDao dao = session.getMapper(QnaCommentDao.class);
		result = dao.addComment(comment);
		

		return result;
	}


	
	
}
