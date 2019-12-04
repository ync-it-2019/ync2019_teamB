package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;
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
		
		@Autowired
		private QuestionService service;
		
		@GetMapping(value = "/FAQ")
		public void FAQ() {
			log.info("FAQ!");
		}
		
		@GetMapping(value = "/myQuestion")
		public void myQuestion(Criteria cri, Model model) {
			log.info("List");
			log.info("cri: " + cri);
			int total = service.getTotal(cri);
			log.info("total: " + total);
			model.addAttribute("list", service.getListWithPaging(cri));
			model.addAttribute("pageMaker", new PageDTO(cri, total));
		}
		
		@GetMapping(value = "/write")
		public void questionWirte() {
			log.info("questionWirte!");
		}
		
		@GetMapping(value = "/get")
		public void questionGet(@RequestParam("question_num") Long question_num, Model model) {
			log.info("questionGet!");
			model.addAttribute("board", service.read(question_num));
		}
}
