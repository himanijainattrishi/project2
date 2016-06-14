package com.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.model.User;
import com.model.User_Roles;
import com.service.UserService;

import com.service.User_RolesServiceImp;


@Controller
public class UserController {
	@Autowired
	  UserService userService;
	@Autowired
	User_RolesServiceImp roleservice;
	
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
	public String addCustomer( @ModelAttribute("user") User u,HttpServletRequest request)
		{

	       HttpSession s=request.getSession();
	      /* if(result.hasErrors())
	       {
	    	   return "Register";
	       }*/
	       

		System.out.println("addcustomer");
	
		userService.addUser(u);
	
		User_Roles role=new User_Roles();
		role.setUser_role("ROLE_USER");
		role.setId(u.getId());
		roleservice.addRole(role);
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
		
	 /*@RequestMapping(value="/Success")
	  public String Success(Model m)
	  {	
		 
		 m.addAttribute("user", userService.getUserById(1));
		  return "Success";
	  }	*/
	    
	 @RequestMapping(value="/Success")
	  public String Success(Model m,@ModelAttribute("user") User u)
	  {	
		System.out.println("user id  is"+u.getId());
		 m.addAttribute("user", userService.getUserById(1));
		  return "Success";
	  }	
	    
		
		
	/* @RequestMapping("/Login")
	 public String Loginpage(Model m)
	  {
		 
		 
		User u=new User();
			
			System.out.println("Login page");
				m.addAttribute("loginBean", u);
			
				return "Login";
		
	  }*/
	 
	/* @RequestMapping(value="/userLogin", method=RequestMethod.POST)
	 public ModelAndView processLogin(@ModelAttribute("loginBean") User user,Model m,@RequestParam("id") int id) {
		 
		 
		 user=userService.getUserById(id);
			m.addAttribute("user", user);
		user.getId();
			String userName = user.getName();
			String password = user.getPassword();
			
			System.out.println(user.getCity());
			System.out.println(user.getId());
			
			System.out.println("user name is" +userName);
			//System.out.println("user id is"+id);
			boolean isValidUser=userService.logincheck(userName, password);
			System.out.println("user id is"+user.getId());
			System.out.println("user Name is"+user.getName());
			System.out.println("user city is"+user.getCity());
			if(isValidUser)
			{
				ModelAndView mv = new ModelAndView("Success");
				m.addAttribute("user",user);
				return mv;
			}
			else
			{
				ModelAndView mv = new ModelAndView("Login");
			
			return mv;
				
			}
	 }
			
	 
	 
	 */
	 
	 
	 @RequestMapping(value="/Login")
	 public ModelAndView loginpage(@RequestParam(value="error",required=false)String error,@RequestParam(value="logout",required=false)String logout,Model m)
	 {
		 if (error!=null)
		 {
			 m.addAttribute("error","invalid user name");
		 }
		 if(logout!=null)
		 {
			 m.addAttribute("msg","u have loutout suucceful");
		 }
		 return new ModelAndView("Login");
	 }
	 @RequestMapping(value="/Login",method=RequestMethod.POST)
	 public String logincheck(@Valid @ModelAttribute("validate") User u,BindingResult result,Model model,@RequestParam("id") int id)
	 {
		 if(result.hasErrors())
		 {
			 return "Login";
		 }
		/* else
		 {
			 
		 System.out.println("user");
		 
		 u=userService.getUserById(id);
		 model.addAttribute("user",u);
		 }*/
		 return "index";
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	/* @RequestMapping(value="/userLogin", method=RequestMethod.POST)
	 public ModelAndView checkLogin(HttpServletRequest request,@RequestParam("id") int id,@ModelAttribute("loginBean") User u,Model m)
	 {
		 ModelAndView model=null;
		u=userService.getUserById(id);
		m.addAttribute("user", u);
		 try
		 {
			boolean isValidUser=userService.logincheck(u.getName(),u.getPassword());
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
	 */
	 
	 @RequestMapping("/Profile")
	  public String Profilepage(@RequestParam("id") int id,Model m)
	  {
		User u= userService.getUserById(id);
		System.out.println(id);
		m.addAttribute("u",u);
		return "Profile";
		
	  }
		 /*User u=new User();
	 System.out.println(u.getId());
	
		System.out.println(u.getName());

		
		 m.addAttribute("user1",u);
		
		  System.out.println("user1");
		  return "Profile";*/
	  
	 
	 @RequestMapping(value="/edit/{id}",method=RequestMethod.POST)
	  public String update(@PathVariable("id")int id ,@ModelAttribute("u") User u,Map map)
	  {
		 System.out.println("user id is" +u.getId());
		 userService.updateUser(u);
		/* u=userService.getUserById(id);*/
		/*map.put("user",u);*/
		  return "redirect:/index";
	  }
	 
	 
	 
	 
	 
 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	

}
