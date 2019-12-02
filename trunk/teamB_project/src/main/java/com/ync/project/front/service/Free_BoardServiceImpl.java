package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_BoardVO;
import com.ync.project.front.mapper.Free_BoardMapper;

//import org.zerock.domain.Criteria;


import lombok.extern.log4j.Log4j;

@Log4j
@Service
//@AllArgsConstructor
public class Free_BoardServiceImpl implements Free_BoardService {

	// @Setter(onMethod_ = @Autowired)
	// 스프링 4.3 이후 부터 묵시적 주입
	// Free_BoardMappers는 interface 인데 객체로 주입받았다?
	// Java Proxy 기법을 활용해 Mybatis는 MapperProxy라는 InvocationHandler 구현체를 이용하여
	// 인터페이스의 구현체를 동적으로 생성
	@Autowired // @Inject
	private Free_BoardMapper mapper;
	
	@Override
	public void register(Free_BoardVO board) {

		log.info("register......" + board);

		mapper.insertSelectKey(board);
	}

	@Override
	public Free_BoardVO get(Long free_board_num) {

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
	 public List<Free_BoardVO> getList() {
	
		 log.info("getList..........");
		
		 return mapper.getList();
	 }

	@Override
	public List<Free_BoardVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {

		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

}