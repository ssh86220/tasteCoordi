package com.tastecoordi.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/joinus/*")
public class LoginController {
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login(){
		
		return "joinus.login";
	}

}
