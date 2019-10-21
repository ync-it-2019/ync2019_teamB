package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: MeetingSearchController.java
  * @Date		: 2019. 10. 20. 
  * @Author		: 조중현
  * @프로그램 설명 : 모임찾기페이지 호출용 컨트롤러
  */
@Controller
@Log4j
@RequestMapping("/")
public class MeetingSearchController {
	@Autowired
	 /**
	  * @Method 설명 : MeetingSerach page Design
	  * @Method Name : MeetingSerach
	  * @Date : 2019. 10. 19.
	  * @작성자 : 조중현
	  * @return
	  */
	@GetMapping(value = "front/meetingSearch")
	public void MeetingSearchPage() {

		log.info("Meeting Search page!");

	}
}
