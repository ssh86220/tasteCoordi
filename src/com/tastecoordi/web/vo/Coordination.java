package com.tastecoordi.web.vo;

import java.util.List;



public class Coordination {
	private String code;
	private String title;
	private String open;
	private String mid;
	private String style;
	private String img;
	private int hit;

	private int CmtCnt;
	private int LikeCnt;
	private String Name;

/*	public List<Like> getLikes() {

		LikeDao likeDao = new MyBatisLikeDao();

		return likeDao.getLikeOfCoordination(this.code);
	}

	public List<Comments> getComments() {

		CommentsDao commentsDao = new MybatisCommentsDao();

		return commentsDao.getCommentsOfCoordination(this.code);
	}*/

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getCmtCnt() {
		return CmtCnt;
	}

	public void setCmtCnt(int cmtCnt) {
		CmtCnt = cmtCnt;
	}

	public int getLikeCnt() {
		return LikeCnt;
	}

	public void setLikeCnt(int likeCnt) {
		LikeCnt = likeCnt;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOpen() {
		return open;
	}

	public void setOpen(String open) {
		this.open = open;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}
