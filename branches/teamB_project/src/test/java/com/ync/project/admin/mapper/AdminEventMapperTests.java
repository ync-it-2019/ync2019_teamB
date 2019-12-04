package com.ync.project.admin.mapper;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class AdminEventMapperTests {

	//@Setter(onMethod_ = @Autowired)
	@Autowired
	private AdminEventMapper mapper;
	
	SimpleDateFormat transFormat  = new SimpleDateFormat("yyyyy-MM-dd HH:mm:ss");
	
	String from1 = "2013-04-08 10:10:10";
	
	String from2 = "2013-04-08 10:10:10";
	
	String from3 = "2013-04-08 10:10:10";
	
	Calendar cal = new GregorianCalendar();

//	@Test
//	public void testAdminEventGetList() {
//
//		//기존 방식의 코드
////		List<EventVO> event = mapper.getList();
////		
////		for(EventVO e : event) {
////			log.info(e);;
////		}
//		
//		//람다식 코드
//		mapper.getList().forEach((event) -> {
//			log.info("=================");
//			log.info(event);
//			});
//
//	}
	
//	@Test
//	public void testAdminEventInsertSelectKey() throws ParseException {
//		
//		java.util.Date to1 = transFormat.parse(from1);
//		
//		java.util.Date to2 = transFormat.parse(from2);
//		
//		java.util.Date to3 = transFormat.parse(from3);
//		
//		Date date = new Date(cal.getTimeInMillis());
//
//		EventVO event = new EventVO();
//		event.setTitle("등록된 테스트 이벤트 게시글");
//		event.setEvent_start_date(date);
//		event.setEvent_end_date(date);
//		event.setContents("이벤트 등록 테스트");
//		event.setUserid("user01");
//		event.setImage("이미지 경로~~");
//		event.setBanner_image("배너 경로~~~~");
//		mapper.insertSelectKey(event);
//
//		log.info(event);
//	}
	
//	@Test
//	public void testAdminEventRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		EventVO event = mapper.read(5L);
//
//		log.info(event);
//
//	}

//	@Test
//	public void testAdminEventDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(0L));
//	}

//	@Test
//	public void testAdminEventUpdate() {
//
//		EventVO event = new EventVO();
//		// 실행전 존재하는 번호인지 확인할것
//		board.setBno(5L);
//		board.setTitle("수정된 제목");
//		board.setContent("수정된 내용");
//		board.setWriter("user00");
//
//		int count = mapper.update(board);
//		log.info("UPDATE COUNT: " + count);
//
//	}

//	@Test
//	public void testAdminEventPaging() {
//
//		Criteria cri = new Criteria();
//		
//	    //10개씩 3페이지
//	    cri.setPageNum(2);
//	    cri.setAmount(10);
//
//
//		List<EventVO> list = mapper.getListWithPaging(cri);
//
//		list.forEach(event -> log.info(event));
//
//	}

}
