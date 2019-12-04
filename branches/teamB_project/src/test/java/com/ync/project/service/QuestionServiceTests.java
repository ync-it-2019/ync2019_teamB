package com.ync.project.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.QuestionVO;
import com.ync.project.front.service.QuestionService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QuestionServiceTests {

	@Autowired
	private QuestionService service;

	@Test
	public void testExist() {

		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testGetList() {

		service.getListWithPaging(new Criteria(1, 10)).forEach(board -> log.info(board));
	}
	
//	@Test
//	public void testGet() {
//
//		log.info(service.read(1L));
//	}

//	@Test
//	public void testRegister() {
//
//		QuestionVO board = new QuestionVO();
//		board.setUserid("user01");
//		board.setTitle("새로 작성하는 글");
//		board.setContents("새로 작성하는 내용");
//		board.setFiles("dldldldl");
//		board.setAnswer_whether("n");
//
//		service.register(board);
//
//		log.info("생성된 게시물의 번호: " + board.getQuestion_num());
//	}

//	@Test
//	public void testUpdate() {
//
//		QuestionVO board = service.read(15L);
//
//		if (board == null) {
//			return;
//		}
//
//		board.setTitle("제목 수정합니다.");
//		log.info("MODIFY RESULT: " + service.modify(board));
//	}
}
