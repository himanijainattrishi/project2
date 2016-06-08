package com.controller;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


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
	public String addCustomer(@ModelAttribute("user") User u,HttpServletRequest request)
		{

	       HttpSession s=request.getSession();

		System.out.println("addcustomer");
	
		userService.addUser(u);
		MultipartFile file=u.getImage();
		String fileloc=s.getServletContext().getRealPath("/resources/pics/");
		String filename=fileloc+"\\"+u.getId()+".jpg";
		System.out.println(filename);
		try{
	    	  byte b[]=file.getBytes();
	     FileOutputStream fos=new FileOutputStream(filename);
	     fos.write(b);
			fos.close();
			System.out.println(filename);
			
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	    	   catch (Exception e) {
	   			// TODO Auto-generated catch block
	   			e.printStackTrace();
	   		
	}
	
	System.out.println("user login");
    return "redirect:/index";
		
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
	 public ModelAndView checkLogin(HttpServletRequest request,@RequestParam("id") int  id,@ModelAttribute("loginBean") User u,Model m)
	 {
		 ModelAndView model=null;
		u=userService.getUserById(id);
		m.addAttribute("user", u);
		 try
		 {
		/*	boolean isValidUser=userService.logincheck(u.getName(),u.getPassword());*/
				boolean isValidUser=userService.logincheck(u.getId(),u.getPassword());
			System.out.println(u.getName());
			System.out.println(u.getPassword());
			u.getName();
			if(isValidUser)
			{
				request.setAttribute("loginIn", u.getId());
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
	  public String Profilepage(@RequestParam("id") int  id,Model m ,@ModelAttribute("myprofile") User user)
	  {
		User u= userService.getUserById(id);
		m.addAttribute("u",u);
		
			System.out.println("Profile page");
			System.out.println(u.getName());
			
				return "Profile";
		
	  }
		 
		 /*User u=new User();
	 System.out.println(u.getId());
	
		System.out.println(u.getName());

		
		 m.addAttribute("user1",u);
		
		  System.out.println("user1");
		  return "Profile";*/
	  
	 
	 @RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
	  public String update(@PathVariable("id")int id ,@ModelAttribute("user1") User u,Model model)
	  {
		 
		 System.out.println("user id is" +u.getId());
		 model.addAttribute("user1",userService.getUserById(id));
		 
		 
		 
	     
		  return "index";
	  }
 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	

}
