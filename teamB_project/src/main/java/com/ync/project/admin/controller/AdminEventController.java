package com.ync.project.admin.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.admin.service.AdminEventService;
import com.ync.project.domain.EventVO;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminEventController.java
 * @Date		: 2019. 11. 04. 
 * @Author		: 서영준
 * @프로그램 설명 : 이벤트 관리 페이지 호출용 controller
 */
@Controller
@Log4j
@RequestMapping("/admin/event/*")
public class AdminEventController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private AdminEventService service;
	
	Calendar cal = new GregorianCalendar();
	
	/**
	  * @Method 설명 : admin/event/list.jsp 호출
	  * @Method Name : AdminEventList
	  * @Date : 2019. 11. 11.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/list")
	public void AdminEventList(Model model) {

		log.info("Event List get page!");
	
		model.addAttribute("list", service.getList());
	}
	
	/**
	  * @Method 설명 : admin/event/detail.jsp 호출
	  * @Method Name : AdminEventDetail
	  * @Date : 2019. 11. 11.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/detail")
	public void AdminEventDetail(@RequestParam("event_num") Long event_num, Model model) {

		log.info("Event Detail get page!");
		
		model.addAttribute("event", service.read(event_num));
	}
	
	/**
	  * @Method 설명 : admin/event/create.jsp 호출
	  * @Method Name : AdminEventCreate
	  * @Date : 2019. 11. 11.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/create")
	public void AdminEventCreate() {
		log.info("Event Create get page!");
	}
	
	/**
	  * @Method 설명 : 파일 업로드 후 admin/event/list.jsp 호출
	  * @Method Name : AdminEventCreate
	  * @Date : 2019. 11. 11.
	  * @작성자 : 서영준
	  * @return redirect jsp view
	  */
	@PostMapping("/create")
	public String AdminEventCreate(MultipartFile uploadFile, EventVO event, RedirectAttributes rttr) {
		Date date = new Date(cal.getTimeInMillis());
		
		log.info("파일 이름: " + uploadFile.getOriginalFilename());
		log.info("파일 크기: " + uploadFile.getSize());
		log.info("컨텐트 타입: " + uploadFile.getContentType());
		
		// 실제로 upload된 file이 있을때만 upload 시킨다. 
		if (uploadFile.getSize() > 0) {
			event.setImage(UploadUtils.uploadFormPost(uploadFile, uploadPath, event));
		}
						
		event.setWrite_date(date);
		
		log.info("create: " + event);
		log.info("Event Create Post page!");
		service.register(event);
		
		rttr.addFlashAttribute("result", event.getEvent_num());

		return "redirect:/admin/event/list";
		
	}
	
	/**
	  * @Method 설명 : admin/event/modify.jsp 호출
	  * @Method Name : AdminEventModify
	  * @Date : 2019. 11. 11.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/modify")
	public void AdminEventModify(@RequestParam("event_num") Long event_num, Model model) {

		log.info("Event Modify get page!");
	
		model.addAttribute("event", service.read(event_num));
		
		
	}
	
}
