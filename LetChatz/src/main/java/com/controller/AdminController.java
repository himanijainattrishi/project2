package com.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.model.User;
import com.model.User_Roles;
import com.service.BlogService;
import com.service.UserService;
import com.model.Blog;
import com.model.Contact;
import com.google.gson.Gson;
@Controller
public class AdminController {
	
	@Autowired
	  UserService userService;
	@Autowired
	BlogService blogservice;
	
	 @RequestMapping("/Admin")
	  public ModelAndView Admin(Model m)
	  {int user=0,blog=0,message=0;
	List<User> l=userService.getAllUsers();
	List<Contact>c=userService.getAllCustomer();
	List<Blog>b=blogservice.getAllBlog();
	for(Object o:l)
	{
		user++;
	}
	for(Object o1:b)
	{
		blog++;
	}
	for(Object o2:c)
	{
		message++;
	}
	m.addAttribute("user",user);
	m.addAttribute("blog",blog);
	m.addAttribute("message",message);
		 
		  ModelAndView model=new ModelAndView("Admin");
		  return model;
	  }
	 @RequestMapping("/Blog")
	  public String Blog()
	  {
		 List<Blog> retrive=new ArrayList<Blog>();
		
         
		 return "Blog";
	  }
	 
	 @RequestMapping("/angular")
	  public ModelAndView  aBlog(Principal p)
	  {
		
		 List<Blog> retrive=new ArrayList<Blog>();
			
		 List<Blog>l= blogservice.getAllBlog();
		
		Iterator i=l.iterator();
		while(i.hasNext())
		{
		Blog b1=(Blog)i.next();
		System.out.println(b1.getContent());
		if(b1.getUser().equals(p.getName()))
		{
			System.out.println(b1.getContent());
			
			System.out.println(b1.getUser());
			System.out.println(p.getName());
			retrive.add(b1);
		}
		}
		 String json = new Gson().toJson(retrive);
       
         
         ModelAndView mv=new ModelAndView("angular");
         mv.addObject("access",json);
		 
		  return mv;
	  }
	 
	@RequestMapping(value="/addblog",method=RequestMethod.POST)
	  public String NewBlog(@ModelAttribute("blog") Blog b,Model m,Principal p)
	  {
		
        Date d=new Date();
			b.setDate(d);
			b.setUser(p.getName());
			blogservice.addBlog(b);
			 m.addAttribute("blog", b);
		 
		  return "Blog";
	  }
	 @RequestMapping("/AllUser")
	  public String ViewAllUser(Model model)
	  {
		
		     
				List<User> users=userService.getAllUsers();
			
				model.addAttribute("users", users);
				return "AllUser";
		 
		 
	  }
	 
	 
	 @RequestMapping("/ViewBlog")
	  public ModelAndView viewBlog(Model m)
	  {
		/*List<Blog>l= blogservice.getAllBlog();
		
		 m.addAttribute("blog",l);
		  return "ViewBlog";*/
	 Gson gson=new Gson();
		 
		 List<Blog>l= blogservice.getAllBlog();
		 String json=gson.toJson(l);
		 ModelAndView model=new ModelAndView("ViewBlog");
		 model.addObject("blog",json);
		  return model;
	  }
	 
	 
	 
	 
	 
	
	
	 @RequestMapping("/remove/{id}")
	   public String removeProduct(@PathVariable("id") int id){
	        
	     userService.removeproduct(id);
	     System.out.println("id remove is"+id);
	       return "redirect:/AllUser";
	   }
	 @RequestMapping("/delete/{id}")
	   public String removecontact(@PathVariable("id") int id){
	        
	     userService.removecontact(id);
	     System.out.println("id remove is"+id);
	       return "redirect:/viewContact";
	   }
	 
	 
	 @RequestMapping(value= "/Contact")
	 public String ContactUs(Model m)
		{
		
			Contact u=new Contact();
		
		System.out.println("Contact");
			m.addAttribute("user", u);
			 return "Contact";
		}
	 
	 
	 @RequestMapping(value="/Contact", method=RequestMethod.POST)
		public String addCustomer( @ModelAttribute("user") Contact u,HttpServletRequest request,Model model)
			{
		userService.addCustomer(u);
		
			
	    return "redirect:/index";
			
		}
	 @RequestMapping("/viewContact")
	  public String viewContact(Model m)
	  {
		List<Contact>l= userService.getAllCustomer();
		
		 m.addAttribute("customer",l);
		  return "viewContact";
	  }
	 @RequestMapping("/ChatForum")
	 public String chatforum()
	 {
		 return "ChatForum";
	 }
	 
			

	 
	 
	
	 
	 
}
