package com.ync.project.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminMeetingController.java
 * @Date		: 2019. 11. 04. 
 * @Author		: 서영준
 * @프로그램 설명 : 모임 관리 페이지 호출용 controller
 */
@Controller
@Log4j
public class AdminMeetingController {
	/**
	  * @Method 설명 : admin/meeting/list.jsp 호출
	  * @Method Name : AdminMeetingList
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/meeting/list")
	public String AdminMeetingList() {

		log.info("Meeting List get page!");
	
		return "admin/meeting/list";
	}
	
	/**
	  * @Method 설명 : admin/meeting/detail.jsp 호출
	  * @Method Name : AdminMeetingDetail
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/meeting/detail")
	public String AdminMeetingDetail() {

		log.info("Meeting Detail get page!");
	
		return "admin/meeting/detail";
	}
}
