package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.EventEndService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: EventEndController.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 종료된 이벤트 호출용 컨트롤러
  */
@Controller
@Log4j
@RequestMapping("/front/*")
@AllArgsConstructor
public class EventEndController {
   private EventEndService service;
   //종료된 이벤트 목록
   @GetMapping("/event/endList")
   public void endList(Criteria cri, Model model) {
      log.info("endList");
      int total = service.getTotal(cri);
	  log.info("total: " + total);
      model.addAttribute("eventEndList", service.getEndList(cri));
      model.addAttribute("pageMaker", new PageDTO(cri, total));
   }
}
