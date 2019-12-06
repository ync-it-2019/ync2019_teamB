package com.ync.project.front.controller;

import java.io.File;
import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.domain.QuestionVO;
import com.ync.project.front.service.MemberService;
import com.ync.project.front.service.QuestionService;
import com.ync.project.util.UploadUtils;

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
		
		@Value("${globalConfig.uploadPath}")
		private String uploadPath;
		
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
			log.info("write");
		}
		
		@PostMapping(value = "/write")
		public String uploadFormPost(MultipartFile uploadFile, Model model, QuestionVO question,  RedirectAttributes rttr) {
			
			log.info("파일 이름: " + uploadFile.getOriginalFilename());
			log.info("파일 크기: " + uploadFile.getSize());
			log.info("컨텐트 타입: " + uploadFile.getContentType());
			
			// 실제로 upload된 file이 있을때만 upload 시킨다. 
			if (uploadFile.getSize() > 0) {
				question.setFiles(UploadUtils.uploadFormPost(uploadFile, uploadPath));
			}
			
			log.info("write: " + question);
			log.info("Question Write!");
			service.register(question);
			
			rttr.addFlashAttribute("result", question.getQuestion_num());

			return "redirect:/front/question/myQuestion";
		}
		
		@GetMapping(value = "/get")
		public void questionGet(@RequestParam("question_num") Long question_num, Model model) {
			log.info("question Get!");
			model.addAttribute("question", service.read(question_num));
		}
		
		@GetMapping(value = "/modify")
		public void AdminEventModify() {

			log.info("question Modify!");
			
		}
}
