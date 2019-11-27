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

import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_BoardVO;
import com.ync.project.domain.PageDTO;
import com.ync.project.front.service.Free_BoardService;
import com.ync.project.util.UploadUtils;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
public class Free_BoardController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private Free_BoardService service;

	@GetMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public void register() {
		log.info("register...");
	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);
		
		// 게시판의 글은 지속적으로 등록, 삭제 되기에 매번 list를 호출 할때 total을 구해와야 한다. 
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}
	
	// file upload가 추가된 게시판 등록
	@PostMapping("/register")
	//@PreAuthorize("isAuthenticated()")
	public String register(MultipartFile[] uploadFile, Free_BoardVO board, RedirectAttributes rttr) {

		for (MultipartFile multipartFile : uploadFile) {
			// 실제로 upload된 file이 있을때만 upload 시킨다. 
			if (multipartFile.getSize() > 0) {
					board.setFiles(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
		}
		
		log.info("register: " + board);
		service.register(board);
		rttr.addFlashAttribute("result", board.getFree_board_num());

		return "redirect:/board/list";
	}

	// @ModelAttribute 는 model.addAttribute("cri", cri) 해주는거와 동일하다.
	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("free_board_num") Long free_board_num, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get or modify");
		model.addAttribute("board", service.read(free_board_num));
	}

	@PostMapping("/modify")
	@PreAuthorize("principal.username == #board.writer")
	public String modify(MultipartFile[] uploadFile, Free_BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify:" + board);
		
		for (MultipartFile multipartFile : uploadFile) {
			// 실제로 upload된 file이 있을때만 upload 시킨다. 
			if (multipartFile.getSize() > 0) {
					board.setFiles(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				}
		}
		
		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/board/list" + cri.getListLink();
	}

	@PostMapping("/remove")
	@PreAuthorize("principal.username == #writer")
	public String remove(@RequestParam("free_board_num") Long free_board_num, Criteria cri, RedirectAttributes rttr, String Writer) {

		log.info("remove..." + free_board_num);
		if (service.remove(free_board_num)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/board/list" + cri.getListLink();
	}
}