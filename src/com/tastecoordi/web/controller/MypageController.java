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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.tastecoordi.web.dao.ClothesDao;
import com.tastecoordi.web.dao.CommentsDao;
import com.tastecoordi.web.dao.CoordinationDao;
import com.tastecoordi.web.dao.FollowDao;
import com.tastecoordi.web.dao.JjimsDao;
import com.tastecoordi.web.dao.LikeDao;
import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.vo.Clothes;
import com.tastecoordi.web.vo.Coordination;
import com.tastecoordi.web.vo.Follow;
import com.tastecoordi.web.vo.Jjims;
import com.tastecoordi.web.vo.Like;
import com.tastecoordi.web.vo.Member;

@Controller
@RequestMapping("/tastecoordi/mypage/*")

public class MypageController {
	
	private MemberDao memberDao;
	private FollowDao followDao;
	private CommentsDao commentsDao;
	private CoordinationDao coordinationDao;
	private ClothesDao clothesDao;
	private LikeDao likeDao;
	private JjimsDao jjimsDao;


	@Autowired
	public void setLikeDao(LikeDao likeDao) {
		this.likeDao = likeDao;
	}
	@Autowired
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	@Autowired
	public void setFollowDao(FollowDao followDao) {
		this.followDao = followDao;
	}
	@Autowired
	public void setCommentsDao(CommentsDao commentsDao) {
		this.commentsDao = commentsDao;
	}
	@Autowired
	public void setCoordinationDao(CoordinationDao coordinationDao) {
		this.coordinationDao = coordinationDao;
	}
	@Autowired
	public void setClothesDao(ClothesDao clothesDao) {
		this.clothesDao = clothesDao;
	}
	@Autowired
	public void setJjimsDao(JjimsDao jjimsDao) {
		this.jjimsDao = jjimsDao;
	}

	
	String userImg = null; // �����ʻ���
	int follower = 0; //�ȷο���
	int following = 0; //�ȷ��׼�
	int commentCnt = 0; //��ۼ�

