package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

	 /**
	  * @FileName	: EventController.java
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 김상훈
	  * @프로그램 설명 : 이벤트 호출용 컨트롤러
	  */
	@Controller
	@Log4j
	@RequestMapping("/front/event/")
public class EventController {
		@Autowired
		@GetMapping(value = "/list")
		public void evnetList() {
			log.info("eventList!");
		}
		
		@GetMapping(value = "/endList")
		public void eventEndList() {
			log.info("eventList!");
		}
		
		@GetMapping(value = "/get")
		public void evnetGet() {
			log.info("notice get!");

		}
}
