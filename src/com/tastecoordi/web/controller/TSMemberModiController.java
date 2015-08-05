/*package com.tastecoordi.web.controller;

import java.io.IOException;




import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.dao.mybatis.MyBatisMemberDao;
import com.tastecoordi.web.vo.Member;





@WebServlet("/customer/tsMemberModi")

public class TSMemberModiController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MemberDao memberDao = new MyBatisMemberDao();

		String code = request.getParameter("c");
		Member n = memberDao.getMember(code);
		request.setAttribute("n", n);
		
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/customer/TSMemberModi.jsp");
		dispatcher.forward(request, response);

	}
}*/
