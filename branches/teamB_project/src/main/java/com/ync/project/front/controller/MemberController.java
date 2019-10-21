package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

/**
 * @FileName	: MemberController.java
 * @Date		: 2019. 10. 21. 
 * @Author		: 서영준
 * @프로그램 설명 : 로그인 페이지 호출용 controller
 */
@Controller
@Log4j
@RequestMapping("/")
public class MemberController {
	
	@Autowired

	//로그인 화면
	@GetMapping(value = "/login")
	public void loginPage() {
		log.info("login page!");

	}
	
	//회원가입 화면
	@GetMapping(value = "/register")
	public void registerPage() {
		log.info("register page!");

	}
}
