package com.ync.project.front.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: NoticeMapperTest.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 공지사항 Mapper Test
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeMapperTest {
	@Autowired
	
	private NoticeMapper mapper;
	//검색
//	@Test
//	public void testSearch() {
//    Criteria cri = new Criteria();
//    cri.setKeyword("dl");
//    cri.setType("T");
//
//    List<NoticeVO> list = mapper.getListWithPaging(cri);
//
//    list.forEach(board -> log.info(board));
//    }
	
//	//목록
//	@Test
//	public void testGetList() {
//		
//		mapper.getList().forEach((board) -> {
//			log.info("==================");
//			log.info(board);
//			});
//	}
//	//상세보기
//	@Test
//	public void testRead() {
//		// 존재하는 게시물 번호로 테스트
//		NoticeVO board = mapper.read(5L);
//		log.info(board);
//
//	}
//	//페이징
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
//		List<NoticeVO> list = mapper.getListWithPaging(cri);
//
//		list.forEach(board -> log.info(board));
//
//	}
	
	@Test
	  public void testTotal() {

	    Criteria cri = new Criteria();
	    cri.setKeyword("새로");
	    cri.setType("T");

	    int total = mapper.getTotalCount(cri);

	    log.info("total:" + total);
	  }
}
