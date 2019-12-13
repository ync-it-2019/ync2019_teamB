package com.ync.project.front.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
  * @FileName	: MyMeetingListController.java
  * @Date		: 2019. 12. 9. 
  * @Author		: 조중현
  * @프로그램 설명 : 내가 가입한 모임 페이지 호출용 컨트롤러
  */
@Controller
@Log4j
@RequestMapping("/*")
@AllArgsConstructor
public class MyMeetingListController {
   private MeetingService service;
   private MemberService service2;
   private EventService service3;
   private NoticeService service4;
   

 /**
  * @Method 설명 : myMeeting.jsp 호출
  * @Method Name : list
  * @Date : 2019. 12. 11.
  * @작성자 : 조중현
  * @param principal
  * @param cri
  * @param model
  */

@GetMapping("/front/myMeeting")
   public void list(Principal principal, Criteria cri, Model model) {
	   log.info("list: " + cri);
	   String userid = principal.getName();
	   int total = service.getMyTotal(userid);
		log.info("total: " + total);
		String hobby = service2.info(userid).getHobby();
		String adress = service2.info(userid).getAdress();
		//모임 회원 수
		model.addAttribute("list4", service.MeetingMemberCount());
		//현재 로그인 한 사용자가 가입한 모임 목록
		model.addAttribute("list", service.getMyList(cri, userid));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		//진행 중인 이벤트 배너
		model.addAttribute("list2", service3.getList());
		//최근 공지사항 목록
		model.addAttribute("list3", service4.getList());
		//회원정보 창
	    model.addAttribute("member", service2.info(userid));
	    //추천 모임 목록
	    model.addAttribute("recomend", service.recommendedMeeting(hobby, adress));
   }
   
}
