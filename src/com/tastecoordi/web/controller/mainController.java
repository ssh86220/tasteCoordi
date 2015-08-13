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

import com.tastecoordi.web.dao.ClothesDao;
import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.vo.Clothes;
import com.tastecoordi.web.vo.Coordination;

@Controller
@RequestMapping("/tastecoordi/*")
public class mainController {

	private CoordinationDao coordinationDao;
	private ClothesDao clothesDao;

	@Autowired
	public void setCoordinationDao(CoordinationDao coordinationDao) {
		this.coordinationDao = coordinationDao;
	}

	@Autowired
	public void setClothesDao(ClothesDao clothesDao) {
		this.clothesDao = clothesDao;
	}

	@RequestMapping("tsMain")
	public String tsMain(Model model, String c) {
		/* CoordinationDao coordinationDao = new MyBatisCoordinationDao(); */
		List<Coordination> list = coordinationDao.getCoordinations();

		model.addAttribute("list", list);

		return "tastecoordi.tsMain";
	}

/*	@RequestMapping("tsMainDetail")
	public String tsMainDetail(String style, Model model) {

		List<Coordination> list = coordinationDao.getCoordinations();
		model.addAttribute("list", list);
		
		List<Coordination> searchList = coordinationDao.getCodiSearch(style);	
		
	 	model.addAttribute("searchList", searchList);;

		return "tastecoordi.tsMainDetail";
	}*/

	@RequestMapping(value = "tsmainSearch", method = RequestMethod.GET)
	public String tsmainSearch() {

		/*
		 * List<Coordination> list = coordinationDao.getCoordinations();
		 * model.addAttribute("list", list);
		 * 
		 * List<Clothes> searchList = clothesDao.searchCategory(c);
		 * model.addAttribute("searchList", searchList);
		 */

		return "tastecoordi.tsmainSearch";
	}

	@RequestMapping(value="tsmainSearch", method=RequestMethod.POST)
	public String tsmainSearch(String style, String color, String categories, Model model, HttpServletRequest request) {
		
		/*List<Coordination> list = coordinationDao.getCoordinations();
		model.addAttribute("list", list);*/
		
		List<Coordination> searchList = coordinationDao.getCodiSearch(style, color, categories);	
		
	 	model.addAttribute("list", searchList);

	/*	List<Clothes> searchcategoryList = clothesDao.searchCategory(category);	 	
	 	model.addAttribute("searchList", searchcategoryList);*/
	 	 	
		
		return "tastecoordi.tsMain";
	}
	/*
	 * @RequestMapping(value="codiRoomSearch",method=RequestMethod.GET) public
	 * String codiRoomSearch(Model model, String c){
	 * 
	 * List<Clothes> list = clothesDao.getClothes(); model.addAttribute("list",
	 * list);
	 * 
	 * 
	 * return "tastecoordi.codiRoomSearch"; }
	 * 
	 * @RequestMapping(value="codiRoomSearch",method=RequestMethod.POST) public
	 * String codiRoomSearch2(Model model, String color){
	 * 
	 * List<Clothes> list = clothesDao.getClothes(); model.addAttribute("list",
	 * list);
	 * 
	 * List<Clothes> searchcolorList = clothesDao.searchColor(color);
	 * model.addAttribute("searchList", searchcolorList);
	 * 
	 * return "tastecoordi.codiRoomSearch"; }
	 */

}
