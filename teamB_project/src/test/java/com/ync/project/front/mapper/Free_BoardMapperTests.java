package com.ync.project.front.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_BoardVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

@Log4j
public class Free_BoardMapperTests {

	@Autowired
	private Free_BoardMapper mapper;
	
//	@Test
//	public void testGetList() {
//		
//		mapper.getList().forEach((board) -> {
//			board.setMeeting_num(2L);
//			log.info("==================");
//			log.info(board);
//			});
//
//	}
	

//	@Test
//	public void testInsert() {   
//
//		Free_BoardVO board = new Free_BoardVO();
//		board.setMeeting_num(2L);
//		board.setFree_board_num(201L);
//		board.setUserid("user01");
//		board.setTitle("테스트 중입니다.");
//		board.setCategory("자유");
//		board.setContents("다른 모임 게시물");
//		board.setFiles("ABC");
//		board.setViews(0L);	
//		mapper.insert(board);
//		log.info(board);
//	}

//	@Test
//	   public void testInsertSelectKey() {
//
//	      Free_BoardVO board = new Free_BoardVO();
//	      board.setFree_board_num(154L);
//	      board.setMeeting_num(2L);
//	      board.setUserid("user01");
//	      board.setTitle("수정된 제목");
//	      board.setContents("수정된 내용");
//	      board.setFiles("파일A");
//	      board.setCategory("자유");
//	      board.setViews(0L);
//	      
//	      mapper.insertSelectKey(board);
//	      log.info(board);
//	   }

//	@Test
//	public void testRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		Free_BoardVO board = mapper.read(5L);
//
//		log.info(board);
//
//	}

	@Test
	public void testDelete() {  //확인했음

		log.info("DELETE COUNT: " + mapper.delete(356L));
	}

//	@Test
//	public void testUpdate() {
//
//		Free_BoardVO board = new Free_BoardVO();
//		// 실행전 존재하는 번호인지 확인할 것
//		board.setFree_board_num(343L);
//		board.setTitle("수정된다!");
//		board.setContents("수정됐다!");
//		board.setUserid("user01");
//
//		int count = mapper.update(board);
//		log.info("UPDATE COUNT: " + count);
//
//	}

//	@Test 
//	public void testPaging() { 
//
//		Criteria cri = new Criteria();
//		
//	    //10개씩 3페이지 
//	    cri.setPageNum(2);
//	    cri.setAmount(10);
//	    
//		List<Free_BoardVO> list = mapper.getListWithPaging(cri, 1L);
//		list.forEach(board -> log.info(board));
//
//	}

//	  @Test 
//	  public void testSearch() {  
//
//	    Criteria cri = new Criteria();
//	    cri.setKeyword("키워드");
//	    cri.setType("TC");
//
//	    List<Free_BoardVO> list = mapper.getListWithPaging(cri,1L);
//
//	    list.forEach(board -> log.info(board));
//	  }
	  
//	  @Test
//	  public void testTotal() {
//
//	    Criteria cri = new Criteria();
//	    cri.setKeyword("새로");
//	    cri.setType("T");
//
//	    int total = mapper.getTotalCount(cri);
//
//	    log.info("total:" + total);
//	  }
}
