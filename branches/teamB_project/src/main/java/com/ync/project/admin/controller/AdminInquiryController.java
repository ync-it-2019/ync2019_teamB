package com.ync.project.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminInquiryController.java
 * @Date		: 2019. 11. 04. 
 * @Author		: 서영준
 * @프로그램 설명 : 1:1문의 관리 페이지 호출용 controller
 */
@Controller
@Log4j
public class AdminInquiryController {
	/**
	  * @Method 설명 : admin/inquiry/list.jsp 호출
	  * @Method Name : AdminInquiryList
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/inquiry/list")
	public String AdminInquiryList() {

		log.info("Inquiry List get page!");
	
		return "admin/inquiry/list";
	}
	
	/**
	  * @Method 설명 : admin/inquiry/detail.jsp 호출
	  * @Method Name : AdminInquiryDetail
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/inquiry/detail")
	public String AdminInquiryDetail() {

		log.info("Inquiry Detail get page!");
	
		return "admin/inquiry/detail";
	}
	
	/**
	  * @Method 설명 : admin/inquiry/create.jsp 호출
	  * @Method Name : AdminInquiryCreate
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/inquiry/create")
	public String AdminInquiryCreate() {

		log.info("Inquiry Create get page!");
	
		return "admin/inquiry/create";
	}
}
