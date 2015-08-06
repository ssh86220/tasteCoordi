package com.tastecoordi.web.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tastecoordi.web.dao.ClothesCoordiDao;
import com.tastecoordi.web.dao.ClothesDao;
import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.dao.JjimsDao;
import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.dao.mybatis.MyBatisClothesDao;
import com.tastecoordi.web.dao.mybatis.MyBatisMemberDao;
import com.tastecoordi.web.dao.mybatis.MyBatisJjimsDao;
import com.tastecoordi.web.vo.Clothes;
import com.tastecoordi.web.vo.Jjims;

@Controller
@RequestMapping("/tastecoordi/*")
public class CodiRoomController {
	
	private ClothesDao clothesDao;
	private MemberDao memberDao;


	@Autowired
	public void setClothesDao(ClothesDao clothesDao) {
		this.clothesDao = clothesDao;
	}
	
	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	
	@RequestMapping("codiRoom")
	public String codiRoom(Model model, String c, HttpServletRequest request){
		
	 	List<Clothes> list = clothesDao.getClothes();
	 	
	 	model.addAttribute("list", list);
	 	
		return "tastecoordi.codiRoom";
	}
		

}
