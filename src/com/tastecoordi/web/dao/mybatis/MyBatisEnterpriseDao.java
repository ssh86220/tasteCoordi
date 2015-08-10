package com.tastecoordi.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.dao.EnterpriseDao;
import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.vo.Enterprise;

public class MyBatisEnterpriseDao implements EnterpriseDao{

	@Autowired
	private SqlSession session;
	
/*	@Override
	public List<Enterprise> getEnterprisesNotApp() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Enterprise> getEnterpriseApp() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Enterprise> getEnterpriseAppMid(String mid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Enterprise> getEnterpriseAppName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Enterprise getEnterprise(String mid) {
		// TODO Auto-generated method stub
		return null;
	}*/

	@Override
	public int addEnterprise(Enterprise enterpise) {
		int result = 0;
		
		EnterpriseDao dao = session.getMapper(EnterpriseDao.class);
		result = dao.addEnterprise(enterpise);
		
		return result;
	}

/*	@Override
	public Integer deleteEnterprise(String mid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer updateGetEnterprise(String mid) {
		// TODO Auto-generated method stub
		return null;
	}*/

}
