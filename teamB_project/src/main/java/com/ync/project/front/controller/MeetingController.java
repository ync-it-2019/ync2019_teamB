package com.ync.project.front.controller;

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

import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_BoardVO;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.Free_BoardService;
import com.ync.project.front.service.MeetingMainService;
import com.ync.project.front.service.MeetingService;
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
	
	@Autowired
	private MeetingService service3;
	
	
	//소모임 메인화면
	@GetMapping(value = "/main")
	public void main(Model model, @RequestParam("meeting_num") Long meeting_num) {

		log.info("Meeting Info page!");
		
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		
		model.addAttribute("getAppointment", service2.getAppointment(meeting_num));
		
		model.addAttribute("getMemberList", service2.getMemberList(meeting_num));
		
		model.addAttribute("getCount", service2.getCount(meeting_num));

	}
	
	@PostMapping(value = "/main")
	public String main(Meeting_MemberVO mMember, RedirectAttributes rttr) {
		
		log.info(mMember);
		
		service3.insertMember(mMember);
		
		return "redirect:/front/meeting/main?meeting_num=" + mMember.getMeeting_num();	
	}
	
	//소모임 게시판 리스트
	@GetMapping(value = "/board/list")
	public void Boardlist(@RequestParam("meeting_num") Long meeting_num, Criteria cri, Model model, Free_BoardVO board) {
		
		log.info("list : "+ cri);
		int total = service1.getTotal(cri, meeting_num);
		log.info("total: " + total);
		log.info("모임 번호"+ meeting_num);
		
		model.addAttribute("list", service1.getListWithPaging(cri, meeting_num));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
   
	//소모임 게시글 상세보기
	@GetMapping(value = "/board/get")
	public void BoardGet(@RequestParam("meeting_num") Long meeting_num, @RequestParam("free_board_num") Long free_board_num, Model model, Criteria cri, Free_BoardVO board) {
		
		log.info("Meeting board get page!");
		int total = service1.getTotal(cri, meeting_num);
		log.info("total: " + total);

		model.addAttribute("board", service1.read(free_board_num));
		log.info("모임 번호"+ meeting_num);
		
		model.addAttribute("list", service1.getListWithPaging(cri, meeting_num));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
   
	//소모임 게시글 작성 페이지
	@GetMapping("/board/write")
	public void boardWrite(@RequestParam("meeting_num") Long meeting_num) {
		log.info("Board Write get page!");
	}
   
	//소모임 게시글 작성 하기
	@PostMapping("/board/write")
	public String boardWrite(@RequestParam("meeting_num") Long meeting_num, MultipartFile uploadFile, Free_BoardVO board, RedirectAttributes rttr) {
		
		log.info("파일 이름: " + uploadFile.getOriginalFilename());
		log.info("파일 크기: " + uploadFile.getSize());
		log.info("컨텐트 타입: " + uploadFile.getContentType());
		
		// 실제로 upload된 file이 있을때만 upload 시킨다. 
		if (uploadFile.getSize() > 0) {
			board.setFiles(UploadUtils.uploadFormPost(uploadFile, uploadPath));
		}
		
		log.info("register: " + board);
		service1.write(board, meeting_num);
		rttr.addFlashAttribute("result", board.getFree_board_num());
		rttr.addFlashAttribute("result", board.getMeeting_num());

		return "redirect:/front/meeting/board/list?meeting_num="+board.getMeeting_num();
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
	@GetMapping(value = "/meetingCreate")
	public void meetingCreate(Model model) {
				
		model.addAttribute("getMeetingNum", service2);
		
	}
	
	@PostMapping(value = "/meetingCreate")
	public String meetingCreate(MultipartFile[] uploadFile, MeetingVO meeting, Meeting_MemberVO mMember, RedirectAttributes rttr) {
		
		for (MultipartFile multipartFile : uploadFile) {
		// 실제로 upload된 file이 있을때만 upload 시킨다. 
		if (multipartFile.getSize() > 0) {
		
				meeting.setMeeting_Profile(UploadUtils.uploadFormPost(multipartFile, uploadPath));

		}
	}
		log.info("register : " + meeting);
		service2.meetingCreate(meeting);		
		service3.insertMember(mMember);
		
		return "redirect:/";
	}
	
	//모임 수정
	@GetMapping(value = "/meetingModify")
	public void meetingModify(Model model, @RequestParam("meeting_num") Long meeting_num) {
				
		model.addAttribute("getMeetingNum", service2);
		
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		
	}
	
	@PostMapping(value = "/meetingModify")
	public String meetingModify(MultipartFile[] uploadFile, MeetingVO meeting, RedirectAttributes rttr) {
		
		for (MultipartFile multipartFile : uploadFile) {
			// 실제로 upload된 file이 있을때만 upload 시킨다. 
			if (multipartFile.getSize() > 0) {
					meeting.setMeeting_Profile(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
		}
		log.info("modify : " + meeting);
		service2.meetingModify(meeting);	
		
		return "redirect:/front/meeting/main?meeting_num=" + meeting.getMeeting_Num();
	}
}
