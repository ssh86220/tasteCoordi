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
	public String coordinationDetail(Model model, String c, String cc){
		
		//프로필 이미지 불러오기. 15.08.17 영조 추가분
		model.addAttribute("profile", coordinationDao.getCoordination(c));

		
		//15.08.24 영조 : 해당 아이템이 사용된 코디 리스트들(다른 코디 포함)
		List<Coordination> clothesncoordi = coordinationDao.getClothesNCoordi(cc);
		model.addAttribute("clothesncoordi", clothesncoordi);
		
		
		
		//댓글 불러오기
		List<Comments> list = commentsDao.getComments(c);
		model.addAttribute("list", list);
		
		
		
		//코디 하나에 대한 정보
		model.addAttribute("codi", coordinationDao.getCodi(c));
		
		//String code = request.getParameter("c");	//코디 룸페이지에서 c 넘겨줘야.(notice.jsp 100번째 줄 참고)
		/*Coordination codi = coordinationDao.getCodi(c);
		model.addAttribute("codi", codi);*/
	
		
		//코디 리스트
				/*List<Coordination> codilist = coordinationDao.getCodis(c);
				model.addAttribute("codilist", codilist);
		*/
				
		//코디에 사용된 아이템 리스트
			
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
