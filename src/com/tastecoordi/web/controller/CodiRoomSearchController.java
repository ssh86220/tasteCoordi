package com.tastecoordi.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tastecoordi.web.dao.ClothesDao;
import com.tastecoordi.web.vo.Clothes;



@Controller
@RequestMapping("/tastecoordi/*")
public class CodiRoomSearchController {
	
	private ClothesDao clothesDao;


	@Autowired
	public void setClothesDao(ClothesDao clothesDao) {
		this.clothesDao = clothesDao;
	}
	
	@RequestMapping(value="codiRoomSearch",method=RequestMethod.GET)
	public String codiRoomSearch(Model model, String c){
		
		List<Clothes> list = clothesDao.getClothes();
		model.addAttribute("list", list);
		
		List<Clothes> searchList = clothesDao.searchCategory(c);	 	
	 	model.addAttribute("searchList", searchList);
	 	
 		return "tastecoordi.codiRoomSearch";
	}
	
	@RequestMapping(value="codiRoomSearch",method=RequestMethod.POST)
	public String codiRoomSearch2(Model model, String color){
		
		List<Clothes> list = clothesDao.getClothes();
		model.addAttribute("list", list);
		
 		List<Clothes> searchcolorList = clothesDao.searchColor(color);	 	
	 	model.addAttribute("searchList", searchcolorList);
	 	
 		return "tastecoordi.codiRoomSearch";
	}
	
	
	
	

}
