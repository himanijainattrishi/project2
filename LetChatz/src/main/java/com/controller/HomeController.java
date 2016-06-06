package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController
{
	
	
	@RequestMapping(value={"/","/index"})
	  public ModelAndView HomePage()
	  {
		 
		  ModelAndView model=new ModelAndView("index");
		  return model;
	  }
	/* @RequestMapping("/index")
	  public ModelAndView index()
	  {
		 
		  ModelAndView model=new ModelAndView("index");
		  return model;
	  }
	*/
	
	 @RequestMapping("/Contact")
	  public ModelAndView contactus()
	  {
		 
		  ModelAndView model=new ModelAndView("Contact");
		  return model;
	  }
	 @RequestMapping("/Success")
	  public ModelAndView Success()
	  {
		 
		  ModelAndView model=new ModelAndView("Success");
		  return model;
	  }
	

}