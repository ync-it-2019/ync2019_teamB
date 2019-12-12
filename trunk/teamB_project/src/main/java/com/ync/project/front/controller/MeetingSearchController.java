package com.ync.project.front.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.EventService;
import com.ync.project.front.service.MeetingService;
import com.ync.project.front.service.MemberService;
import com.ync.project.front.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: MeetingSearchController.java
  * @Date		: 2019. 10. 20. 
  * @Author		: 조중현
  * @프로그램 설명 : 모임찾기페이지 호출용 컨트롤러
  */
@Controller
@Log4j
@RequestMapping("/*")
@AllArgsConstructor
public class MeetingSearchController {
	@Autowired
	
	private MeetingService service;
	private MemberService service2;
	private EventService service3;
	private NoticeService service4;
	

	 /**
	  * @Method 설명 : meetingSerach.jsp 호출
	  * @Method Name : MeetingSearchPage
	  * @Date : 2019. 12. 11.
	  * @작성자 : 조중현
	  * @param cri
	  * @param model
	  * @param vo
	  * @param request
	  */
	@GetMapping("/front/meetingSearch")
	public void MeetingSearchPage(Criteria cri, Model model, MemberVO vo, HttpServletRequest request) {
		log.info("list: " + cri);
		int total = service.getTotal(cri);
		log.info("total: " + total);

		//모임 목록
		model.addAttribute("list", service.getListWithPaging(cri));
		//모임 회원수
		model.addAttribute("list2", service.MeetingMemberCount());
		model.addAttribute("pageMaker", new PageDTO(cri, total));
//		//최근 공지사항 목록
		model.addAttribute("list3", service4.getList());
		//진행 중인 이벤트 배너
		model.addAttribute("list4", service3.getList());
		//회원정보 창

		model.addAttribute("member", service2.getUserList());

	}
	
	
	
}
