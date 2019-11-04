package com.ync.project.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminNoticeController.java
 * @Date		: 2019. 11. 04. 
 * @Author		: 서영준
 * @프로그램 설명 : 공지사항 관리 페이지 호출용 controller
 */
@Controller
@Log4j
public class AdminNoticeController {
	/**
	  * @Method 설명 : admin/notice/list.jsp 호출
	  * @Method Name : AdminNoticeList
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/notice/list")
	public String AdminNoticeList() {

		log.info("Notice List get page!");
	
		return "admin/notice/list";
	}
	
	/**
	  * @Method 설명 : admin/notice/detail.jsp 호출
	  * @Method Name : AdminNoticeDetail
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/notice/detail")
	public String AdminNoticeDetail() {

		log.info("Notice Detail get page!");
	
		return "admin/notice/detail";
	}
}
