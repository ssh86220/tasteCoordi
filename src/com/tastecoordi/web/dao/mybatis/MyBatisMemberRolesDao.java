package com.tastecoordi.web.dao.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.dao.MemberRolesDao;
import com.tastecoordi.web.vo.MemberRoles;

public class MyBatisMemberRolesDao implements MemberRolesDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public int addMemberRoles(MemberRoles m) {
		int result = 0;
		result = session.insert(
				"com.tastecoordi.web.dao.MemberDao.addMember", m);


		return result;
	}

}
