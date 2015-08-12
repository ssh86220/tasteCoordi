package com.tastecoordi.web.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.dao.CommentDao;
import com.tastecoordi.web.dao.QnaDao;
import com.tastecoordi.web.vo.Clothes;
import com.tastecoordi.web.vo.QnA;

public class MyBatisQnaDao implements QnaDao {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<QnA> getQnAs() {

		return getQnAs(1, "NUMBER", "");
	}

	@Override
	public List<QnA> getQnAs(int page) {

		return getQnAs(page,"NUMBER","");
	}

	@Override
	public List<QnA> getQnAs(int page, String field, String query) {
		//SqlSession session = factory.openSession();

		/*QnaDao dao = session.getMapper(QnaDao.class);
		List<QnA> list = dao.getQnAs(page, field, query);*/
		
		CommentDao commentdao = session.getMapper(CommentDao.class);
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("field", field);
		params.put("query", query);


		//SqlSession session = factory.openSession();
		List<QnA> list = session.selectList("getQnAs", params);

		for (QnA q : list) {
			//q.setFiles(fileDao.getNoticeFilesOfNotice(n.getCode()));
			q.setComments(commentdao.getComment(q.getNumber()));
			
		}
		return list;

	}

	@Override
	public QnA getQnA(String number) {
		//SqlSession session = factory.openSession();
		QnaDao dao=session.getMapper(QnaDao.class);
		return dao.getQnA(number);
	}

	@Override
	public int addQnA(QnA qna) {
		int result = 0;
		//SqlSession session = factory.openSession();
		QnaDao dao = session.getMapper(QnaDao.class);
		result = dao.addQnA(qna);
		/*try {
			session.commit();
		} finally {
			session.rollback();
			session.close();

		}*/

		return result;
	}

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

	
	
}
