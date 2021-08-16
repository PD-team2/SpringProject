package com.side_on.controller;

import java.util.HashMap;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.side_on.dto.Member;
import com.side_on.dto.Notice;
import com.side_on.service.MemberService;
import com.side_on.service.NoticeService;

import lombok.extern.slf4j.Slf4j;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
@Slf4j
public class MemberController {

	@Autowired
	public NoticeService noticeService;
	
	@Autowired
	public MemberService memberService;
	
	@RequestMapping("/member/loginForm")
	public String loginForm() {
		log.debug("loginForm() Load :: ");
		return "member/loginForm";
	}
	
	@RequestMapping("/member/login")
	public String login(String memberId, String memberPw, HttpSession session) {
		log.debug("login user :: " + memberId + ", " + memberPw);

		String grade = memberService.login(memberId, memberPw);
		log.debug("login grade :: " + grade);

		Member dto = memberService.loginToMember(memberId, memberPw);		
		log.debug("dto :: " + dto);
		
		if(grade != null && dto != null) {
			session.setAttribute("memberId", memberId);
			session.setAttribute("grade", grade);
			session.setAttribute("dto", dto);
			if(grade.equals("A")) {
				log.debug("login admin Success :: ");
				return "admin/dashboard";
			} else {
				log.debug("login user Success :: ");
				return "main";
			}
		} else {
			log.debug("login Fail :: ");
			return "member/loginForm";
		}
	}

	@RequestMapping("/admin/dashboard")
	public String dashboard(Model model) {
		List<Notice> noticeList = noticeService.noticeList();
		model.addAttribute("noticeList", noticeList);
		return "admin/dashboard";
	}
	
	@RequestMapping("/member/deleteForm")
	public String deleteForm() {
		log.debug("deleteForm() Load :: ");
		return "member/deleteForm";
	}
	
	@RequestMapping("/member/deleteMember")
	public String deleteMember(String memberId, String memberPw) {
		log.debug("deleteMember Load :: ");
		log.debug(memberId + ", " + memberPw);
		boolean result = memberService.deleteMember(memberId, memberPw);
		if(result == true) {
			log.debug("deleteMember Success :: ");
			return "member/loginForm";
		} else {
			log.debug("deleteMember Fail :: ");
			return "member/deleteForm";
		}
	}
	
	@RequestMapping("/member/register")
	public String register() {
		log.debug("### register load :: ");
		return "member/register";
	}
	
	@RequestMapping("/member/registerDone")
	public String registerDone(Member dto, Model model) {
		log.info("### register :: ");
		log.debug("### " + dto);
		
		int result = memberService.addMember(dto);
		if (result == 1) {
			model.addAttribute("message", "[회원가입성공] 로그인 후 서비스 이용하세요");
			return "member/registerDone";
		} else {
			model.addAttribute("message", "[회원가입실패] 가입 정보를 다시 확인하시기 바랍니다.");
			return "main";
		}
	}
	
	@RequestMapping("/member/test")
	public String test() {
		log.debug("### test :: ");
		return "member/test";
	}

	
	@RequestMapping("/member/idCheck")
	public String idCheck() {
		log.debug("### idCheck :: ");
		return "member/idCheck";
	}
	 
	@RequestMapping("/member/mobile")
	public String sendMessage() {
		log.debug("### sendMessage :: ");
		return "/member/mobile";
	}
	
	/* 핸드폰 인증 컨트롤러 */
	@RequestMapping("/member/mobileCheck")
	public String sendMessageCheck() {
	    String api_key = "NCSVTX3TUWC2PTIE";
	    String api_secret = "WRWDWAIUWZNMA58CBDIG92B7EKOS5PNF";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", "01031856319");	// 수신전화번호
	    params.put("from", "01031856319");	// 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	    params.put("type", "SMS");
	    params.put("text", "인증번호는 [731126] 입니다.");
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	    }
		return "/member/mobile";
	}
}
