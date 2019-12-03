package com.ync.project.front.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: EventMapperTest.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 이벤트 Mapper Test
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class EventEndMapperTest {
	@Autowired
	
	private EventEndMapper mapper;
	//목록
//	@Test
//	public void testGetEndList() {
//		
//		mapper.getEndList().forEach((board) -> {
//			log.info("==================");
//			log.info(board);
//			});
//	}
	//페이징
	@Test
	public void testPaging() {

		Criteria cri = new Criteria();
		
	    //10개씩 3페이지 
	    cri.setPageNum(1);
	    cri.setAmount(10);


		List<EventVO> list = mapper.getListWithPaging(cri);

		list.forEach(board -> log.info(board));

	}
}
