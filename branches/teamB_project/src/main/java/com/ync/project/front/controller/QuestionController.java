package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ync.project.front.service.QuestionService;

import lombok.extern.log4j.Log4j;

/**
  * @FileName	: QuestionController.java
  * @Date		: 2019. 10. 20. 
  * @Author		: 김상훈
  * @프로그램 설명 : 고객센터 호출용 컨트롤러
  */
	@Controller
	@Log4j
	@RequestMapping("/front/question/")
public class QuestionController {
		private QuestionService service;
		@Autowired
		@GetMapping(value = "/FAQ")
		public void FAQ() {
			log.info("FAQ!");
		}
		
		@GetMapping(value = "/myQuestion")
		public void myQuestion(Model model) {
			log.info("list");
		      model.addAttribute("myQuestion", service.getList());
		}
		
		@GetMapping(value = "/write")
		public void questionWirte() {
			log.info("questionWirte!");
		}
		
		@GetMapping(value = "/get")
		public void questionGet() {
			log.info("questionGet!");
		}
}
