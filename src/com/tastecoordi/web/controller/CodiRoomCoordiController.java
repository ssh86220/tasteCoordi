package com.tastecoordi.web.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tastecoordi.web.dao.ClothesCoordiDao;
import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.dao.mybatis.MyBatisClothesCoordiDao;
import com.tastecoordi.web.dao.mybatis.MyBatisCoordinationDao;
import com.tastecoordi.web.vo.ClothesCoordi;
import com.tastecoordi.web.vo.Coordination;

@Controller
@RequestMapping("/tastecoordi/*")
public class CodiRoomCoordiController {
	
	private ClothesCoordiDao clothesCoordiDao;
	private CoordinationDao coordinationDao;
	
	
	@Autowired
	public void setClothesCoordiDao(ClothesCoordiDao clothesCoordiDao) {
		this.clothesCoordiDao = clothesCoordiDao;
	}
	
	@Autowired
	public void setCoordinationDao(CoordinationDao coordinationDao) {
		this.coordinationDao = coordinationDao;
	}

	@RequestMapping(value="codiRoomClothesCoordi", method=RequestMethod.POST)
	public String codiRoomClothesCoordi(HttpSession session, HttpServletRequest request){
		
		session.setAttribute("check", request.getParameterValues("check"));
		
	 	
	 	return "tastecoordi.codiRoomCoordi";
	}
	
	@RequestMapping(value="codiRoomCoordi", method=RequestMethod.GET)
	public String codiRoomCoordi(){
	 	
	 	return "tastecoordi.codiRoomCoordi";
	}
	
	@RequestMapping(value="codiRoomCoordi", method=RequestMethod.POST)
	public String codiRoomCoordi(HttpSession session, HttpServletRequest request, Principal principal){
	 	
		String style = request.getParameter("style");
 		String content = request.getParameter("content");
 		String mid = principal.getName();
 		
 		Coordination c = new Coordination();
 		
 		c.setTitle(content);
 		c.setMid(mid);
 		c.setStyle(style);
 		
 		//CoordinationDao coordinationDao = new MyBatisCoordinationDao();
 		coordinationDao.addCodi(c);
 		 		
 		
 		//clothesCoordi
 		String[] check = (String[]) session.getAttribute("check");
 		
 		//ClothesCoordiDao clothesCoordiDao = new MyBatisClothesCoordiDao();
 		ClothesCoordi cc = new ClothesCoordi();
 		
 		cc.setCoordiesCode(coordinationDao.getCoordiesCode(mid));
			
 		for(int i=0; i< check.length; i++){
 			
 			String code = check[i];
 			
 			//ClothesCoordi c = new ClothesCoordi();
 			cc.setClothesCode(code);
 			
 			clothesCoordiDao.addCC(cc);	 			
 		}
		
	 	return "redirect:codiRoom";
	}

}
