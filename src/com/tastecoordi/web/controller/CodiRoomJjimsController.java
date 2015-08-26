package com.tastecoordi.web.controller;

import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tastecoordi.web.dao.ClothesDao;
import com.tastecoordi.web.dao.JjimsDao;
import com.tastecoordi.web.vo.Clothes;
import com.tastecoordi.web.vo.Jjims;

@Controller
@RequestMapping("/tastecoordi/*")
public class CodiRoomJjimsController {
	
	
	private ClothesDao clothesDao;
	private JjimsDao jjimsDao;
		
	@Autowired
	public void setClothesDao(ClothesDao clothesDao) {
		this.clothesDao = clothesDao;
	}
	
	@Autowired
	public void setJjimsDao(JjimsDao jjimsDao) {
		this.jjimsDao = jjimsDao;
	}

	@RequestMapping(value="codiRoomDetail", method=RequestMethod.GET)
	public String codiRoomDetail(Model model, String c){
		
		
		List<Clothes> list = clothesDao.getClothes();
		model.addAttribute("list", list);
		
		
		try {
			Clothes clothes = clothesDao.getCloth(c);
			model.addAttribute("c", clothes);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
				
		model.addAttribute("count", jjimsDao.getJjimsCount(c));
		
		
		List<Jjims> jjimPeopleList = jjimsDao.getJjimsPeople(c);
		model.addAttribute("jjimPeopleList", jjimPeopleList);
		
		return "tastecoordi.codiRoomDetail";
	}
	
	@RequestMapping(value="codiRoomDetail", method=RequestMethod.POST)
	public String codiRoomDetail(Principal principal, String c){
		
	 	Jjims jjims = new Jjims();
	 	
	 	jjims.setMid(principal.getName());
	 	jjims.setClothesCode(c); // clothesCode
	 	
	 	jjimsDao.addJjims(jjims);
	 	
	 	
	 	return "redirect:codiRoomDetail?c="+c;
	 	//return "tastecoordi.codiRoomJjims";
	 		
	}
	
	@RequestMapping("codiRoomJjims")
	public String codiRoomJjims(Model model, HttpSession session, Principal principal){
			
	
		String mid =principal.getName();
		List<Jjims> list = jjimsDao.getJjim(mid);
		
		model.addAttribute("list", list);
		
		return "tastecoordi.codiRoomJjims";
	}
	
	@RequestMapping(value="codiRoomJjimsDelete", method=RequestMethod.POST)
	public String codiRoomJjimsDelete(Principal principal, String c){
		
	 	Jjims jjims = new Jjims();
	 	
	 	jjimsDao.removeJjims(c, principal.getName());
	 	
	 	return "redirect:codiRoomDetail?c="+c;
	 	//return "tastecoordi.codiRoomJjims";
	 		
	}

}
