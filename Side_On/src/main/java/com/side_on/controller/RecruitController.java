package com.side_on.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecruitController {
	
	@RequestMapping("/recruit/recruitHome")
	public String recruitHome() {
		
		return "recruit/recruitHome"; 
	}
	
	
}

