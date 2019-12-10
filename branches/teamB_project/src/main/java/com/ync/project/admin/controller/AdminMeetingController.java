package com.ync.project.admin.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ync.project.admin.service.AdminMeetingService;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;
import com.ync.project.domain.PageDTO;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminMeetingController.java
 * @Date		: 2019. 11. 04. 
 * @Author		: 서영준
 * @프로그램 설명 : 모임 관리 페이지 호출용 controller
 */
@Controller
@Log4j
@RequestMapping("/admin/meeting/*")
public class AdminMeetingController {
	
	@Autowired
	private AdminMeetingService service;
	
	/**
	  * @Method 설명 : admin/meeting/list.jsp 호출
	  * @Method Name : AdminMeetingList
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/list")
	public void AdminMeetingList(Criteria cri, Model model) {

		log.info("Meeting List get page!");
		
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	
	}
	
	/**
	  * @Method 설명 : admin/meeting/detail.jsp 호출
	  * @Method Name : AdminMeetingDetail
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/detail")
	public void AdminMeetingDetail(@RequestParam("meeting_num") Long meeting_num, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("Meeting Detail get page!");
		
		MemberVO membervo = new MemberVO();
	
//		membervo.setUserid(service.getMeetingMember(meeting_num));
//		
//		List<String> members = service.getMeetingMember(meeting_num);
//		
//		List<String> memName = new ArrayList();
//		for (String id: members) {
//			memName.add(service.getMemberName(id));
//		}
		
		//모임 정보
		model.addAttribute("meeting", service.read(meeting_num));
		
		//회원 수
		model.addAttribute("member_count", service.getMemberCnt(meeting_num));
		
		//회원 아이디
		model.addAttribute("member_info",service.getMemberInfo(meeting_num));
		
//		//회원 이름
//		model.addAttribute("user_name",memName);
//		
//		log.info(members.toString());
//		
//		log.info(memName.toString());
		
		//가입 회원 정보
		//model.addAttribute("list", service.getMeetingMember(meeting_num));
		
//		while(iterator.hasNext()) {
//			
//			List<String> names = null;
//			
//			int i = 0;
//			
//			//service.getMemberName(iterator.next());
//			
//			names.add(service.getMemberName(iterator.next()));
//			
//			//log.info("names : " + names.get(i));
//			//log.info("names : " + service.getMeetingMemberInfo(iterator.next()).getUserid());
//			
//			i++;
//			
//			System.out.println(names.toString());
//			
//		}
		
		//System.out.println(names.toString());
		
		//model.addAttribute("member_count", service.getMemberCnt(meeting_num));
		
//		ArrayList member_info = new ArrayList();
//		
//		member_info.add();
	}
}
