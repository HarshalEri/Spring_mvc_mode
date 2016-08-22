package com.blogspot.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.blogspot.model.UserModel;
import com.blogspot.model.UserTbl;
import com.blogspot.service.LoginService;


@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/signIn")
	public ModelAndView goToLoginPage(HttpSession session){
		
		return new ModelAndView("Home","userLogin",new UserModel());
	}
	
	@RequestMapping("/login")
	public String doLogin(UserTbl userInfo){
		System.out.println("doLogin() called...");
		if(loginService.validateuser(userInfo))
			return "welcome";
		else
			return "redirect:signIn";
	}
}
