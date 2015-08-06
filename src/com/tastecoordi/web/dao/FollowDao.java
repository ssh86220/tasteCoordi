package com.tastecoordi.web.dao;

import java.sql.SQLException;
import java.util.List;

import com.tastecoordi.web.vo.Follow;

public interface FollowDao {


/*	public int removeFollow(Follow f) throws ClassNotFoundException,
			SQLException;;

	
	 * public Fallow getfallow(String Mid) throws ClassNotFoundException,
	 * SQLException;
	 

	public int getfollow(Follow f) throws ClassNotFoundException, SQLException;

	
	public int addFollow(Follow f);*/
	
	public int removeFollow(String tagetMid);
	
	public Follow getFollowerCnt(String Mid);
	public Follow getFollowingCnt(String Mid);
	
	public List<Follow> getFollowerImg(String targetMid);
	public List<Follow> getFollowingImg(String Mid);

}