	String id; // �α��� id�� �ޱ� ����
	
	
	//���ڵ�
	@RequestMapping("myCodi")
	public String myCodi(Model model, Principal principal){
		id = principal.getName();
		
		//�� ����(���� ���̵�)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Coordination> list = null; //�ڵ� ���
		
		list = coordinationDao.getCodis(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myCodi";
	}
	
	// �ڵ� ����/�����
	@RequestMapping(value="myCodiState", method=RequestMethod.GET)
	public String myCodiState(){
		
		return "redirect:myCodi";
	}
	
	@RequestMapping(value="myCodiState", method=RequestMethod.POST)
	public String myCodiState(HttpServletRequest request){
		
		String[] openCode = request.getParameterValues("check");
		
		for(int i=0;i<openCode.length;i++){
			String code = openCode[i];
			coordinationDao.openCodi(code);
		}
		
		return "redirect:myCodi";
	}
	
	// �ڵ� ����
	@RequestMapping(value="myCodiDel", method=RequestMethod.GET)
	public String myCodiDel(Model model){
		
		Member m = memberDao.getMember(id);
		model.addAttribute("m", m);
		
		return "redirect:myCodi";
	}
	
	@RequestMapping(value="myCodiDel", method=RequestMethod.POST)
	public String myCodiDel(HttpServletRequest request){

		String[] delCode = request.getParameterValues("check");
		
		for(int i=0;i<delCode.length;i++){
			String code = delCode[i];
			
			coordinationDao.delCodi(code);
			
		}
		
		return "redirect:myCodi";
	}
	
	//������
	@RequestMapping("myClothes")
	public String myClothes(Model model){
		
		//�� ����(���� ���̵�)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Clothes> list = null; //�ڵ� ���
		
		list = clothesDao.getMyClothes(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myClothes";
	}
	
	// ������ ����
	@RequestMapping(value="myClothesDel", method=RequestMethod.GET)	
	public String myClothesDel(Model model){
		
		Member m = memberDao.getMember(id);
		model.addAttribute("m", m);
		
		return "redirect:myClothes";
	}
	
	@RequestMapping(value="myClothesDel", method=RequestMethod.POST)
	public String myClothesDel(HttpServletRequest request){

		String[] delCode = request.getParameterValues("check");
		
		for(int i=0;i<delCode.length;i++){
			String code = delCode[i];
			
			clothesDao.removeClothes(code);
			
		}
		
		return "redirect:myClothes";
	}
	
	// ������ ���
	@RequestMapping(value="myClothesReg", method=RequestMethod.GET)
	public String myClothesReg(Model model){
		
		Member m = memberDao.getMember(id);
		
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		
		model.addAttribute("m", m);
		
		return "tastecoordi.mypage.myClothesReg";
	}
	
	@RequestMapping(value="myClothesReg", method=RequestMethod.POST)
	public String myClothesReg(HttpServletRequest request, MultipartFile file, Clothes clothes) throws IOException{
		
 		ServletContext application = request.getServletContext();
 		String url = "/resource/image/clothes";
 		String path = application.getRealPath(url);
 		String temp =  file.getOriginalFilename();
 		String image = temp.substring(temp.lastIndexOf("\\")+1);
 		String fpath = path +"\\" +image;
 		
 		InputStream ins = file.getInputStream();
 		OutputStream outs = new FileOutputStream(fpath);
 		
 		byte[] buffer = new byte[1024];
 		
 		int len = 0;
 		
 		while((len = ins.read(buffer,0,1024))>=0)
 			outs.write(buffer, 0, len);
 		
 		outs.flush();
 		outs.close();
 		ins.close();
		
		String name = request.getParameter("itemName");
 		String categories = request.getParameter("categories");
 		String color = request.getParameter("color");
 		String price = request.getParameter("price");
 		String link = request.getParameter("link");
		
 		clothes.setMid(id);
 		clothes.setName(name);
 		clothes.setCategories(categories);
 		clothes.setColor(color);
 		clothes.setImage(image);
 		clothes.setPrice(price);
 		clothes.setLink(link);
		
		clothesDao.addClothes(clothes);
		
		return "redirect:myClothes";
	}
	
	//���ƿ�
	@RequestMapping("myLikes")
	public String myLikes(Model model){
		
		//�� ����(���� ���̵�)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Like> list = null; //�ڵ� ���
		
		list = likeDao.getLikes(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myLikes";
	}
	
	// ���ƿ� ����
	@RequestMapping(value="myLikesDel", method=RequestMethod.GET)
	public String myLikesDel(Model model){
		
		Member m = memberDao.getMember(id);
		model.addAttribute("m", m);
		
		return "redirect:myLikes";
	}
	
	@RequestMapping(value="myLikesDel", method=RequestMethod.POST)
	public String myLikesDel(HttpServletRequest request){

		String[] delCode = request.getParameterValues("check");
		
		for(int i=0;i<delCode.length;i++){
			String code = delCode[i];
			
			likeDao.delLike(code);			
		}
		
		return "redirect:myLikes";
	}
	
	
	//��
	@RequestMapping("myJjims")
	public String myJjims(Model model){
		
		//�� ����(���� ���̵�)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Jjims> list = null; //�ڵ� ���
		
		list = jjimsDao.getJjims(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myJjims";
	}
	
	// �� ����
	@RequestMapping(value="myJjimsDel", method=RequestMethod.GET)
	public String myJjimsDel(Model model){
		
		Member m = memberDao.getMember(id);
		model.addAttribute("m", m);
		
		return "redirect:myJjims";
	}
	
	@RequestMapping(value="myJjimsDel", method=RequestMethod.POST)
	public String myJjimsDel(HttpServletRequest request){

		String[] delCode = request.getParameterValues("check");
		
		for(int i=0;i<delCode.length;i++){
			String code = delCode[i];
			
			jjimsDao.delJjims(code);			
		}
		
		return "redirect:myJjims";
	}
		
	// �� ���� ����
	@RequestMapping(value="myInfo", method=RequestMethod.GET)
	public String myInfo(Model model, HttpServletRequest request){
		
		String prevPage = request.getHeader("referer"); //POST �����ּ�
		String UrlReplace = prevPage.replace("/", ".");
		prevPage = UrlReplace.substring(UrlReplace.lastIndexOf('.')+1); 
		
		//�� ����(���� ���̵�)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		Member m = memberDao.getMember(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("m", m);
		
		//return "tastecoordi.mypage.myInfo";
		return "redirect:"+prevPage;
	}
	
	@RequestMapping(value="myInfo", method=RequestMethod.POST)
	public String myInfo(HttpServletRequest request, MultipartFile file, Member member) throws IOException{
		
		
		//String prevPage = request.getRequestURI().toString();//POST �ּ�
		String prevPage = request.getHeader("referer"); //POST �����ּ�
		String UrlReplace = prevPage.replace("/", ".");
		//prevPage = UrlReplace.substring(48); 
		prevPage = UrlReplace.substring(UrlReplace.lastIndexOf('.')+1); 
		//http:..localhost.TasteCoordi.tastecoordi.mypage. �� ���� ã�� �� �ִ� �����?

		String image = "";
		
		if(file.isEmpty()){
			image = memberDao.getMember(id).getImage();
		}else{	
			//���� ���
	 		ServletContext application = request.getServletContext();
	 		String url = "/resource/image/profile";
	 		String path = application.getRealPath(url);
	 		String temp =  file.getOriginalFilename();
	 		image=temp.substring(temp.lastIndexOf("\\")+1);
	 		String fpath = path +"\\" +image;
	 		
	 		InputStream ins = file.getInputStream();
	 		OutputStream outs = new FileOutputStream(fpath);
	 		
	 		byte[] buffer = new byte[1024];
	 		
	 		int len = 0;
	 		
	 		while((len = ins.read(buffer,0,1024))>=0)
	 			outs.write(buffer, 0, len);
	 		
	 		outs.flush();
	 		outs.close();
	 		ins.close();
		
		}
		
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		
		if(name.isEmpty())
			name = memberDao.getMember(id).getName();
		member.setName(name);
		
		if(pw.isEmpty())
			pw = memberDao.getMember(id).getPw();
		member.setPw(pw);
		
		if(email.isEmpty())
			email = memberDao.getMember(id).getEmail();
		member.setEmail(email);

		member.setImage(image);
		
		memberDao.alterMember(member);
		
		//return "redirect:myCodi";
		return "redirect:"+prevPage;
	}
	
	// �ȷο�
	@RequestMapping("myFollower")
	public String myFollower(Model model){
		
		//�� ����(���� ���̵�)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Follow> list = null; //�ڵ� ���
		
		list = followDao.getFollowerImg(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myFollower";
	}
	
	// �ȷ���
	@RequestMapping("myFollowing")
	public String myFollowing(Model model){
		
		//�� ����(���� ���̵�)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Follow> list = null; //�ڵ� ���
		
		list = followDao.getFollowingImg(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myFollowing";
	}
	
	// �ȷ��� ����
	@RequestMapping(value="myFollowingDel", method=RequestMethod.GET)
	public String myFollowingDel(Model model){
		
		Member m = memberDao.getMember(id);
		model.addAttribute("m", m);
		
		return "redirect:myFollowing";
	}
	
	@RequestMapping(value="myFollowingDel", method=RequestMethod.POST)
	public String myFollowerDel(HttpServletRequest request){

		String[] delMid = request.getParameterValues("check");
		
		for(int i=0;i<delMid.length;i++){
			String mid = delMid[i];
			
			followDao.removeFollow(mid);			
		}
		
		return "redirect:myFollowing";
	}
	
}
