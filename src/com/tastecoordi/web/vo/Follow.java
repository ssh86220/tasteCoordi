package com.tastecoordi.web.vo;

import java.util.List;

public class Follow {
	
	private String  Mid;
	private String TagetMid;
	
	//º“¿±
	private int followerCnt;

	private String followerImg;
	private String followingImg;
	
	private String mName;
	private String tagetName;
	

	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getTagetName() {
		return tagetName;
	}
	public void setTagetName(String tagetName) {
		this.tagetName = tagetName;
	}
	public String getFollowerImg() {
		return followerImg;
	}
	public void setFollowerImg(String followerImg) {
		this.followerImg = followerImg;
	}
	
	public String getFollowingImg() {
		return followingImg;
	}
	public void setFollowingImg(String followingImg) {
		this.followingImg = followingImg;
	}

	
	public int getFollowerCnt() {
		return followerCnt;
	}
	public void setFollowerCnt(int followerCnt) {
		this.followerCnt = followerCnt;
	}
	
	
	
	public String getMid() {
		return Mid;
	}

	public void setMid(String mid) {
		Mid = mid;
	}

	public String getTagetMid() {
		return TagetMid;
	}

	public void setTagetMid(String tagetMid) {
		TagetMid = tagetMid;
	}



}
