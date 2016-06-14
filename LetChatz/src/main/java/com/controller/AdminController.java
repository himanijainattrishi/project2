package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class AdminController {
	
	 @RequestMapping("/Admin")
	  public ModelAndView contactvus()
	  {
		 
		  ModelAndView model=new ModelAndView("Admin");
		  return model;
	  }
}
