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
import com.tastecoordi.web.dao.EnterpriseDao;
import com.tastecoordi.web.dao.FollowDao;
import com.tastecoordi.web.dao.JjimsDao;
import com.tastecoordi.web.dao.LikeDao;
import com.tastecoordi.web.dao.MemberDao;
import com.tastecoordi.web.vo.Clothes;
import com.tastecoordi.web.vo.Coordination;
import com.tastecoordi.web.vo.Enterprise;
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
	private EnterpriseDao enterpriseDao;

	@Autowired
	public void setEnterpriseDao(EnterpriseDao enterpriseDao) {
		this.enterpriseDao = enterpriseDao;
	}
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

	
	String userImg = null; // 프로필사진
	int follower = 0; //팔로워수
	int following = 0; //팔로잉수
	int commentCnt = 0; //댓글수

	String id; // 로그인 id를 받기 위함
	
	
	//내코디
	@RequestMapping("myCodi")
	public String myCodi(Model model, Principal principal){
		id = principal.getName();
		
		//내 정보(왼쪽 사이드)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Coordination> list = null; //코디 목록
		
		list = coordinationDao.getCodis(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myCodi";
	}
	
	// 코디 공개/비공개
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
	
	// 코디 삭제
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
	
	//내옷장
	@RequestMapping("myClothes")
	public String myClothes(Model model){
		
		Member m = memberDao.getMember(id);
		
		//내 정보(왼쪽 사이드)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Clothes> list = null; //코디 목록
		
		list = clothesDao.getMyClothes(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);	
		model.addAttribute("m", m);	
		
		return "tastecoordi.mypage.myClothes";
	}
	
	// 내옷장 삭제
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
	
	// 아이템 등록
	@RequestMapping(value="myClothesReg", method=RequestMethod.GET)
	public String myClothesReg(Model model){
		
		Member m = memberDao.getMember(id);
		
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
	
	//좋아요
	@RequestMapping("myLikes")
	public String myLikes(Model model){
		
		//내 정보(왼쪽 사이드)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Like> list = null; //코디 목록
		
		list = likeDao.getLikes(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myLikes";
	}
	
	// 좋아요 삭제
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
	
	
	//찜
	@RequestMapping("myJjims")
	public String myJjims(Model model){
		
		//내 정보(왼쪽 사이드)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Jjims> list = null; //코디 목록
		
		list = jjimsDao.getJjims(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myJjims";
	}
	
	// 찜 삭제
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
	
	// 팔로워
	@RequestMapping("myFollower")
	public String myFollower(Model model){
		
		//내 정보(왼쪽 사이드)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Follow> list = null; //코디 목록
		
		list = followDao.getFollowerImg(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myFollower";
	}
	
	// 팔로잉
	@RequestMapping("myFollowing")
	public String myFollowing(Model model){
		
		//내 정보(왼쪽 사이드)
		userImg = memberDao.getMember(id).getImage();
		follower = followDao.getFollowerCnt(id).getFollowerCnt();
		following = followDao.getFollowingCnt(id).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(id).getCommentCnt();
		
		List<Follow> list = null; //코디 목록
		
		list = followDao.getFollowingImg(id);
		
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);		
		
		return "tastecoordi.mypage.myFollowing";
	}
	
	// 팔로잉 삭제
	@RequestMapping(value="myFollowingDel", method=RequestMethod.GET)
	public String myFollowingDel(Model model){
		
		Member m = memberDao.getMember(id);
		model.addAttribute("m", m);
		
		return "redirect:myFollowing";
	}
	
	@RequestMapping(value="myFollowingDel", method=RequestMethod.POST)
	public String myFollowingDel(HttpServletRequest request){

		String[] delMid = request.getParameterValues("check");
		
		for(int i=0;i<delMid.length;i++){
			String mid = delMid[i];
			
			followDao.removeFollow(mid);			
		}
		
		return "redirect:myFollowing";
	}
	
	//팔로잉 회원 코디 목록
	@RequestMapping(value="myFollowingCodi")
	public String myFollowingCodi(Model model, String c){
		
		String targetMid = memberDao.getMember(c).getId();
		userImg = memberDao.getMember(c).getImage();
		follower = followDao.getFollowerCnt(c).getFollowerCnt();
		following = followDao.getFollowingCnt(c).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(c).getCommentCnt();
		
		List<Coordination> list = null; //코디 목록
		
		list = coordinationDao.getCodis(c);
		
		model.addAttribute("id", id);
		model.addAttribute("targetMid", targetMid);
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);	
		
		return "tastecoordi.mypage.myFollowingCodi";
	}
	
	//팔로잉 회원 좋아요 목록
	@RequestMapping(value="myFollowingLikes")
	public String myFollowingLike(Model model, String c){
		
		String targetMid = memberDao.getMember(c).getId();
		userImg = memberDao.getMember(c).getImage();
		follower = followDao.getFollowerCnt(c).getFollowerCnt();
		following = followDao.getFollowingCnt(c).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(c).getCommentCnt();
		
		List<Like> list = null; //코디 목록
		
		list = likeDao.getLikes(c);
		
		model.addAttribute("id", id);
		model.addAttribute("targetMid", targetMid);
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);	
		
		return "tastecoordi.mypage.myFollowingLikes";
	}
	
	//팔로잉 회원 찜한아이템 목록
	@RequestMapping("myFollowingJjims")
	public String myFollowingJjims(Model model, String c){
		
		String targetMid = memberDao.getMember(c).getId();
		userImg = memberDao.getMember(c).getImage();
		follower = followDao.getFollowerCnt(c).getFollowerCnt();
		following = followDao.getFollowingCnt(c).getFollowerCnt();
		commentCnt = commentsDao.getCommemtCnt(c).getCommentCnt();
		
		List<Jjims> list = null; //코디 목록
		
		list = jjimsDao.getJjims(c);
		
		model.addAttribute("id", id);
		model.addAttribute("targetMid", targetMid);
		model.addAttribute("userImg", userImg);
		model.addAttribute("follower", follower);
		model.addAttribute("following", following);
		model.addAttribute("commentCnt", commentCnt);	
		model.addAttribute("list", list);	
		
		return "tastecoordi.mypage.myFollowingJjims";
	}
	
	
	@RequestMapping(value="myInfoUp", method=RequestMethod.GET)
	public String myInfoUp(Model model, HttpServletRequest request){

		
		Member m = memberDao.getMember(id);
		
		model.addAttribute("m", m);
		
		return "tastecoordi.mypage.myInfoUp";
		//return "redirect:"+prevPage;
		
	}
	
	@RequestMapping(value="myInfoUp", method=RequestMethod.POST)
	public String myInfoUp(HttpServletRequest request, MultipartFile file, Member member) throws IOException{
		
		String prevPage = request.getHeader("referer"); //POST 이전주소
		String UrlReplace = prevPage.replace("/", ".");
		prevPage = UrlReplace.substring(UrlReplace.lastIndexOf('.')+1); 

		String image = "";
		
		if(file.isEmpty()){
			image = memberDao.getMember(id).getImage();
		}else{	
			//실제 경로
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
		
		return "redirect:"+prevPage;
	}
	
	//업체신청
	@RequestMapping(value="myInfoEnter", method=RequestMethod.GET)
	public String myInfoEnter(Model model){
		
		Member m = memberDao.getMember(id);
		
		model.addAttribute("m", m);
		
		return "tastecoordi.mypage.myInfoEnter";
	}
	
	@RequestMapping(value="myInfoEnter", method=RequestMethod.POST)
	public String myInfoEnter(HttpServletRequest request, Enterprise enterprise){
		
		String prevPage = request.getHeader("referer"); //POST 이전주소
		String UrlReplace = prevPage.replace("/", ".");
		prevPage = UrlReplace.substring(UrlReplace.lastIndexOf('.')+1); 
		/*---------------------------------------------------------------*/
		
		String link = request.getParameter("link");
		String phoneNumber = request.getParameter("phoneNumber");
		
		Member m = memberDao.getMember(id);
		
		enterprise.setMid(m.getId());
		enterprise.setLink(link);
		enterprise.setPhoneNumber(phoneNumber);
		enterprise.setName(m.getName());
		enterprise.setPw(m.getPw());
		enterprise.setEmail(m.getEmail());
		
		enterpriseDao.addEnterprise(enterprise);

		//return "redirect:myCodi";
		return "redirect:"+prevPage;
	}
	
	
	//test
	@RequestMapping("test")
	public String test(){	
		
		return "tastecoordi.mypage.test";
	}
	
}
