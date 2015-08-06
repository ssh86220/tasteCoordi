package com.tastecoordi.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/joinus/*")
public class LoginController {
	
	@RequestMapping("login")
	public String login(){
		
		return "joinus.login";
	}

}
