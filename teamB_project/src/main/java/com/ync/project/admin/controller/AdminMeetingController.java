package com.ync.project.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.admin.service.AdminMeetingService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingMemberCriteria;
import com.ync.project.domain.PageDTO;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminMeetingController.java
 * @Date		: 2019. 11. 04. 
 * @Author		: 서영준
 * @프로그램 설명 : 모임 관리 페이지 호출용 controller
 */
@Controller
@Log4j
@RequestMapping("/admin/meeting/*")
public class AdminMeetingController {
	
	@Autowired
	private AdminMeetingService service;
	
	/**
	  * @Method 설명 : admin/meeting/list.jsp 호출
	  * @Method Name : AdminMeetingList
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/list")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void AdminMeetingList(Criteria cri, Model model) {

		log.info("Meeting List get page!");
		
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	
	}
	
	/**
	  * @Method 설명 : admin/meeting/detail.jsp 호출
	  * @Method Name : AdminMeetingDetail
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/detail")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void AdminMeetingDetail(@RequestParam("meeting_num") Long meeting_num, @ModelAttribute("cri") Criteria cri, @ModelAttribute("mcri") MeetingMemberCriteria mcri, Model model) {

		log.info("Meeting Detail get page!");
		
		int member_cnt = service.getMemberCnt(meeting_num);
		
		//모임 정보
		model.addAttribute("meeting", service.read(meeting_num));
		
		//회원 수
		model.addAttribute("member_count", member_cnt);
		
		//회원 아이디
		model.addAttribute("member_info",service.getMemberInfo(mcri, meeting_num));
		
		//맴버 페이징
		model.addAttribute("pageMaker", new PageDTO(mcri, member_cnt));
		
		log.info(mcri.getListLink());
	}
}
