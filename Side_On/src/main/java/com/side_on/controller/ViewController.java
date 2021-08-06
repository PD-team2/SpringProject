package com.side_on.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ViewController {

	@RequestMapping("/register")
	public String Register() {
		return "member/register";
	}
	
	@RequestMapping("/findMemberList")
	public String FindMemberList() {
		return "member/findMemberList";
	}
	
	@RequestMapping("/findMemberForm")
	public String FindMemberForm() {
		return "member/FindMemberForm";
	}
}
