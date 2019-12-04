package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.MeetingService;
import com.ync.project.front.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/*")
@AllArgsConstructor
public class MyMeetingListController {
   private MeetingService service;
   private MemberService service2;
   
   @GetMapping("/front/myMeeting")
   public void list(@RequestParam("userid") String userid,Criteria cri, Model model) {
	   log.info("list: " + cri);
	   int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getMyList(cri, userid));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		log.info(service2.info(userid).getUserpw());
	     model.addAttribute("member", service2.info(userid));
   }
   
}
