package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
   
   @GetMapping("/event/list")
   public void list(Model model) {
      log.info("list");
      model.addAttribute("eventList", service.getList());
   }
   
   @GetMapping("/event/endList")
   public void endList(Model model) {
      log.info("endList");
      model.addAttribute("eventEndList", service.getList());
   }
   
   @GetMapping("/event/get")
   public void get(@RequestParam("event_num") Long event_num, Model model) {
      log.info("get");
      model.addAttribute("board", service.read(event_num));
   }
}
