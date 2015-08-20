package com.tastecoordi.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tastecoordi.web.dao.ClothesCoordiDao;
import com.tastecoordi.web.dao.ClothesDao;
import com.tastecoordi.web.dao.CommentsDao;
import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.vo.ClothesCoordi;
import com.tastecoordi.web.vo.Comments;
import com.tastecoordi.web.vo.Coordination;


@Controller
@RequestMapping("/tastecoordi/*")
public class CoordiDetailController extends HttpServlet {

	private CoordinationDao coordinationDao;
	private CommentsDao commentsDao;
	private ClothesDao clothesDao;
	private ClothesCoordiDao clothesCoordiDao;

	

	
	@Autowired
	public void setClothesCoordiDao(ClothesCoordiDao clothesCoordiDao) {
		this.clothesCoordiDao = clothesCoordiDao;
	}

	@Autowired
	public void setCoordinationDao(CoordinationDao coordinationDao) {
		this.coordinationDao = coordinationDao;
	}
	
	@Autowired
	public void setCommentsDao(CommentsDao commentsDao) {
		this.commentsDao = commentsDao;
	}
	
	@Autowired
	public void setClothesDao(ClothesDao clothesDao) {
		this.clothesDao = clothesDao;
	}
	
	@RequestMapping("coordiDetailPage")
	public String coordinationDetail(Model model, String c){
		
		//������ �̹��� �ҷ�����. 15.08.17 ���� �߰���
		model.addAttribute("profile", coordinationDao.getCoordination(c));

		
		
		//��� �ҷ�����
		List<Comments> list = commentsDao.getComments(c);
		model.addAttribute("list", list);
		
		
		
		//�ڵ� �ϳ��� ���� ����
		model.addAttribute("codi", coordinationDao.getCodi(c));
		
		//String code = request.getParameter("c");	//�ڵ� ������������ c �Ѱ����.(notice.jsp 100��° �� ����)
		/*Coordination codi = coordinationDao.getCodi(c);
		model.addAttribute("codi", codi);*/
	
		
		//�ڵ� ����Ʈ
				List<Coordination> codilist = coordinationDao.getCodis(c);
				model.addAttribute("codilist", codilist);
		
				
		//�ڵ� ���� ������ ����Ʈ
			
			/*List<Clothes> clotheslist = clothesDao.getClothes();
			model.addAttribute("clotheslist", clotheslist);*/
		List<ClothesCoordi>	clotheslist = clothesCoordiDao.getCCs(c);
		model.addAttribute("clotheslist", clotheslist);		
	

		return "tastecoordi.coordiDetailPage";
		
		
	}
	

	@RequestMapping(value = "likePop", method = RequestMethod.GET)
	public String likePop(){
		
		return "tastecoordi.likePop";
		
	}
	
	
	

}
