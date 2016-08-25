package com.blogspot.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.blogspot.entities.BlogTbl;
import com.blogspot.model.UserModel;
import com.blogspot.service.BlogService;
import com.blogspot.service.LoginService;


@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private BlogService blogService;
	
	@RequestMapping("/signIn")
	public ModelAndView goToLoginPage(HttpSession session){
		
		System.out.println("In signIn request mapper....");
		// get item price object from db
		List<BlogTbl> list = blogService.displayAllBlogs();
		
		// add it into a list in session.
		List<BlogTbl> blogList =(List<BlogTbl>) session.getAttribute("blogList");
		if(blogList == null) {
			blogList = new ArrayList<>();
			session.setAttribute("blogList", blogList);
		}
		blogList.addAll(list);
		
		return new ModelAndView("home","userLogin",new UserModel());
	}
	
	@RequestMapping("/login")
	public String doLogin(UserModel userInfo){
		System.out.println("doLogin() called...");
		if(loginService.validateuser(userInfo) == true)
			return "redirect:userpage";
		else
			return "redirect:signIn";
	}
	
	@RequestMapping("/userpage")
	public String goToUserPage(){
		//TODO : Add business logic to display all user blogs on user  page
		return "";
	}
}
