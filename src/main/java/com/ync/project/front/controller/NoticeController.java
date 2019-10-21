package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

	 /**
	  * @FileName	: NoticeController.java
	  * @Date		: 2019. 10. 20. 
	  * @Author		: 김상훈
	  * @프로그램 설명 : 공지사항 호출용 컨트롤러
	  */
	@Controller
	@Log4j
	@RequestMapping("/front/notice/")
public class NoticeController {

		@Autowired
		@GetMapping(value = "/list")
		public void NoticeList() {
			log.info("noticeList!");
		}
		
		@GetMapping(value = "/get")
		public void NoticeGet() {
			log.info("noticeGet!");

		}
		
}
