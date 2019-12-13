package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.MemberService;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;

/**
 * @FileName	: MemberController.java
 * @Date		: 2019. 10. 21. 
 * @Author		: 서영준
 * @프로그램 설명 : 회원가입페이지 호출용 controller
 */
@Controller
@Log4j
@RequestMapping("/*")
public class MemberController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private MemberService service;

	
	 /**
	  * @Method 설명 :  front/register.jsp 호출
	  * @Method Name : register
	  * @Date : 2019. 11. 11.
	  * @작성자 : 조중현
	  */
	@GetMapping("/register")
	public void register() {
	}
	
	 /**
	  * @Method 설명 : 회원가입  POST
	  * @Method Name : register
	  * @Date : 2019. 12. 13.
	  * @작성자 : 조중현
	  * @param uploadFile
	  * @param member
	  * @param rttr
	  * @return call jsp view ("/")
	  */
	@PostMapping("/register")
	public String register(MultipartFile[] uploadFile, MemberVO member, RedirectAttributes rttr) {
		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
		member.setUserpw(scpwd.encode(member.getUserpw()));
		
		for (MultipartFile multipartFile : uploadFile) {
		// 실제로 upload된 file이 있을때만 upload 시킨다. 
		if (multipartFile.getSize() > 0) {
		
				member.setProfile(UploadUtils.uploadFormPost(multipartFile, uploadPath));

		}
	}
		log.info("register : " + member);
		service.register(member);
		return "redirect:/";
	}
	
	

	
	

}
