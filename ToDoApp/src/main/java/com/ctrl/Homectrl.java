package com.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Homectrl {
	
	@RequestMapping("/home")
	public String Home(Model m) {
		
		m.addAttribute("page", "food");
		return "home"; 
				
	}
	@RequestMapping("/freshUp")
	public String freshUp(Model m) {
		
		m.addAttribute("page", "freshUp");
		return "home"; 
				
	}
	@RequestMapping("/miscellaneous")
	public String miscellaneous(Model m) {
		
		m.addAttribute("page", "miscellaneous");
		return "home"; 
				
	}
	

}
