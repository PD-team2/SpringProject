package com.side_on.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.side_on.dto.Rest;
import com.side_on.service.RestService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class RestController {

	@Autowired
	public RestService restService;
	
	@RequestMapping("/rest/restList")
	public String restList(Model model) {
		List<Rest> restList = restService.restList();
		model.addAttribute("restList", restList);
		return "rest/restList";
	}
	
	@RequestMapping("/rest/restManageModal")
	public String restManageModal(String restNo, String restResult) {
		log.debug(restNo + " / " + restResult);
		restService.restManageModal(restNo, restResult);
		return "rest/restList";
	}
	
}
