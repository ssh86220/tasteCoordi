package com.tastecoordi.web.controller;

import java.io.IOException;
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
public class AdminController {
	
	private ClothesDao clothesDao;

	@Autowired
	public void setClothesDao(ClothesDao clothesDao) {
		this.clothesDao = clothesDao;
	}
	
	@RequestMapping("coordi")
	public String coordi(Model model){
		
		List<Clothes> list = clothesDao.getClothes();
		model.addAttribute("list",list);
		
		return "tastecoordi.coordi";
	}
	
	@RequestMapping(value="coordiDelete",method=RequestMethod.POST)
	public String qnaDelete(String c,HttpServletRequest request)throws IOException{
		
		clothesDao.removeClothes(c);
		
		return "redirect:coordi";
		
	}

	
}
