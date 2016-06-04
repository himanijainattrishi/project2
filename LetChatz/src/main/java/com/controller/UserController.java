package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Address;
import com.model.User;
import com.service.UserService;


@Controller
public class UserController {
	@Autowired
	  UserService userService;
	
	
	@RequestMapping(value= "/Register")
	 public String registerPage(Model m)
		{
		
			User u=new User();
		
		System.out.println("Register page");
			m.addAttribute("user", u);
			return "Register";
		}
	public User getUser()
	{
		return new User();
	}
	
	@RequestMapping(value="/useradd1", method=RequestMethod.POST)
	public String addCustomer(@ModelAttribute("user") User u)
		{
		System.out.println("addcustomer");
		Address a=new Address();
		
		a.setAddid(u.getId());
		userService.addUser(u);
	    System.out.println("user login");
	    return "redirect:/Register";
			
		
		}
	 @RequestMapping("/Login")
	  public String Loginpage(Model m)
	  {
		 User u=new User();
			
			System.out.println("Login page");
				m.addAttribute("loginBean", u);
				return "Login";
		
	  }
	 
	 @RequestMapping(value="/userLogin", method=RequestMethod.POST)
	 public ModelAndView checkLogin(HttpServletRequest request,@ModelAttribute("loginBean") User u)
	 {
		 ModelAndView model=null;
		 try
		 {
			boolean isValidUser=userService.logincheck(u.getName(),u.getPassword());
			System.out.println(u.getName());
			System.out.println(u.getPassword());
			if(isValidUser)
			{
				request.setAttribute("loginIn", u.getName());
				model=new ModelAndView("Success");
			}
			else
			{
				model=new ModelAndView("Login");
			}
			
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		 return model;
	 }
	 
	 
	 @RequestMapping("/Profile")
	  public ModelAndView userProfile()
	  {
		 
		  ModelAndView model=new ModelAndView("Profile");
		  return model;
	  }
	

}
