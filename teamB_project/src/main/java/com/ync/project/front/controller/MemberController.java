package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.MemberService;

import lombok.extern.log4j.Log4j;

/**
 * @FileName	: MemberController.java
 * @Date		: 2019. 10. 21. 
 * @Author		: 서영준
 * @프로그램 설명 : 로그인 페이지 호출용 controller
 */
@Controller
@Log4j
@RequestMapping("/*")
public class MemberController {
	@Autowired
	
	private MemberService service;

	
	 /**
	  * @Method 설명 : 회원가입
	  * @Method Name : register
	  * @Date : 2019. 11. 11.
	  * @작성자 : 조중현
	  */
	@GetMapping("/register")
	public void register() {
	}
	
	@PostMapping("/register")
	public String register(MemberVO member, RedirectAttributes rttr) {
		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
		member.setUserpw(scpwd.encode(member.getUserpw()));
		log.info("register : " + member);
		service.register(member);
		return "redirect:/";
	}
	

	
	

}
