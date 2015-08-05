/*package com.tastecoordi.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.dao.mybatis.MyBatisCoordinationDao;
import com.tastecoordi.web.vo.Coordination;



@WebServlet("/customer/tsMain")

public class TSMainController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		CoordinationDao coordinationDao = new MyBatisCoordinationDao();
		List<Coordination> list = coordinationDao.getCoordinations();
		request.setAttribute("list", list); 
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/customer/TSMain.jsp");
		dispatcher.forward(request, response);

	}
}
*/