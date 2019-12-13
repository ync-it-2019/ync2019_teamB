package com.ync.project.admin.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ync.project.admin.service.AdminManagerService;
import com.ync.project.domain.AuthVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.security.domain.CustomUser;

import lombok.extern.log4j.Log4j;
/**
 * @FileName	: AdminManagerController.java
 * @Date		: 2019. 11. 04. 
 * @Author		: 서영준
 * @프로그램 설명 : 관리자 계정 관리 페이지 호출용 controller
 */
@Controller
@Log4j
@RequestMapping("/admin/manager/*")
public class AdminManagerController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private AdminManagerService service;
	
	Calendar cal = new GregorianCalendar();
	
	/**
	  * @Method 설명 : admin/manager/create.jsp 호출
	  * @Method Name : AdminManagerCreate
	  * @Date : 2019. 12. 12.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/create")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void AdminManagerCreate() {
		
		log.info("Manager Create get page!");
		
	}
	
	/**
	  * @Method 설명 : admin/manager/create.jsp 호출
	  * @Method Name : AdminManagerCreate
	  * @Date : 2019. 12. 12.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@PostMapping("/create")
	public String AdminManagerCreate(MemberVO member, AuthVO auth, RedirectAttributes rttr) {

		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
		member.setUserpw(scpwd.encode(member.getUserpw()));
		
		log.info("Manager Create get page!");
		
		log.info("auth : " + auth);
		List<AuthVO> auth_arr = new ArrayList<AuthVO>();
		auth_arr.add(auth);
		log.info("auth_arr : " + auth_arr);
		member.setAuthList(auth_arr);
		
		log.info("create: " + member);
		log.info("Manager Create Post page!");
		service.register(member);
		
		return "redirect:/admin/manager/list";
	}
	
	/**
	  * @Method 설명 : admin/manager/list.jsp 호출
	  * @Method Name : AdminManagerList
	  * @Date : 2019. 11. 04.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/list")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void AdminManagerList(Criteria cri, Model model) {

		log.info("Manager List get page!");
		
		log.info("list: " + cri);
		
		// 게시판의 글은 지속적으로 등록, 삭제 되기에 매번 list를 호출 할때 total을 구해와야 한다. 
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	
	}
	
	/**
	  * @Method 설명 : admin/manager/detail.jsp 호출
	  * @Method Name : AdminManagerDetail
	  * @Date : 2019. 12. 12.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/detail")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void AdminManagerDetail(@RequestParam("userid") String userid, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("Manager Detail get page!");
		
		log.warn("userid : " + userid);
		
		model.addAttribute("manager", service.read(userid));
	
	}
	
	/**
	  * @Method 설명 : admin/manager/modify.jsp 호출
	  * @Method Name : AdminManagerModify
	  * @Date : 2019. 12. 12.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@GetMapping("/modify")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public void AdminManagerModify(@RequestParam("userid") String userid, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("Manager Modify get page!");
		
		model.addAttribute("manager", service.read(userid));
	
	}
	
	/**
	  * @Method 설명 : 관리자 계정 정보 수정 후 admin/manager/modify.jsp 호출
	  * @Method Name : AdminManagerModify
	  * @Date : 2019. 12. 12.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@PostMapping("/modify")
	public String AdminManagerModify(MemberVO member, AuthVO auth, @ModelAttribute("cri") Criteria cri,  RedirectAttributes rttr) {
		log.info("modify:" + member);
		
		List<AuthVO> auth_arr = new ArrayList<AuthVO>();
		auth_arr.add(auth);
		member.setAuthList(auth_arr);
		
		if (service.modify(member)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/admin/manager/detail" + cri.getListLink() + "&userid=" + member.getUserid();
	}
	
	/**
	  * @Method 설명 : 관리자 계정 삭제 후 admin/manager/list.jsp 호출
	  * @Method Name : AdminManagerDelete
	  * @Date : 2019. 12. 12.
	  * @작성자 : 서영준
	  * @return call jsp view
	  */
	@PostMapping("/delete")
	public String AdminManagerDelete(@RequestParam("ck_code") String ck, Criteria cri, RedirectAttributes rttr) {

		log.info("Manager Detail get page!");
		
		String[] array = ck.split(",");
		
		for(int i = 0; i < array.length; i++) {
			service.remove(array[i]);
			System.out.println("삭제 글 번호" + (i+1) + ": " + array[i]);
		}
		
		log.info(ck);
		log.info(cri);
    	
    	return "redirect:/admin/manager/list" + cri.getListLink();
	
	}
}
