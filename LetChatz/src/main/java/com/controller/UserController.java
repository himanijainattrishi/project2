package com.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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
	public String addCustomer(@Valid @ModelAttribute("user") User u,BindingResult result,HttpServletRequest request,Model model)
		{
		System.out.println("register useradd1");
if(result.hasErrors())
{
	return "Register";
}

List<User> userList = userService.getAllUsers();

for (int i=0; i< userList.size(); i++){
    if(u.getEmail().equals(userList.get(i).getEmail())){
        model.addAttribute("emailMsg", "Email already exists");

        return "Register";
    }

    if(u.getName().equals(userList.get(i).getName())){
    	System.out.println("username is"+u.getName());
        model.addAttribute("usernameMsg", "Username already exists");

        return "Register";
    }
}



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
	
	System.out.println("user register");
    return "redirect:/index";
		
	}
		
	@RequestMapping(value="/Success")
	public String getUserById(ModelMap model,Principal principal){
		User u=new User();
		System.out.println(u.getId());
		String name=principal.getName();
		model.addAttribute("myName", name);
		return "Success";
	}
	    
	
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
		/* m.addAttribute("user",u);*/
		 
	
		 return new ModelAndView("Login");
	 }
	 @RequestMapping(value="/Login",method=RequestMethod.POST)
	 public String logincheck(@Valid @ModelAttribute("validate") User u,BindingResult result,Model model,@RequestParam("id") int id)
	 {
		 System.out.println("id value is" +id);
		 if(result.hasErrors())
		 {
			 return "Login";
		 }
		
			 
		 
		 return "Login";
	 }
	 
	
	 
@RequestMapping(value="/Profile")
	  public String Profilepage(Model m,User u,Principal p)
	  {
		/* System.out.println("userprofile name is" +u.getName());*/
	/*	User u= userService.getUserById(id);*/
		/*User u=userService.getUserByName(name);
	
		m.addAttribute("u",u);*/
		u=userService.getUserByName(p.getName());
		
		m.addAttribute("u",u);
		return "Profile";
		
	  }
		
	  
	 
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
	 

	 
	 
	 
	 
	 
 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	


