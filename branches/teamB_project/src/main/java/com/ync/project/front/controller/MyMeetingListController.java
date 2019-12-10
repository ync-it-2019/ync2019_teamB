package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.domain.Criteria;
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
  * @Method 설명 : myMeeting.jsp호출용 메소드
  * @Method Name : list
  * @Date : 2019. 12. 9.
  * @작성자 : 조중현
  * @param userid
  * @param cri
  * @param model
  */
@GetMapping("/front/myMeeting")
   public void list(@RequestParam("userid") String userid,Criteria cri, Model model) {
	   log.info("list: " + cri);
	   int total = service.getMyTotal(userid);
		log.info("total: " + total);
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
   }
   
}
