

package com.ync.project.front.controller;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.MemberVO;
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
  
   /**
  * @Method 설명 : 마이페이지 내정보 보기
  * @Method Name : get
  * @Date : 2019. 11. 11.
  * @작성자 : 조중현
  * @param userid
  * @param model
  */
@GetMapping("/info")
  @PreAuthorize("isAuthenticated()")
  public void get(@RequestParam("userid") String userid, Model model) {
     log.info(service.info(userid).getUserpw());
     model.addAttribute("member", service.info(userid));
  }
  
 	@GetMapping(value = "/checkPwd")
 	@PreAuthorize("isAuthenticated()")
 	public void CheckPwd(@RequestParam("userid") String userid, Model model) {
 		model.addAttribute("member", service.info(userid));

 	}
// 	@PostMapping("/checkPwd")
// 	@PreAuthorize("isAuthenticated()")
// 	public String CheckPwd(@RequestParam("userid") String userid, MemberVO member,  RedirectAttributes rttr) {
// 		log.info("비밀번호 ");
// 		if(member.getUserpw() == service.info(userid).getUserpw()) {
// 			return "redirect:/front/myPage/modify";
// 		}
// 		else {
// 			log.info("비밀번호 ");
// 			return "redirect:/front/myPage/checkPwd?userid=" + userid;
// 		}
// 		
// 	}
 	
 	

 	 /**
 	  * @Method 설명 : 마이페이지 수정
 	  * @Method Name : Modify
 	  * @Date : 2019. 11. 11.
 	  * @작성자 : 조중현
 	  * @param userid
 	  * @param model
 	  */
 	@GetMapping(value = "/modify")
 	public void Modify(@RequestParam("userid") String userid, Model model) {
 		log.info("My info modify!!");
 		
 		model.addAttribute("member", service.info(userid));
 	}
 	
 	@PostMapping("/modify")
 	public String modify(MemberVO member, RedirectAttributes rttr) {
 		
 		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
 		
 		member.setUserpw(scpwd.encode(member.getUserpw()));
 		
 		if (service.updateUser(member)) {
 			rttr.addFlashAttribute("result", "success");
 		}
 		
 		return "redirect:/front/myPage/info?userid=" + member.getUserid();
 	}
 	
}