package com.side_on.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoardController {
	@RequestMapping("/board/Mypage")
	public String Mypage() {
	
		return "board/Mypage";
	}
	
	@RequestMapping("/board/FaQBoard")
	public String FaQBoard() {
	
		return "board/FaQBoard";
	}
	
	@RequestMapping("/board/contactEmail")
	public String contactEmail() {
	
		return "board/contactEmail";
	}
	
	@RequestMapping("/board/contactResult")
	public String contactResult() {
	
		return "board/contactResult";
	}
	
	@RequestMapping("/board/chat")
	public String chat() {
	
		return "board/chat";
	}
}
