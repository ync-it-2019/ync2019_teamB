package com.ync.project.front.controller;

import java.security.Principal;

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
import com.ync.project.domain.PageDTO;
import com.ync.project.domain.QuestionVO;
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
		
		 /**
		  * @Method 설명 : front/question/FAQ.jsp 호출
		  * @Method Name : FAQ
		  * @Date : 2019. 12. 12.
		  * @작성자 : 김상훈
		  */
		@GetMapping(value = "/FAQ")
		public void FAQ() {
			log.info("FAQ!");
		}
		
		 /**
		  * @Method 설명 : front/question/myQuestion.jsp 호출
		  * @Method Name : myQuestion
		  * @Date : 2019. 12. 12.
		  * @작성자 : 김상훈
		  * @param cri
		  * @param model
		  * @param principal
		  */
		@GetMapping(value = "/myQuestion")
		public void myQuestion(Criteria cri, Model model, Principal principal) {
			log.info("cri: " + cri);
			String userid = principal.getName();
			int total = service.getTotal(cri, userid);
			log.info("total: " + total);
			log.info(principal.getName());
			model.addAttribute("list", service.getListWithPaging(cri, userid));
			model.addAttribute("pageMaker", new PageDTO(cri, total));
		}
		
		 /**
		  * @Method 설명 : front/question/write.jsp 호출
		  * @Method Name : questionWirte
		  * @Date : 2019. 12. 12.
		  * @작성자 : 김상훈
		  */
		@GetMapping(value = "/write")
		public void questionWirte() {
			log.info("write");
		}
		
		 /**
		  * @Method 설명 : front/question/write.jsp에 필요한 데이터 POST
		  * @Method Name : uploadFormPost
		  * @Date : 2019. 12. 12.
		  * @작성자 : 김상훈
		  * @param uploadFile
		  * @param question
		  * @param rttr
		  * @return redirect:/front/question/myQuestion
		  */
		@PostMapping(value = "/write")
		public String uploadFormPost(MultipartFile uploadFile, QuestionVO question, RedirectAttributes rttr) {
			
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
		
		 /**
		  * @Method 설명 : front/question/get.jsp, front/question/modify.jsp 호출
		  * @Method Name : questionGet
		  * @Date : 2019. 12. 12.
		  * @작성자 : 김상훈
		  * @param question_num
		  * @param cri
		  * @param model
		  */
		@GetMapping({"/get","/modify"})
		public void questionGet(@RequestParam("question_num") Long question_num, @ModelAttribute("cri") Criteria cri, Model model) {
			log.info("Get or Modify!");
			model.addAttribute("question", service.read(question_num));
		}
		
		 /**
		  * @Method 설명 : front/question/modify.jsp에 필요한 데이터 POST
		  * @Method Name : modify
		  * @Date : 2019. 12. 12.
		  * @작성자 : 김상훈
		  * @param question
		  * @param cri
		  * @param rttr
		  * @return
		  */
		@PostMapping("/modify")
		public String modify(QuestionVO question, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
			log.info("modify:" + question);

			if (service.modify(question)) {
				rttr.addFlashAttribute("result", "success");
			}

			return "redirect:/front/question/myQuestion" + cri.getListLink();
		}
}
