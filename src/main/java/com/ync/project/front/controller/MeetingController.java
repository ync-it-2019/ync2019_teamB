package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.front.service.MeetingMainService;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: MeetingController.java
  * @Date		: 2019. 10. 20. 
  * @Author		: 조중현
  * @프로그램 설명 : 소모임 호출용 컨트롤러
  */
@RequestMapping("front/meeting/*")
@Controller
@Log4j
public class MeetingController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private MeetingMainService service;
	
	//소모임 메인화면
	@GetMapping(value = "/main")
	public void main(Model model, @RequestParam("meeting_num") int meeting_num) {

		log.info("Meeting Info page!");
		
		model.addAttribute("getInfo", service.getInfo(meeting_num));
		
		model.addAttribute("getAppointment", service.getAppointment(meeting_num));
		
		model.addAttribute("getMemberList", service.getMemberList(meeting_num));

	}
	
	//소모임 게시판 리스트
	@GetMapping(value = "/board/list")
	public void BoardList() {
		log.info("Meeting board list page!");
	}
	
	//소모임 게시판 보기
	@GetMapping(value = "/board/get")
	public void BoardGet() {
		log.info("Meeting board get page!");
	}
	
	//소모임 게시판 쓰기
		@GetMapping(value = "/board/write")
		public void boardWrite() {
			log.info("Meeting board write page!");
		}
	
	//소모임 정모게시판 리스트
	@GetMapping(value = "/appointment/list")
	public void appointmentList() {
		log.info("Meeting appointment get page!");
	}
	
	//소모임 정모게시판 보기
	@GetMapping(value = "/appointment/get")
	public void appointmentGet() {
		log.info("Meeting appointment get page!");
	}
	
	//소모임 정모게시판 쓰기
		@GetMapping(value = "/appointment/write")
		public void appointmentWrite() {
			log.info("Meeting appointment write page!");
		}
	
}
