//package com.ync.project.front.controller;
//package com.ync.project.front.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.access.prepost.PreAuthorize;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//import com.ync.project.domain.PageDTO;
//import com.ync.project.util.UploadUtils;
//import com.ync.project.domain.Free_BoardVO;
//import com.ync.project.domain.Criteria;
//import com.ync.project.front.service.BoardService;
//
//import lombok.extern.log4j.Log4j;
//
//@Controller
//@Log4j
//@RequestMapping("/board/*")
////@AllArgsConstructor
//public class Free_BoardController {          //setFile부분과 getBno를 해야함
//	
//	@Autowired
//	private BoardService service;
//
//	@GetMapping("/register")
//	@PreAuthorize("isAuthenticated()")
//	public void register() { 
//		log.info("register..............");
//	}
//
//	@GetMapping("/list")
//	public void list(Criteria cri, Model model) {
//		
////		model.addAttribute("pageMaker", new PageDTO(cri, 123));
//
//		int total = service.getTotal(cri);
//		
//		log.info("list:11111 " + cri);
//		log.info("total:1111 " + total);
//		model.addAttribute("list", service.getListWithPaging(cri));
//		model.addAttribute("pageMaker", new PageDTO(cri, total));
//
//	}
//
//	// file upload가 추가된 게시판 등록
//	@PostMapping("/register")
//	@PreAuthorize("isAuthenticated()")
//	public String register(MultipartFile[] uploadFile, Free_BoardVO board, RedirectAttributes rttr) {
//
//		int index = 0;
//		for (MultipartFile multipartFile : uploadFile) {
//			// 실제로 upload된 file이 있을때만 upload 시킨다. 
//			if (multipartFile.getSize() > 0) {
//				switch (index) {
//				case 0:
//					board.files(UploadUtils.uploadFormPost(multipartFile));
//					break;
//				case 1:
//					board.setFile_2(UploadUtils.uploadFormPost(multipartFile));
//					break;
//				default:
//					board.setFile_3(UploadUtils.uploadFormPost(multipartFile));
//					break;
//				}
//				//list.add(UploadUtils.uploadFormPost(multipartFile));
//				index++;
//			}
//		}
//		
//		log.info("register: " + board);
//		service.register(board);
//		rttr.addFlashAttribute("result", board.getBno());
//
//		return "redirect:/board/list";
//	}
//
//	@GetMapping({ "/get", "/modify" })
//	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
//
//		log.info("/get or modify");
//		model.addAttribute("board", service.get(bno));
//	}
//	
//	@PostMapping("/modify")
//	@PreAuthorize("principal.username == #board.writer")
//	public String modify(Free_BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
//		log.info("modify:" + board);
//
//		if (service.modify(board)) {
//			rttr.addFlashAttribute("result", "success");
//		}
//
//		return "redirect:/board/list" + cri.getListLink();
//	}
//
//	@PostMapping("/remove")
//	@PreAuthorize("principal.username == #writer")
//	public String remove(@RequestParam("bno") Long bno, Criteria cri,
//							RedirectAttributes rttr, String writer) {
//
//		log.info("remove..." + bno);
//		if (service.remove(bno)) {
//			rttr.addFlashAttribute("result", "success");
//		}
//
//		return "redirect:/board/list" + cri.getListLink();
//	}
//
//}