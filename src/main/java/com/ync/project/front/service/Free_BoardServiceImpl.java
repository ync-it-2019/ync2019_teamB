package com.ync.project.front.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_BoardVO;
import com.ync.project.front.mapper.Free_BoardMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
//@AllArgsConstructor

/**
 * @FileName	: MeetingController.java
 * @Date		: 2019. 11. 27. 
 * @Author		: 장윤석
 * @프로그램 설명     : free_board_serviceImpl
 */
public class Free_BoardServiceImpl implements Free_BoardService {

	// @Setter(onMethod_ = @Autowired)
	// 스프링 4.3 이후 부터 묵시적 주입
	// Free_BoardMappers는 interface 인데 객체로 주입받았다?
	// Java Proxy 기법을 활용해 Mybatis는 MapperProxy라는 InvocationHandler 구현체를 이용하여
	// 인터페이스의 구현체를 동적으로 생성
	@Autowired // @Inject
	private Free_BoardMapper mapper;
	
	@Override
	public void write(@Param("board") Free_BoardVO board, @Param("meeting_num") Long meeting_num) {

		log.info("write......" + board);

		mapper.insert(board, meeting_num);
//		return "redirect: /board/list?meeting_num="+board.getMeeting_num()+"&free_board_num="+ board.getSeq_board();
	}

	@Override
	public Free_BoardVO read(Long free_board_num) {

		log.info("get......" + free_board_num);

		return mapper.read(free_board_num);

	}

	@Override
	public boolean modify(Free_BoardVO board) {

		log.info("modify......" + board);
		
		// SQL 성공 시 <update tag에서 update 된 갯수를 리턴. 따라서 mapper.update(board)의 값은 1이됨. 
		// return true 가 됨.
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long free_board_num) {

		log.info("remove...." + free_board_num);

		return mapper.delete(free_board_num) == 1;
	}

	 @Override
	 public List<Free_BoardVO> getList(Long meeting_num) {
	
		 log.info("getList..........");
		
		 return mapper.getList(meeting_num);
	 }

	@Override
	public List<Free_BoardVO> getListWithPaging(@Param("cri") Criteria cri, @Param("meeting_num") Long meeting_num) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri, meeting_num);
	}

	@Override
	public int getTotal(@Param("cri") Criteria cri, @Param("meeting_num") Long meeting_num) {

		log.info("get total count");
		return mapper.getTotalCount(cri, meeting_num);
	}
	
	@Override
	public int viewCount(Long free_board_num) {
		
		log.info("get views");	
		return mapper.viewCount(free_board_num);
	}

}
