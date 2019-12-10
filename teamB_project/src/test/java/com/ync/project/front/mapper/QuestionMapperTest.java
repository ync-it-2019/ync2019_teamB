package com.ync.project.front.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.QuestionVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: QuestionMapperTest.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 고객센터 Mapper Test
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QuestionMapperTest {
	@Autowired
	
	private QuestionMapper mapper;
	//상세보기
//	@Test
//	public void testRead() {
//		// 존재하는 게시물 번호로 테스트
//		QuestionVO board = mapper.read(5L);
//		log.info(board);
//
//	}
	//페이징
//	@Test
//	public void testPaging() {
//
//		Criteria cri = new Criteria();
//		
//	    //10개씩 3페이지 
//	    cri.setPageNum(1);
//	    cri.setAmount(10);
//
//
//		List<QuestionVO> list = mapper.getListWithPaging(cri);
//
//		list.forEach(board -> log.info(board));
//
//	}
//	
	@Test
	public void testUpdate() {

		QuestionVO question = new QuestionVO();
		// 실행전 존재하는 번호인지 확인할 것
		question.setQuestion_num(38L);
		question.setUserid("user01");
		question.setTitle("수정된 제목");
		question.setContents("수정된 내용");
		question.setFiles("aaa.jpg");
		question.setCategory("계정");

		int count = mapper.update(question);
		log.info("UPDATE COUNT: " + count);
	}
	
	@Test
	public void testInsertSelectKey() {

		QuestionVO question = new QuestionVO();
		question.setUserid("user01");
		question.setTitle("세번 째 문의글");
		question.setContents("문의 내용");
		question.setFiles("file/img.jpg");
		question.setCategory("계정");

		mapper.insertSelectKey(question);

		log.info(question);
	}
	
//	@Test
//	  public void testTotal() {
//
//	    Criteria cri = new Criteria();
//	    //cri.setKeyword("공지");
//	    //cri.setType("T");
//
//	    int total = mapper.getTotalCount(cri);
//
//	    log.info("total:" + total);
//	  }
}
