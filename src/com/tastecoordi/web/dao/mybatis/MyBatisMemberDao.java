package com.tastecoordi.web.dao.mybatis;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.vo.Member;

public class MyBatisMemberDao implements MemberDao {

	@Autowired
	private SqlSession session;

	@Override
	public int addMember(Member m) {
		// TODO Auto-generated method stub
		

		int result = 0;
		result = session.insert(
				"com.tastecoordi.web.dao.MemberDao.addMember", m);


		return result;

	}

	/*
	 * public List<Member> getMembers( String field, String query) { // TODO
	 * Auto-generated method stub
	 * 
	 * HashMap<String, Object> params = new HashMap<String, Object>();
	 * params.put("field", field); params.put("query", query);
	 * 
	 * 
	 * SqlSession session = factory.openSession(); List<Member> list =
	 * session.selectList("getMembers", params); session.close();
	 * 
	 * return list;
	 * 
	 * }
	 */

	@Override
	public Member getMember(String id) {
		// TODO Auto-generated method stub

		
		Member m = session.selectOne(
				"com.tastecoordi.web.dao.MemberDao.getMember", id);
		
		return m;
	}

	@Override
	public int removeMember(String id) {
		// TODO Auto-generated method stub
		

		int result = 0;
		MemberDao dao = session.getMapper(MemberDao.class);
		result = dao.removeMember(id);

		return result;
	}

	@Override
	public List<Member> getMembers(int page, String field, String query,
			String startDate, String endDate) {
		// TODO Auto-generated method stub
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("page", page);
		params.put("field", field);
		params.put("query", query);
		params.put("startDate", startDate);
		params.put("endDate", endDate);

		List<Member> list = session.selectList("getMembers", params);
		
		return list;

	}

	@Override
	public List<Member> getMembers() {
		// TODO Auto-generated method stub
		return getMembers(1, "name", "", "2015-04-19", "2015-08-01");
	}


	@Override
	public int alterMember(Member m) {
		MemberDao dao = session.getMapper(MemberDao.class);
		
		return dao.alterMember(m);
	}

	@Override
	public List<Member> getMemberList() {
		MemberDao dao = session.getMapper(MemberDao.class);

		return dao.getMemberList();
	}

}
