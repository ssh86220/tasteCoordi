package com.tastecoordi.web.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tastecoordi.web.dao.CommentDao;
import com.tastecoordi.web.dao.QnaDao;
import com.tastecoordi.web.vo.Comment;
import com.tastecoordi.web.vo.QnA;

@Controller
@RequestMapping("/tastecoordi/*")
public class CustomerController {
	
	private QnaDao qnaDao;
	private CommentDao commentDao;

	@Autowired
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}


	@Autowired	
	public void setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}
	

	@RequestMapping("qna")
	public String qna(Model model){
		List<QnA> list = qnaDao.getQnAs();
		
		//mv.setViewName("/WEB-INF/view/customer/notice.jsp");//=1
		model.addAttribute("list",list);
		
		return "tastecoordi.qna";
		
	}
	

	@RequestMapping("qnaDetail")
	public String qnaDetail(String c,Model model){
		//NoticeDao ND = new MyBatisNoticeDao();
		
		QnA q = qnaDao.getQnA(c);
		model.addAttribute("c",q);
		
		List<Comment> list = commentDao.getComment(c);
		model.addAttribute("list", list);
		
		return "tastecoordi.qnaDetail";
		
	}
	@RequestMapping(value="addComment",method=RequestMethod.POST)
	public String addComment(Comment comment,HttpServletRequest request,Principal principal){

		String qnaNumber =request.getParameter("qnaNumber");
		String mid=principal.getName();
		String content=request.getParameter("content");
				
		comment.setQnaNumber(qnaNumber);
		comment.setMid(mid);
		comment.setContent(content);
		
		commentDao.addComment(comment);
		
		return "redirect:qna";
	}
	

	
	
	@RequestMapping(value="qnaReg",method=RequestMethod.GET)
	public String qnaReg(){
		return "tastecoordi.qnaReg"; //forward
		
	}
	
	@RequestMapping(value="qnaReg",method=RequestMethod.POST)
	public String qnaReg(QnA q,HttpServletRequest request,Principal principal) throws IOException{ // reDirect
	
			/*String title=request.getParameter("title");
			String content=request.getParameter("content");
			String email=request.getParameter("email");
	
			qna.setTitle(title);
			qna.setMid("kimdill");
			qna.setContent(content);
			qna.setEmail(email);*/
			
			//qnaDao = new MyBatisQnADao();
		String mid=principal.getName();
		
				
		q.setMid(mid);
	
		/*comment.setContent(content);*/
		
			qnaDao.addQnA(q);
			
		
		
		return "redirect:qna";
	}
	
	
	@RequestMapping(value="qnaDelete",method=RequestMethod.POST)
	public String qnaDelete(String c,HttpServletRequest request)throws IOException{
		
		qnaDao.removeQnA(c);
		
		return "redirect:qna";
		
	}
	
	@RequestMapping(value="qnaReReg",method=RequestMethod.POST)
	public String qnaReReg(String number,String title,String content,String email){
			
			qnaDao.revisionQnA(number, title, email, content);
		return "redirect:qnaDetail?c="+number;
		
	}
	
	@RequestMapping(value="qnaEdit",method=RequestMethod.POST)
	public String qnaEdit(String c,Model model){
		
		QnA q=qnaDao.getQnA(c);
		model.addAttribute("c", q);
		
		return "tastecoordi.qnaEdit";
		
	}

}
