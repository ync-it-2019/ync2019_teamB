package com.ync.project.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminManagerController.java
 * @Date		: 2019. 11. 04. 
 * @Author		: 서영준
 * @프로그램 설명 : 관리자 계정 관리 페이지 호출용 controller
 */
@Controller
@Log4j
public class AdminManagerController {
	
	/**
	  * @Method 설명 : admin/manager/create.jsp 호출
	  * @Method Name : AdminManagerCreate
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/manager/create")
	public String AdminManagerCreate() {

		log.info("Manager Create get page!");
	
		return "admin/manager/create";
	}
	
	/**
	  * @Method 설명 : admin/manager/list.jsp 호출
	  * @Method Name : AdminManagerList
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/manager/list")
	public String AdminManagerList() {

		log.info("Manager List get page!");
	
		return "admin/manager/list";
	}
	
	/**
	  * @Method 설명 : admin/manager/detail.jsp 호출
	  * @Method Name : AdminManagerDetail
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/manager/detail")
	public String AdminManagerDetail() {

		log.info("Manager Detail get page!");
	
		return "admin/manager/detail";
	}
	
	/**
	  * @Method 설명 : admin/manager/modify.jsp 호출
	  * @Method Name : AdminManagerModify
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/manager/modify")
	public String AdminManagerModify() {

		log.info("Manager Modify get page!");
	
		return "admin/manager/modify";
	}
}
