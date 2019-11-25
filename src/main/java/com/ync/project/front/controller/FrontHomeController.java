package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.MemberService;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: HomeController.java
  * @Date		: 2019. 10. 16. 
  * @Author		: 정진우
  * @프로그램 설명 : 메인 페이지 호출용 controller
  */
@Controller
@Log4j
public class FrontHomeController {
	private MemberService service;
	
	/**
	  * @Method 설명 : front/index.jsp 호출
	  * @Method Name : home
	  * @Date : 2019. 10. 16.
	  * @작성자 : 정진우
	  * @return call jsp view
	  */
	@GetMapping(value = "/")
	public String home() {

		log.info("Welcome home!");
	
		return "front/index";
	}
	
	
}
