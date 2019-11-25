//package com.ync.project.front.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.ync.project.domain.Criteria;
//import com.ync.project.domain.Free_Board_CommentsVO;
//import com.ync.project.front.mapper.Free_BoardMapper;
//import com.ync.project.front.mapper.Free_Board_CommentsMapper;
//
//import lombok.extern.log4j.Log4j;
//
//@Service
//@Log4j
////@AllArgsConstructor
//public class Free_Board_CommentsServiceImpl implements Free_Board_CommentsService {
//
//	@Autowired
//	private Free_Board_CommentsMapper mapper;
//	
//	@Autowired
//	private Free_BoardMapper boardMapper;
//	
////	@Transactional
////	@Override
////	public int register(Free_Board_CommentsVO vo) {   //우린 댓글 갯수 새는 테이블이 없다
////		log.info("register......" + vo);
////		boardMapper.updateReplyCnt(vo.getFree_board_num(), 1);
////		return mapper.insert(vo);
////	}
//
//	@Override
//	public Free_Board_CommentsVO get(Long free_comments_num) {
//		log.info("get......" + free_comments_num);
//		return mapper.read(free_comments_num);
//	}
//
//	@Override
//	public int modify(Free_Board_CommentsVO vo) {
//		log.info("modify......" + vo);
//		return mapper.update(vo);
//	}
//	
////	@Transactional
////	@Override
////	public int remove(Long free_comments_num) {   //우린 댓글 갯수 새는 테이블이 없다
////		log.info("remove...." + free_comments_num);
////		
////		Free_Board_CommentsVO vo = mapper.read(free_comments_num);
////		boardMapper.updateReplyCnt(vo.getFree_board_num(), -1);
////		return mapper.delete(free_comments_num);
////	}
//
//	@Override
//	public List<Free_Board_CommentsVO> getList(Criteria cri, Long bno) {
//		log.info("get Reply List of a Board " + bno);
//		return mapper.getListWithPaging(cri, bno);
//	}
//
//	@Override
//	public int register(Free_Board_CommentsVO vo) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//
//	@Override
//	public int remove(Long free_comments_num) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//  
////	@Override
////	public ReplyPageDTO getListPage(Criteria cri, Long free_board_num) {  //ex05의 어느 폴더에 있는가?
////       
////		return new ReplyPageDTO(
////				mapper.getCountByBno(free_board_num), 
////				mapper.getListWithPaging(cri, free_board_num));
////	}
//}
//
