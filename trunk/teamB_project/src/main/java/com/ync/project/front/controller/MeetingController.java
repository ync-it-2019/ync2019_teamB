package com.ync.project.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.domain.AppointmentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_BoardVO;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.domain.ParticipantsVO;
import com.ync.project.front.service.Free_BoardService;
import com.ync.project.front.service.MeetingMainService;
import com.ync.project.front.service.MeetingService;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: MeetingController.java
  * @Date		: 2019. 10. 20. 
  * @Author		: 조중현, 장윤석, 이주현
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
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
   
	//소모임 게시글 상세보기
	@GetMapping(value = {"/board/get", "/board/modify"})
	public void BoardGet(@RequestParam("meeting_num") Long meeting_num, @RequestParam("free_board_num") Long free_board_num, Model model, Criteria cri, Free_BoardVO board) {
		
		log.info("Meeting board get page!");
		int total = service1.getTotal(cri, meeting_num);
		log.info("total: " + total);

		model.addAttribute("board", service1.read(free_board_num));
		model.addAttribute("view", service1.viewCount(free_board_num));
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		log.info("모임 번호"+ meeting_num);
		
		model.addAttribute("list", service1.getListWithPaging(cri, meeting_num));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
   
	//소모임 게시글 작성 페이지
	@GetMapping("/board/write")
	public void boardWrite(@RequestParam("meeting_num") Long meeting_num, Model model) {
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		log.info("Board Write get page!");
	}
   
	//소모임 게시글 작성 하기
	@PostMapping("/board/write")
	public String boardWrite(@RequestParam("meeting_num") Long meeting_num, MultipartFile uploadFile, Free_BoardVO board, Model model,RedirectAttributes rttr) {
		
		log.info("파일 이름: " + uploadFile.getOriginalFilename());
		log.info("파일 크기: " + uploadFile.getSize());
		log.info("컨텐트 타입: " + uploadFile.getContentType());
		
		// 실제로 upload된 file이 있을때만 upload 시킨다. 
		if (uploadFile.getSize() > 0) {
			board.setFiles(UploadUtils.uploadFormPost(uploadFile, uploadPath));
		}
		
		log.info("register: " + board);
		service1.write(board, meeting_num);
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		rttr.addFlashAttribute("result", board.getFree_board_num());
		rttr.addFlashAttribute("result", board.getMeeting_num());

		return "redirect:/front/meeting/board/list?meeting_num="+board.getMeeting_num();
	}
	
	
	//소모임 게시글 수정하기
	@PostMapping("/board/modify")
	@PreAuthorize("principal.username == #board.userid")
	public String modify(MultipartFile uploadFile, Free_BoardVO board,  @ModelAttribute("cri") Criteria cri, Model model,RedirectAttributes rttr) {
		log.info("modify:" + board);
		model.addAttribute("getInfo", service2.getInfo(board.getMeeting_num()));
		// 실제로 upload된 file이 있을때만 upload 시킨다. 
		if (uploadFile.getSize() > 0) {
			board.setFiles(UploadUtils.uploadFormPost(uploadFile, uploadPath));
		}
		
		if (service1.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/front/meeting/board/list?meeting_num="+board.getMeeting_num()+"&pageNum=1";
	}
	
	//소모임 게시글 삭제
	@PostMapping("/board/remove")
	@PreAuthorize("principal.username == #board.userid")
	public String remove(Free_BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {

		log.info("remove..." + board.getFree_board_num());
		service1.remove( board.getFree_board_num());
		rttr.addFlashAttribute("result", "success");		
		
		return "redirect:/front/meeting/board/list?meeting_num="+board.getMeeting_num()+"&pageNum=1";
		//return "";
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
	
	//소모임 정모 목록
	@GetMapping(value = "/appointment/list")
	public void appointmentList(Model model, @RequestParam("meeting_num") Long meeting_num, Criteria cri) {

		log.info("Meeting Appointment List page!");
		
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		
		model.addAttribute("getAppointmentList", service2.getAppointmentList(meeting_num));

	}
	
	//소모임 정모 작성
	@GetMapping(value = "/appointment/write")
	public void appointmentWrite(Model model, @RequestParam("meeting_num") Long meeting_num) {
		log.info("Meeting appointment write page!");
		
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		
		model.addAttribute("getAppointmentNum", service2);
		
	}
	
	@PostMapping(value = "/appointment/write")
	public String appointmentWrite(AppointmentVO appo) {
		
		log.info("appointmentWrite : " + appo);
		
		service2.writeAppointment(appo);
		
		return "redirect:/front/meeting/appointment/list?meeting_num=" + appo.getMeeting_num();
		
	}
	
	//소모임 정모 상세
	@GetMapping(value = "/appointment/get")
	public void appointmentGet(Model model, @RequestParam("meeting_num") Long meeting_num, @RequestParam("appointment_num") Long appointment_num) {
		
		log.info("Meeting appointment get page!");
		
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		
		model.addAttribute("getAppointmentRead", service2.getAppointmentRead(appointment_num));
		
		model.addAttribute("getParticipantsInfo", service2.getParticipantsInfo(appointment_num));
		
		model.addAttribute("getParticipantsNum", service2.getParticipantsNum());
		
	}
	
	//소모임 정모 삭제
	@PostMapping(value = "/appointment/get")
	public String appointmentDelete(AppointmentVO appo, @RequestParam("appointment_num") Long appointment_num, RedirectAttributes rttr) {

		log.info("appointmentDelete..." + appo.getAppointment_num());
		
		service2.appointmentDelete(appointment_num);		
		
		return "redirect:/front/meeting/appointment/list?meeting_num="+appo.getMeeting_num();
	}
	
	//소모임 정모 수정
	@GetMapping(value = "/appointment/modify")
	public void appointmentModify(Model model, AppointmentVO appo, @RequestParam("meeting_num") Long meeting_num, @RequestParam("appointment_num") Long appointment_num) {
		
		log.info("Meeting appointment modify page!");
		
		model.addAttribute("getInfo", service2.getInfo(meeting_num));
		
		model.addAttribute("getAppointmentRead", service2.getAppointmentRead(appointment_num));
		
	}
	
	@PostMapping(value = "/appointment/modify")
	public String appointmentModify(AppointmentVO appo, RedirectAttributes rttr) {
		
		log.info("appointment modify : " + appo);
		
		service2.appointmentModify(appo);
		
		return "redirect:/front/meeting/appointment/list?meeting_num=" + appo.getMeeting_num();
	}
	
	//정모 참여 페이지
	@GetMapping(value = "/appointment/participation")
	public void appointmentParticipation(Model model, AppointmentVO appo) {
		
		log.info("appointmentParticipation!");
		
		
	}
	
	@PostMapping(value = "/appointment/participation")
	public String appointmentParticipation(AppointmentVO appo, ParticipantsVO parti, RedirectAttributes rttr) {
		
		log.info("appointmentParticipation : " + parti);
		
		service2.appointmentParticipation(parti);
		
		return "redirect:/front/meeting/appointment/list?meeting_num=" + appo.getMeeting_num();
		
	}
	
}
