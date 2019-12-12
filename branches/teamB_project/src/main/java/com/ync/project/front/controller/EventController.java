package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.EventService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: EventController.java
  * @Date		: 2019. 11. 5. 
  * @Author		: 김상훈
  * @프로그램 설명 : 이벤트 호출용 컨트롤러
  */
@Controller
@Log4j
@RequestMapping("/front/*")
@AllArgsConstructor
public class EventController {
   private EventService service;
   
    /**
  * @Method 설명 : front/event/list.jsp 호출
  * @Method Name : list
  * @Date : 2019. 12. 12.
  * @작성자 : 김상훈
  * @param cri
  * @param model
  */
@GetMapping("/event/list")
   public void list(MultipartFile uploadFile, Criteria cri, Model model) {
	   log.info("List");
	   cri.setAmount(9);
	   int total = service.getTotal(cri);
	   log.info("total: " + total);
	   model.addAttribute("eventList", service.getListWithPaging(cri));
	   model.addAttribute("pageMaker", new PageDTO(cri, total));
   }
   
    /**
  * @Method 설명 : front/event/get.jsp 호출
  * @Method Name : get
  * @Date : 2019. 12. 12.
  * @작성자 : 김상훈
  * @param event_num
  * @param model
  */
@GetMapping("/event/get")
   public void get(MultipartFile uploadFile, @RequestParam("event_num") Long event_num, @ModelAttribute("cri") Criteria cri, Model model) {
      log.info("get");
      model.addAttribute("board", service.read(event_num));
   }
}
