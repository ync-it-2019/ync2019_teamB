package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: MyMeetingListController.java
  * @Date		: 2019. 10. 20. 
  * @Author		: 조중현
  * @프로그램 설명 : 내 소모임 페이지 호출용 컨트롤러
  */
@Controller
@Log4j
@RequestMapping("/")
public class MyMeetingListController {
	@Autowired

	@GetMapping(value = "/front/myMeeting")
	public void MyMeetingList() {

		log.info("My MeetingList page!");
	
	}
}
