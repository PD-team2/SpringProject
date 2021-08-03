package com.work;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExampleController {

	@RequestMapping("/")
	public String home(HttpServletRequest request) {
		ServletContext application = request.getServletContext();
		String path = application.getContextPath();
		application.setAttribute("path", path);
		return "recruitHome";
	}
	
	
	@RequestMapping("/recruit/recruitHome")
	public String recruitHome() {
		
		return "recruit/recruitHome"; 
	}
	
}
