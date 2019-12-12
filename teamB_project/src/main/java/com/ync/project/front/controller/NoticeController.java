package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: NoticeController.java
  * @Date		: 2019. 12. 4. 
  * @Author		: 김상훈
  * @프로그램 설명 : 공지사항 호출용 컨트롤러
  */
@Controller
@Log4j
@RequestMapping("/front/*")
@AllArgsConstructor
public class NoticeController {
   private NoticeService service;
   
    /**
  * @Method 설명 : front/notice/list.jsp 호출
  * @Method Name : list
  * @Date : 2019. 12. 12.
  * @작성자 : 김상훈
  * @param cri
  * @param model
  */
@GetMapping("/notice/list")
   public void list(Criteria cri, Model model) {
	   log.info("list: " + cri);
	   int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
   }
   
    /**
  * @Method 설명 : front/notice/get.jsp 호출
  * @Method Name : get
  * @Date : 2019. 12. 12.
  * @작성자 : 김상훈
  * @param notice_num
  * @param cri
  * @param model
  */
@GetMapping("/notice/get")
   public void get(@RequestParam("notice_num") Long notice_num, @ModelAttribute("cri") Criteria cri, Model model) {
      log.info("get");
      model.addAttribute("board", service.read(notice_num));
   }
}
