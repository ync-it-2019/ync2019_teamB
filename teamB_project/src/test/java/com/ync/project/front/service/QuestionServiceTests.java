package com.ync.project.front.service;

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

//	@Test
//	public void testExist() {
//
//		log.info(service);
//		assertNotNull(service);
//	}
	
//	@Test
//	public void testGetList() {
//
//		service.getListWithPaging(new Criteria(1, 10), "user02").forEach(board -> log.info(board));
//	}
	
//	@Test
//	public void testGet() {
//
//		log.info(service.read(1L));
//	}

//	@Test
//	public void testRegister() {
//
//		QuestionVO question = new QuestionVO();
//		question.setUserid("user01");
//		question.setTitle("새로 작성하는 글");
//		question.setContents("새로 작성하는 내용");
//		question.setFiles("dldldldl");
//		question.setAnswer_whether("n");
//		question.setCategory("계정");
//
//		service.register(question);
//
//		log.info("생성된 게시물의 번호: " + question.getQuestion_num());
//	}
//
	@Test
	public void testUpdate() {

		QuestionVO board = service.read(87L);

		board.setTitle("제목 수정합니다.");
		board.setFiles("file/a.jpg");
		log.info("MODIFY RESULT: " + service.modify(board));
	}
}
