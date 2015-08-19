package com.tastecoordi.web.controller;

import java.io.IOException;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tastecoordi.web.dao.EnterpriseDao;
import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.vo.Enterprise;
import com.tastecoordi.web.vo.Member;


@Controller
@RequestMapping("/joinus/*")
public class JoinusController {
	
	private MemberDao memberDao;
	private EnterpriseDao enterpriseDao;
	
/*===================================================================*/	
	
	@Autowired
	public void setMembDao(MemberDao membDao) {
		this.memberDao = membDao;
	}
	
	@Autowired
	public void setEnterpriseDao(EnterpriseDao enterpriseDao) {
		this.enterpriseDao = enterpriseDao;
	}
	

	/*===================================================================*/	
	




	@RequestMapping(value="joinSelect", method=RequestMethod.GET )
	public String joinSelect() throws IOException{
		
		return "joinus.joinSelect";		
	}

	@RequestMapping(value="joinEnter", method=RequestMethod.GET)
	public String joinEnter(){
	 	
		return "joinus.joinEnter";
	}
	@RequestMapping(value="joinEnter", method=RequestMethod.POST)
	public String joinEnter(Principal principal,Model model, String c, HttpServletRequest request){
				
		Enterprise enterprise = new Enterprise();
		
	 	
		enterprise.setMid(principal.getName());
		enterprise.setMid(c); // clothesCode
	 	
		enterpriseDao.addEnterprise(enterprise);
	 	
	 	return "redirect:tsMain?c=";
		
	}
	
	
	@RequestMapping(value="joinMem",method=RequestMethod.GET)
	public String joinMem(){
		
		return "joinus.joinMem";
	}
	
	@RequestMapping(value="joinMem",method=RequestMethod.POST)
	public String joinMem(Member member, HttpServletRequest request){
	
	
		String id = request.getParameter("ID");
 		String pw = request.getParameter("PW");
 		String email = request.getParameter("Email");
 		String nname= request.getParameter("Nname");
 		//String defaultRole= request.getParameter("DefalutRole");
 		
		
 		member.setId(id);
 		member.setPw(pw);
 		member.setEmail(email);
 		member.setName(nname);
 		member.setDefaultRole("ROLE-USER");
 	
		memberDao.addMember(member);
	 	
	 	return "redirect:joinSelect";
	
	}
	
	

}
