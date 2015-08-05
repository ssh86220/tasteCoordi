/*package com.tastecoordi.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.dao.mybatis.MyBatisMemberDao;
import com.tastecoordi.web.vo.Member;



@WebServlet("/customer/tsAdminMemDetail")
public class TSAdminMemDetailController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MemberDao memberDao = new MyBatisMemberDao();
		List<Member> list = memberDao.getMembers();

		request.setAttribute("list", list);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/customer/TSAdminMemDetail.jsp");
		dispatcher.forward(request, response);

	}
}*/
