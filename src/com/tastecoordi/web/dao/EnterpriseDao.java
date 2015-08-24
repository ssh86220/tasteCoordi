package com.tastecoordi.web.dao;

import java.util.List;

import com.tastecoordi.web.vo.Enterprise;
import com.tastecoordi.web.vo.Member;

public interface EnterpriseDao {

/*	public List<Enterprise> getEnterprisesNotApp();



	public List<Enterprise> getEnterpriseApp();


	public List<Enterprise> getEnterpriseAppMid(String mid);
	public List<Enterprise> getEnterpriseAppName(String name);


		public Enterprise getEnterprise(String mid);*/
	//-------------------------------------------------
			
		public int addEnterprise(Enterprise id);
		
	//-------------------------------------------------
		
		public int SignUpEnterprise(Enterprise m);
		
		/*public List<Enterprise> deleteEnterprises();*/
		
		/*public Integer deleteEnterprise(String mid);
		public Integer updateGetEnterprise(String mid);*/
}
