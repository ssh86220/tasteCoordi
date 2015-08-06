package com.tastecoordi.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.vo.Member;

public class NewlecAuthenticationSuccessHandler implements AuthenticationSuccessHandler{

	MemberDao memberDao;
	
	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}


	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication) throws IOException,
			ServletException {
		
		String id=authentication.getName();
		Member m=memberDao.getMember(id);
		
		//String type=m.getDefaultRole();
		String targetUrl="/tastecoordi/qna"; //기본페이지 설정

		/*if(type.equals("ROLE_TEACHER"))
			targetUrl="/customer/noticeDetail?c=5";*/
		RedirectStrategy redirectStrategy=new DefaultRedirectStrategy();
		redirectStrategy.sendRedirect(request, response, targetUrl);//각페이지로 가도록
	}
	
}
