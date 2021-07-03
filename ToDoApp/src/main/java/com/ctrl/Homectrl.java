package com.ctrl;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entities.*;

@Controller
public class Homectrl {
	
	@RequestMapping("/home")
	public String Home(Model m) {
		
		m.addAttribute("page", "home");
		return "home"; 
				
	}
	
	@RequestMapping("/food")
	public String food(Model m) {
		food f = new food();
		
		m.addAttribute("page", "food");
		m.addAttribute("Food",f);
		return "home"; 
				
	}
	
	@RequestMapping("/freshUp")
	public String freshUp(Model m) {
		freshUp fp = new freshUp();
		m.addAttribute("page", "freshUp");
		m.addAttribute("Fresh",fp);
		return "home"; 
				
	}
	@RequestMapping("/miscellaneous")
	public String miscellaneous(Model m) {
		miscellaneous misc = new miscellaneous();
		m.addAttribute("page", "miscellaneous");
		m.addAttribute("MISC",misc);
		return "home"; 
				
	}
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String Save(@ModelAttribute("Food") food f ,Model m) {
		return "home";
		
	}
	
	@RequestMapping(value="/submitt",method=RequestMethod.POST)
	public String Save(@ModelAttribute("Fresh") freshUp fp ,Model m) {
		return "home";
		
	}
	
	@RequestMapping(value="/submit",method=RequestMethod.POST)
	public String Save(@ModelAttribute("MISC") miscellaneous misc ,Model m) {
		return "home";
		
		
	}

	
}
