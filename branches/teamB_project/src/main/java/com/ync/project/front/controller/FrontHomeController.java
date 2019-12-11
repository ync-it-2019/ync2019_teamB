package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.EventService;
import com.ync.project.front.service.MeetingService;
import com.ync.project.front.service.MemberService;
import com.ync.project.front.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
  * @FileName	: HomeController.java
  * @Date		: 2019. 10. 16. 
  * @Author		: 정진우
  * @프로그램 설명 : 메인 페이지 호출용 controller
  */
@Controller
@Log4j
@AllArgsConstructor
public class FrontHomeController {
	private MeetingService service;
	private MemberService service2;
	private EventService service3;
	private NoticeService service4;
	

	 /**
	  * @Method 설명 : front/index.jsp 호출
	  * @Method Name : home
	  * @Date : 2019. 12. 11.
	  * @작성자 : 조중현
	  * @param model
	  * @return call jsp view
	  */
	@GetMapping(value = "/")
	public String home(Model model) {
		log.info("Welcome home!");
		//최근 공지사항 목록
		model.addAttribute("list3", service4.getList());
		//회원정보 창
		model.addAttribute("member", service2.getUserList());
		
		return "front/index";
	}
	
	
}
