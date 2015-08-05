/*package com.tastecoordi.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.dao.mybatis.MyBatisCoordinationDao;
import com.tastecoordi.web.vo.Coordination;



@WebServlet("/customer/tsMainDetail")

public class TSMainDetailController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		CoordinationDao coordinationDao = new MyBatisCoordinationDao();
	
		String code = request.getParameter("c");
		Coordination n = coordinationDao.getCoordination(code);

		request.setAttribute("n", n);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/customer/TSMainDetail.jsp");
		dispatcher.forward(request, response);

	}
}*/
