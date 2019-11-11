package com.ync.project.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ync.project.admin.service.AdminEventService;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminEventController.java
 * @Date		: 2019. 11. 04. 
 * @Author		: 서영준
 * @프로그램 설명 : 이벤트 관리 페이지 호출용 controller
 */
@Controller
@Log4j
@RequestMapping("/admin/event/*")
public class AdminEventController {
	
	@Autowired
	private AdminEventService service;
	
	/**
	  * @Method 설명 : admin/event/list.jsp 호출
	  * @Method Name : AdminEventList
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/list")
	public void AdminEventList(Model model) {

		log.info("Event List get page!");
	
		model.addAttribute("list", service.getList());
	}
	
	/**
	  * @Method 설명 : admin/event/detail.jsp 호출
	  * @Method Name : AdminEventDetail
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/event/detail")
	public String AdminEventDetail() {

		log.info("Event Detail get page!");
	
		return "admin/event/detail";
	}
	
	/**
	  * @Method 설명 : admin/event/create.jsp 호출
	  * @Method Name : AdminEventCreate
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/event/create")
	public String AdminEventCreate() {

		log.info("Event Create get page!");
	
		return "admin/event/create";
	}
	
	/**
	  * @Method 설명 : admin/event/modify.jsp 호출
	  * @Method Name : AdminEventModify
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/event/modify")
	public String AdminEventModify() {

		log.info("Event Modify get page!");
	
		return "admin/event/modify";
	}
}
