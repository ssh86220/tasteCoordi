package com.tastecoordi.web.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.tastecoordi.web.dao.ClothesDao;
import com.tastecoordi.web.vo.Clothes;

@Controller
@RequestMapping("/tastecoordi/*")
public class CodiRoomMyClothesController {
	
	private ClothesDao clothesDao;
	
	@Autowired
	public void setClothesDao(ClothesDao clothesDao) {
		this.clothesDao = clothesDao;
	}
	
	@RequestMapping("codiRoomMyClothes")
	public String codiRoomMyClothes(Model model,HttpSession session, Principal principal){
		
		String mid = principal.getName();
		
	 	List<Clothes> list = clothesDao.getMyClothes(mid);
	 	
	 	model.addAttribute("list", list);
		
		return "tastecoordi.codiRoomMyClothes";
	}
	
	@RequestMapping(value="codiRoomMyClothesUpload",method=RequestMethod.GET)
	public String codiRoomMyClothesUpload(){
		
		return "tastecoordi.codiRoomMyClothesUpload";
	}
	
	@RequestMapping(value="codiRoomMyClothesUpload",method=RequestMethod.POST)
	public String codiRoomMyClothesUpload(Clothes clothes,MultipartFile file, HttpServletRequest request) throws IOException{
		
		if(!file.isEmpty()){
			
			ServletContext application = request.getServletContext();
	 		String url = "/resource/image/clothes";
	 		String path = application.getRealPath(url);
	 		String temp =  file.getOriginalFilename();
	 		String fname = temp.substring(temp.lastIndexOf("\\")+1);
	 		String fpath = path +"\\" +fname;
	 		
	 		InputStream ins = file.getInputStream(); // part.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);
 		
 		
			byte[] buffer = new byte[1024];
 		
			int len = 0;
 		
			while((len = ins.read(buffer,0,1024))>=0)
				outs.write(buffer, 0, len);
 		
			outs.flush();
			outs.close();
			ins.close();
			
			clothes.setImage(fname);
			
		}
		
		
		
		clothesDao.addClothes(clothes);
		 
 				
		
		return "redirect:codiRoomMyClothes";
	}
	
	@RequestMapping(value="codiRoomMyClothesDelete",method=RequestMethod.POST)
	public String codiRoomMyClothesDelete(HttpServletRequest request){
		
		String[] deleteClothes = request.getParameterValues("check");
	 		
 		for(int i=0; i< deleteClothes.length; i++){
 			
 			String code = deleteClothes[i];
 			

 		
			clothesDao.removeClothes(code);
			
 			
 			
 			
 		}		
		return "redirect: codiRoomMyClothes";
	}

}
