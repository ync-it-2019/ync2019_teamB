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
	//목록
//	@Test
//	public void testGetList() {
//		
//		mapper.getListWithPaging(null).forEach((board) -> {
//			log.info("==================");
//			log.info(board);
//			});
//	}
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
	
	@Test
	public void testUpdate() {

		QuestionVO board = new QuestionVO();
		// 실행전 존재하는 번호인지 확인할 것
		board.setQuestion_num(38L);
		board.setUserid("user01");
		board.setTitle("수정된 제목");
		board.setContents("수정된 내용");
		board.setFiles("aaa.jpg");

		int count = mapper.update(board);
		log.info("UPDATE COUNT: " + count);
	}
	
//	@Test
//	public void testInsertSelectKey() {
//
//		QuestionVO board = new QuestionVO();
//		board.setUserid("user01");
//		board.setTitle("세번 째 문의글");
//		board.setContents("문의 내용");
//		board.setFiles("file/img.jpg");
//
//		mapper.insertSelectKey(board);
//
//		log.info(board);
//	}
	
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
