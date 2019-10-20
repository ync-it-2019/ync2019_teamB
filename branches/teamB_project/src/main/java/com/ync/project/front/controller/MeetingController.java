package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: MeetingController.java
  * @Date		: 2019. 10. 20. 
  * @Author		: 조중현
  * @프로그램 설명 : 소모임 호출용 컨트롤러
  */
@RequestMapping("front/meeting/")
@Controller
@Log4j

public class MeetingController {

	//소모임 메인화면
	@GetMapping(value = "/main")
	public void main() {

		log.info("Meeting Info page!");

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
