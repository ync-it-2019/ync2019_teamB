

package com.ync.project.front.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.front.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
/**
 * @FileName	: MyPageController.java
 * @Date		: 2019. 10. 20. 
 * @Author		: 조중현
 * @프로그램 설명 : 마이페이지  호출용 컨트롤러
 */
@Controller
@Log4j
@RequestMapping("/front/myPage/*")
@AllArgsConstructor
public class MyPageController {
  private MemberService service;
  
//  @GetMapping("/info")
//  public void list(Model model) {
//     log.info("list");
//     model.addAttribute("eventList", service.getUserList());
//  }
  
  @GetMapping("/info")
  public void get(@RequestParam("userid") String userid, Model model) {
     log.info("get");
     model.addAttribute("member", service.info(userid));
  }
  
 	@GetMapping(value = "/checkPwd")
 	public void CheckPwd() {
 		log.info("Check Pwd!!");

 	}
// 	
// 	@GetMapping(value = "/modify")
// 	public void Modify() {
// 		log.info("My info modify!!");
// 	}
}