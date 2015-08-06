package com.tastecoordi.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.dao.ClothesCoordiDao;
import com.tastecoordi.web.vo.ClothesCoordi;

public class MyBatisClothesCoordiDao implements ClothesCoordiDao{
	
	@Autowired
	private SqlSession session;
	//SqlSessionFactory factory = new SqlTastecodiSessionFactory().getSqlSessionFactory();

	@Override
	public int addCC(ClothesCoordi cCodi) {
		// TODO Auto-generated method stub
		//SqlSession session = factory.openSession();
		
		int result = 0;
		result = session.insert("com.tastecoordi.web.dao.ClothesCoordiDao.addCC", cCodi);
		
		/*try{
			result = session.insert("com.tastecoordi.web.dao.ClothesCoordiDao.addCC", cCodi);
			session.commit();
		}
		finally{
			session.rollback();
			session.close();
		}*/
		
		return result;
	}

	/*@Override
	public int delCC(String cCode) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		int result = 0;
		try{
			result = session.delete("com.tastecoordi.web.dao.ClothesCoordiDao.delCC", cCode);
			session.commit();	
		}
		finally{
			session.rollback();
			session.close();
		}
		return result;
	}*/

	@Override
	public List<ClothesCoordi> getCCs(String code) {
		//SqlSession session = factory.openSession();
		ClothesCoordiDao dao = session.getMapper(ClothesCoordiDao.class);

		return dao.getCCs(code);
	}

	@Override
	public int delCC(String code) {
		// TODO Auto-generated method stub
		//SqlSession session = factory.openSession();
		int result = 0;
		try {
			result = session.delete(
					"com.tastecoordi.web.dao.Coordination.delCC", code);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

	@Override
	public List<ClothesCoordi> getCCs() {
		//SqlSession session = factory.openSession();
				ClothesCoordiDao dao = session.getMapper(ClothesCoordiDao.class);

				return dao.getCCs();
	}

	

	

}
