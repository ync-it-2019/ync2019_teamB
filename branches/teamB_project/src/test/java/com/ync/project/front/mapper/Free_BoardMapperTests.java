package com.ync.project.front.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.ync.project.domain.Free_BoardVO;
import com.ync.project.domain.Criteria;

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
//			log.info("==================");
//			log.info(board);
//			});
//
//	}

//	@Test
//	public void testInsert() {   
//
//		Free_BoardVO board = new Free_BoardVO();
//		board.setMeeting_num(1);
//		board.setFree_board_num(81);
//		board.setUserid("user01");
//		board.setTitle("새로 작성하는 글 select key");
//		board.setCategory("자유");
//		board.setContents("새로 작성하는 내용 select key");
//		board.setFiles("ABC");
//		board.setViews(0);	
//		mapper.insert(board);
//		log.info(board);
//	}

//	@Test
//	   public void testInsertSelectKey() {
//
//	      Free_BoardVO board = new Free_BoardVO();
//	      board.setFree_board_num(95);
//	      board.setMeeting_num(1);
//	      board.setUserid("user01");
//	      board.setTitle("수정된 제목");
//	      board.setContents("수정된 내용");
//	      board.setFiles("파일A");
//	      board.setCategory("자유");
//	      board.setViews(1);
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

//	@Test
//	public void testDelete() {  //확인했음
//
//		log.info("DELETE COUNT: " + mapper.delete(78L));
//	}

//	@Test
//	public void testUpdate() {
//
//		Free_BoardVO board = new Free_BoardVO();
//		// 실행전 존재하는 번호인지 확인할 것
//		board.setFree_board_num(1);
//		board.setTitle("수정된 제목");
//		board.setContents("수정된 내용");
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
//	    cri.setPageNum(3);
//	    cri.setAmount(20);
//
//		List<Free_BoardVO> list = mapper.getListWithPaging(cri);
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
//	    List<Free_BoardVO> list = mapper.getListWithPaging(cri);
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
