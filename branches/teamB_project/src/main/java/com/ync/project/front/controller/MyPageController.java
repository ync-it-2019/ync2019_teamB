

package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.MemberService;
import com.ync.project.util.UploadUtils;

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

public class MyPageController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private MemberService service;
  
   /**
  * @Method 설명 : front/myPage/info.jsp 호출
  * @Method Name : info
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
  
 	 /**
 	  * @Method 설명 : front/myPage/modify.jsp 호출
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
 	public String modify(MultipartFile[] uploadFile, MemberVO member, RedirectAttributes rttr) {
 		
 		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
 		
 		member.setUserpw(scpwd.encode(member.getUserpw()));
 		
 		for (MultipartFile multipartFile : uploadFile) {
 			// 실제로 upload된 file이 있을때만 upload 시킨다. 
 			if (multipartFile.getSize() > 0) {
 			
 					member.setProfile(UploadUtils.uploadFormPost(multipartFile, uploadPath));

 			}
 		}
 		
 		if (service.updateUser(member)) {
 			rttr.addFlashAttribute("result", "success");
 		}
 		
 		return "redirect:/front/myPage/info?userid=" + member.getUserid();
 	}
 	
}