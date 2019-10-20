package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: MyPageController.java
  * @Date		: 2019. 10. 20. 
  * @Author		: 조중현
  * @프로그램 설명 : 마이페이지  호출용 컨트롤러
  */
@Controller
@Log4j
@RequestMapping("/front/myPage/")
public class MyPageController {

	@Autowired

	@GetMapping(value = "/info")
	public void MyPageInfo() {

		log.info("Mypage INfo!");
	
	}
	
	@GetMapping(value = "/checkPwd")
	public void CheckPwd() {
		log.info("Check Pwd!!");

	}
	
	@GetMapping(value = "/modify")
	public void Modify() {
		log.info("My info modify!!");
	}
}
