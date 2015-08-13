package com.tastecoordi.web.controller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.vo.Coordination;

@Controller
@RequestMapping("/tastecoordi/*")
public class mainController {

	private CoordinationDao coordinationDao;


	@Autowired
	public void setCoordinationDao(CoordinationDao coordinationDao) {
		this.coordinationDao = coordinationDao;
	}



	@RequestMapping("tsMain")
	public String tsMain(Model model, String c) {
		/* CoordinationDao coordinationDao = new MyBatisCoordinationDao(); */
		List<Coordination> list = coordinationDao.getCoordinations();

		model.addAttribute("list", list);

		return "tastecoordi.tsMain";
	}


	@RequestMapping(value = "tsmainSearch", method = RequestMethod.GET)
	public String tsmainSearch() {

		return "tastecoordi.tsmainSearch";
	}

	@RequestMapping(value="tsmainSearch", method=RequestMethod.POST)
	public String tsmainSearch(String style, String color, String categories, Model model, HttpServletRequest request) {
		
		List<Coordination> list = coordinationDao.getCoordinations();
		model.addAttribute("list", list);
		
		List<Coordination> searchlist = coordinationDao.getCodiSearch(style, color, categories);	
		
	 	model.addAttribute("list", searchlist); 

	/*	List<Clothes> searchcategoryList = clothesDao.searchCategory(category);	 	
	 	model.addAttribute("searchList", searchcategoryList);*/
	 	 	
		
		return "tastecoordi.tsMain";
	}
	

}
