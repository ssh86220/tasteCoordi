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
import com.tastecoordi.web.dao.MemberRolesDao;
import com.tastecoordi.web.vo.Enterprise;
import com.tastecoordi.web.vo.Member;
import com.tastecoordi.web.vo.MemberRoles;


@Controller
@RequestMapping("/joinus/*")
public class JoinusController {
	
	private MemberDao memberDao;
	private EnterpriseDao enterpriseDao;
	private MemberRolesDao memberRolesDao;
	
/*===================================================================*/	
	
	@Autowired
	public void setMembDao(MemberDao membDao) {
		this.memberDao = membDao;
	}
	
	@Autowired
	public void setEnterpriseDao(EnterpriseDao enterpriseDao) {
		this.enterpriseDao = enterpriseDao;
	}
	
	@Autowired
	public void setMemberRolesDao(MemberRolesDao memberRolesDao) {
		this.memberRolesDao = memberRolesDao;
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
	public String joinEnter(Principal principal,Member member,Enterprise enterprise, MemberRoles memberRoles, String c, HttpServletRequest request){
				
		String mid = request.getParameter("ID");
 		String pw = request.getParameter("PW");
 		String email = request.getParameter("Email");
 		String nname= request.getParameter("Nckname");
 		String siteL= request.getParameter("SiteLink");
 		String PN= request.getParameter("phoneNumber");
 		
 		
 		member.setId(mid);
 		enterprise.setMid(mid);
 		member.setPw(pw);
 		member.setEmail(email);
 		member.setName(nname);
 		enterprise.setLink(siteL);
 		enterprise.setPhoneNumber(PN);	
 		member.setDefaultRole("ROLE-USER");
 		memberRoles.setRcode("ROLE-USER");
 		memberRoles.setMID(mid);
 	
 		memberDao.addMember(member);
		enterpriseDao.SignUpEnterprise(enterprise);
	 	
	 	return "redirect:../tastecoordi/tsMain";
		
	}
	
	
	@RequestMapping(value="joinMem",method=RequestMethod.GET)
	public String joinMem(){
		
		return "joinus.joinMem";
	}
	
	@RequestMapping(value="joinMem",method=RequestMethod.POST)
	public String joinMem(Member member,MemberRoles memberRoles, HttpServletRequest request){
	
	
		String id = request.getParameter("ID");
 		String pw = request.getParameter("PW");
 		String email = request.getParameter("Email");
 		String nname= request.getParameter("Nname");
 		
 		
		
 		member.setId(id);
 		member.setPw(pw);
 		member.setEmail(email);
 		member.setName(nname);
 		member.setDefaultRole("ROLE-USER");
 		memberRoles.setRcode("ROLE-USER");
 		memberRoles.setMID(id);
 	
		memberDao.addMember(member);
	 	
	 	return "redirect:../tastecoordi/tsMain";
	
	}
	
	

}
