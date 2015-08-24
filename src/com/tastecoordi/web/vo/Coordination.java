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

	
	//선희
	private int CmtCnt;
	private int LikeCnt;
	private String Name;
	private String image;
	
	
	

	private String color;
	private String categories;
	
	private String coordiesCode;
	private String clothesCoordisCode;
	
	//소윤
	private String temp;
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {	

		this.temp = temp;
	}
	

	//영조
	private String codiCode;
	
	public String getCodiCode() {
		return codiCode;
	}
	public void setCodiCode(String codiCode) {
		this.codiCode = codiCode;
	}
	
	//코디 상세페이지 해당 아이템이 쓰인 코디 리스트 불러오기.
	private String clothesCode;
	
	public String getClothesCode() {
		return clothesCode;
	}
	public void setClothesCode(String ClothesCode) {
		this.clothesCode = ClothesCode;
	}
	
	
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

	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	
	public String getCoordiesCode() {
		return coordiesCode;
	}
	public void setCoordiesCode(String coordiesCode) {
		this.coordiesCode = coordiesCode;
	}
	public String getClothesCoordisCode() {
		return clothesCoordisCode;
	}
	public void setClothesCoordisCode(String clothesCoordisCode) {
		this.clothesCoordisCode = clothesCoordisCode;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
