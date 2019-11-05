package com.ync.project.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminMemberController.java
 * @Date		: 2019. 11. 04. 
 * @Author		: 서영준
 * @프로그램 설명 : 회원 관리 페이지 호출용 controller
 */
@Controller
@Log4j
public class AdminMemberController {
	/**
	  * @Method 설명 : admin/member/list.jsp 호출
	  * @Method Name : AdminMemberList
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/member/list")
	public String AdminMemberList() {

		log.info("Member List get page!");
	
		return "admin/member/list";
	}
	
	/*
	 * @GetMapping("/list") public void list(Criteria cri, Model model) {
	 * 
	 * log.info("Member List get page!");
	 * 
	 * // 게시판의 글은 지속적으로 등록, 삭제 되기에 매번 list를 호출 할때 total을 구해와야 한다. int total =
	 * service.getTotal(cri); log.info("total: " + total);
	 * model.addAttribute("list", service.getListWithPaging(cri));
	 * model.addAttribute("pageMaker", new PageDTO(cri, total));
	 * 
	 * }
	 */
	
	/**
	  * @Method 설명 : admin/member/detail.jsp 호출
	  * @Method Name : AdminMemberDetail
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping(value = "/admin/member/detail")
	public String AdminMemberDetail() {

		log.info("Member Detail get page!");
	
		return "admin/member/detail";
	}
}
