package com.ync.project.admin.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.admin.service.AdminNoticeService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminNoticeController.java
 * @Date		: 2019. 12. 08. 
 * @Author		: 서영준
 * @프로그램 설명 : 공지사항 관리 페이지 호출용 controller
 */
@Controller
@Log4j
@RequestMapping("/admin/notice/*")
public class AdminNoticeController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private AdminNoticeService service;
	
	Calendar cal = new GregorianCalendar();

//	@GetMapping("/list")
//	public void AdminNoticeList(Model model) {
//
//		log.info("Notice List get page!");
//	
//		model.addAttribute("list", service.getList());
//	}
	
	/**
	  * @Method 설명 : admin/notice/list.jsp 호출
	  * @Method Name : AdminNoticeList
	  * @Date : 2019. 12. 08.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/list")
	public void AdminNoticeList(Criteria cri, Model model) {

		log.info("list: " + cri);
		
		// 게시판의 글은 지속적으로 등록, 삭제 되기에 매번 list를 호출 할때 total을 구해와야 한다. 
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	/**
	  * @Method 설명 : admin/notice/detail.jsp 호출
	  * @Method Name : AdminNoticeDetail
	  * @Date : 2019. 12. 08.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/detail")
	public void AdminNoticeDetail(@RequestParam("notice_num") Long notice_num, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("Notice Detail get page!");
		
		model.addAttribute("notice", service.read(notice_num));
	}
	
	/**
	  * @Method 설명 : admin/notice/create.jsp 호출
	  * @Method Name : AdminNoticeCreate
	  * @Date : 2019. 12. 08.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/create")
	public void AdminNoticeCreate(@ModelAttribute("cri") Criteria cri, Model model) {
		log.info("Notice Create get page!");
	}
	
	/**
	  * @Method 설명 : 파일 업로드 후 admin/notice/list.jsp 호출
	  * @Method Name : AdminNoticeCreate
	  * @Date : 2019. 12. 08.
	  * @작성자 : 서영준
	  * @return redirect jsp view
	  */
	@PostMapping("/create")
	public String AdminNoticeCreate(MultipartFile uploadFile, NoticeVO notice, RedirectAttributes rttr) {
		Date date = new Date(cal.getTimeInMillis());
		
		log.info("파일 이름: " + uploadFile.getOriginalFilename());
		log.info("파일 크기: " + uploadFile.getSize());
		log.info("컨텐트 타입: " + uploadFile.getContentType());
		
		// 실제로 upload된 file이 있을때만 upload 시킨다. 
		if (uploadFile.getSize() > 0) {
			notice.setFiles(UploadUtils.uploadFormPost(uploadFile, uploadPath));
		}
						
		notice.setWrite_date(date);
		
		log.info("create: " + notice);
		log.info("Notice Create Post page!");
		service.register(notice);
		
		rttr.addFlashAttribute("result", notice.getNotice_num());

		return "redirect:/admin/notice/list";
		
	}
	
	/**
	  * @Method 설명 : admin/notice/modify.jsp 호출
	  * @Method Name : AdminNoticeModify
	  * @Date : 2019. 12. 08.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/modify")
	public void AdminNoticeModify(@RequestParam("notice_num") Long notice_num, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("Notice Modify get page!");
	
		model.addAttribute("notice", service.read(notice_num));
		
	}
	
	/**
	  * @Method 설명 : 공지 수정 후 admin/notice/detail.jsp 호출
	  * @Method Name : AdminNoticeModify
	  * @Date : 2019. 12. 08.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@PostMapping("/modify")
	public String AdminNoticeModify(MultipartFile uploadFile, NoticeVO notice, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify:" + notice);
		
		// 실제로 upload된 file이 있을때만 upload 시킨다. 
				if (uploadFile.getSize() > 0) {
					notice.setFiles(UploadUtils.uploadFormPost(uploadFile, uploadPath));
				}
		
		if (service.modify(notice)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/admin/notice/detail" + cri.getListLink() + "&notice_num=" + notice.getNotice_num();
	}
	
	/**
	  * @Method 설명 : admin/notice/delete 기능 실행
	  * @Method Name : AdminNoticeDelete
	  * @Date : 2019. 12. 08.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@PostMapping("/delete")
    public String AdminNoticeDelete(@RequestParam("ck_code") String ck, Criteria cri, RedirectAttributes rttr) {
		/*
		 * for (String List : deleteList) { log.info("delete : " + deleteList); }
		 */
		String[] array = ck.split(",");
		
		for(int i = 0; i < array.length; i++) {
			service.remove(Long.parseLong(array[i]));
			System.out.println("삭제 글 번호" + (i+1) + ": " + array[i]);
		}
		
		log.info(ck);
		log.info(cri);
    	
    	return "redirect:/admin/notice/list" + cri.getListLink();
    }
}
