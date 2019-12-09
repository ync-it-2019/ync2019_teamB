package com.ync.project.admin.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

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

import com.ync.project.admin.service.AdminQuestionService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;
import com.ync.project.domain.QuestionVO;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminQuestionController.java
 * @Date		: 2019. 12. 08. 
 * @Author		: 서영준
 * @프로그램 설명 : 1:1문의 관리 페이지 호출용 controller
 */
@Controller
@Log4j
@RequestMapping("/admin/question/*")
public class AdminQuestionController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private AdminQuestionService service;
	
	Calendar cal = new GregorianCalendar();
	
	/**
	  * @Method 설명 : admin/question/list.jsp 호출
	  * @Method Name : AdminQuestionList
	  * @Date : 2019. 12. 08.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
//	@GetMapping("/list")
//	public void AdminQuestionList(Model model) {
//
//		log.info("Question List get page!");
//	
//		model.addAttribute("list", service.getList());
//	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);
		
		// 게시판의 글은 지속적으로 등록, 삭제 되기에 매번 list를 호출 할때 total을 구해와야 한다. 
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
//	/**
//	  * @Method 설명 : admin/question/detail.jsp 호출
//	  * @Method Name : AdminQuestionDetail
//	  * @Date : 2019. 12. 08.
//	  * @작성자 : 서영준
//	  * @return call jsp view
//	  */
//	@GetMapping("/detail")
//	public void AdminQuestionDetail(@RequestParam("question_num") Long question_num, @ModelAttribute("cri") Criteria cri, Model model) {
//
//		log.info("Question Detail get page!");
//		
//		model.addAttribute("question", service.read(question_num));
//	}
//	
//	/**
//	  * @Method 설명 : admin/question/create.jsp 호출
//	  * @Method Name : AdminQuestionCreate
//	  * @Date : 2019. 12. 08.
//	  * @작성자 : 서영준
//	  * @return call jsp view
//	  */
//	@GetMapping("/create")
//	public void AdminQuestionCreate(@ModelAttribute("cri") Criteria cri, Model model) {
//		log.info("Question Create get page!");
//	}
//	
//	/**
//	  * @Method 설명 : 파일 업로드 후 admin/question/list.jsp 호출
//	  * @Method Name : AdminQuestionCreate
//	  * @Date : 2019. 12. 08.
//	  * @작성자 : 서영준
//	  * @return redirect jsp view
//	  */
//	@PostMapping("/create")
//	public String AdminQuestionCreate(MultipartFile uploadFile, QuestionVO question, RedirectAttributes rttr) {
//		Date date = new Date(cal.getTimeInMillis());
//		
//		log.info("파일 이름: " + uploadFile.getOriginalFilename());
//		log.info("파일 크기: " + uploadFile.getSize());
//		log.info("컨텐트 타입: " + uploadFile.getContentType());
//		
//		// 실제로 upload된 file이 있을때만 upload 시킨다. 
//		if (uploadFile.getSize() > 0) {
//			question.setFiles(UploadUtils.uploadFormPost(uploadFile, uploadPath));
//		}
//						
//		question.setWrite_date(date);
//		
//		log.info("create: " + question);
//		log.info("Question Create Post page!");
//		service.register(question);
//		
//		rttr.addFlashAttribute("result", question.getQuestion_num());
//
//		return "redirect:/admin/question/list";
//		
//	}
}
