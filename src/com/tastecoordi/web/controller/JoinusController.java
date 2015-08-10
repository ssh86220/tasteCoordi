package com.tastecoordi.web.controller;

import java.io.IOException;

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
import com.tastecoordi.web.vo.QnA;

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

	@RequestMapping("joinEnterprise")
	public String joinEnterprise(String c,Model model, Enterprise enterprise)throws IOException{
		enterpriseDao.addEnterprise(enterprise);
		
/*		memberDao.addMember(c);

		model.addAttribute("c",q);*/
		
		return "joinus.joinEnterprise";
		
	}
	@RequestMapping("joinMember")
	public String joinMember(Member member)throws IOException{
		memberDao.addMember(member);
		return "joinus.joinMember";		
	}
	
}
