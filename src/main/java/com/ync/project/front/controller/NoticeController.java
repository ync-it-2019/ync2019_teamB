package com.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
@AllArgsConstructor
public class NoticeController {
   private NoticeService service;
   
   @GetMapping("/notice/list")
   public void list(Criteria cri, Model model) {
	   log.info("list: " + cri);
	   int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
   }
   
   @GetMapping("/notice/get")
   public void get(@RequestParam("notice_num") Long notice_num, Model model) {
      log.info("get");
      model.addAttribute("board", service.read(notice_num));
   }
}
