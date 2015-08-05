package com.tastecoordi.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public String tsMain(Model model) {
		/*	CoordinationDao coordinationDao = new MyBatisCoordinationDao();*/
		List<Coordination> list = coordinationDao.getCoordinations();

		model.addAttribute("list", list);

		return "tastecoordi.tsMain";	
	}
	
	@RequestMapping("tsMainDetail")
	public String tsMainDetail(String c, Model model) {

		Coordination n = coordinationDao.getCoordination(c);
		
		model.addAttribute("n", n);

		return "tastecoordi.tsMainDetail";
	}
	
	@RequestMapping("tsmainSearch")
	public String tsmainSearch(String c, Model model) {

		List<Coordination> list = coordinationDao.getCoordinations();

		model.addAttribute("list", list);

		return "tastecoordi.tsmainSearch";
	}
	
}
