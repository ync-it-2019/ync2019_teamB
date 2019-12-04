package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.Free_BoardService;
import com.ync.project.front.service.MeetingMainService;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: MeetingController.java
  * @Date		: 2019. 10. 20. 
  * @Author		: 조중현
  * @프로그램 설명 : 소모임 호출용 컨트롤러
  */
@RequestMapping("front/meeting/*")
@Controller
@Log4j
public class MeetingController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private Free_BoardService service1;
	
	@Autowired
	private MeetingMainService service2;
	
	//소모임 메인화면
	@GetMapping(value = "/main")
	public void main(Model model, @RequestParam("meeting_num") int meeting_num) {

		log.info("Meeting Info page!");
		
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		
		model.addAttribute("getAppointment", service2.getAppointment(meeting_num));
		
		model.addAttribute("getMemberList", service2.getMemberList(meeting_num));

	}
	
	//소모임 게시판 리스트
	@GetMapping(value = "/board/list")
	public void Boardlist(Criteria cri, Model model) {
	      
		log.info("list : "+ cri);
	      
		int total = service1.getTotal(cri);
		log.info("total: " + total);
//		model.addAttribute("list", service.getList());  //안 됨
		model.addAttribute("list", service1.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	//소모임 게시판 보기
	@GetMapping(value = "/board/get")
	public void BoardGet(@RequestParam("free_board_num") Long free_board_num, Model model) {

		log.info("Meeting board get page!");
//		int total = service.getTotal(cri);
//		log.info("total: " + total);
//		model.addAttribute("list", service.getListWithPaging(cri));
//		model.addAttribute("pageMaker", new PageDTO(cri, total));
		model.addAttribute("board", service1.read(free_board_num));
		
	}
	
	//소모임 게시판 쓰기
	@GetMapping(value = "/board/write")
	public void boardWrite() {
		log.info("Meeting board write page!");
	}
	
	//소모임 정모게시판 리스트
	@GetMapping(value = "/appointment/list")
	public void appointmentList() {
		log.info("Meeting appointment get page!");
	}
	
	//소모임 정모게시판 보기
	@GetMapping(value = "/appointment/get")
	public void appointmentGet() {
		log.info("Meeting appointment get page!");
	}
	
	//소모임 정모게시판 쓰기
	@GetMapping(value = "/appointment/write")
	public void appointmentWrite() {
		log.info("Meeting appointment write page!");
	}
	
	//모임 생성
	@GetMapping("/meetingCreate")
	public void meetingCreate() {
	}
	
	@PostMapping("/meetingCreate")
	public String meetingCreate(MultipartFile[] uploadFile, MeetingVO meeting, RedirectAttributes rttr) {
		
		for (MultipartFile multipartFile : uploadFile) {
		// 실제로 upload된 file이 있을때만 upload 시킨다. 
		if (multipartFile.getSize() > 0) {
		
				meeting.setMeeting_Profile(UploadUtils.uploadFormPost(multipartFile, uploadPath));

		}
	}
		log.info("register : " + meeting);
		service2.meetingCreate(meeting);
		return "redirect:/";
	}
	
}
