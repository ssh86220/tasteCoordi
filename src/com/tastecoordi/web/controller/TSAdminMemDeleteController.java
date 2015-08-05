/*package com.tastecoordi.web.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.dao.mybatis.MyBatisMemberDao;

@WebServlet("/customer/tsAdminMemDelete")
public class TSAdminMemDeleteController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		if (request.getMethod().equals("POST")) {
			String[] removeMembers = request.getParameterValues("check");

			for (int i = 0; i < removeMembers.length; i++) {

				String id = removeMembers[i];

				MemberDao MemberDao = new MyBatisMemberDao();
				
				MemberDao.removeMember(id);
				
			}
				response.sendRedirect("TSAdminMem");
			}
		
		else {

			RequestDispatcher dispatcher = request
					.getRequestDispatcher("/WEB-INF/view/customer/TSAdminMemDelete.jsp");
			dispatcher.forward(request, response);
		}
	}
}*/
