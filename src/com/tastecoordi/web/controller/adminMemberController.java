package com.tastecoordi.web.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Principal;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.vo.Member;

@Controller
//@RequestMapping("/tastecoordi/*")
@RequestMapping("/admin/*")
public class adminMemberController {

	@Autowired
	private MemberDao memberDao;

	//@RequestMapping("adminMem")
	@RequestMapping("adminMember")
	public String adminMem(Model model) {

		//List<Member> list = memberDao.getMembers();
		List<Member> list = memberDao.getMemberList();
		
		model.addAttribute("list", list);

		return "admin.adminMember";
	}

	@RequestMapping(value="adminMemberDelete", method = RequestMethod.POST)
	public String adminMemDelete(String c) {

		/*Member m = memberDao.getMember(id);*/
		
		
		memberDao.removeMember(c);

		return "redirect:adminMember";
	}
	@RequestMapping("tsMemberModi")
	public String tsMemberModi(String c, Model model) {
		
		Member n = memberDao.getMember(c);
		
		model.addAttribute("n", n);
		
		return "tastecoordi.tsMemberModi";
	}
	
/*	@RequestMapping(value = "noticeReg", method = RequestMethod.GET)
	public String adminMemDelete(){
		// get요청 - 포워드
		return "/WEB-INF/view/customer/adminMemDelete.jsp";
	}*/
	

/*	@RequestMapping(value = "noticeReg", method = RequestMethod.POST)
	public String adminMemDelete()(Member n, MultipartFile file, Principal principal, SecurityContextHolder holder, SecurityContext context,
			HttpServletRequest request) throws IOException {
		// 포스트요청 - 리드렉트
		// set.parameter값 가져옴. notice에

		if(request.isUserInRole("ROLE_ADMIN"))
		{
			
		}
		
		//holder.getContext();
		context.getAuthentication().getAuthorities();
		context.getAuthentication().isAuthenticated();
		
		n.setWriter(principal.getName());
		
		noticeDao.addNotice(n);
		String lastCode = noticeDao.getLastCode();
		
		if(!file.isEmpty()){
		ServletContext application = request.getServletContext();
		
		String url = "/resource/customer/upload";
		String path = application.getRealPath(url);
		String temp = file.getOriginalFilename();// part.getSubmittedFileName();
		String fname = temp.substring(temp.lastIndexOf("\\") + 1);
		String fpath = path + "\\" + fname;

		InputStream ins = file.getInputStream();// part.getInputStream();
		OutputStream outs = new FileOutputStream(fpath);

		byte[] 대야 = new byte[1024];
		int len = 0;

		while ((len = ins.read(대야, 0, 1024)) >= 0)
		outs.write(대야, 0, len);

		outs.flush();
		outs.close();
		ins.close();
		
		NoticeFile noticeFile = new NoticeFile();
		noticeFile.setName(fname);
		noticeFile.setNoticeCode(lastCode);
		noticeFileDao.addNoticeFile(noticeFile);
		}

		return "redirect:notice";

	}
*/

	@RequestMapping("adminMemDetail")
	public String adminMemDetail(String c, Model model) {

		Member n = memberDao.getMember(c);

		model.addAttribute("n", n);

		return "tastecoordi.adminMemDetail";
	}

}
