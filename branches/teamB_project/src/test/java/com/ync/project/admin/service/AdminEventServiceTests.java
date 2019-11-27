package com.ync.project.admin.service;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.admin.mapper.AdminEventMapper;
import com.ync.project.domain.EventVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: AdminEventServiceTests.java
  * @Date		: 2019. 11. 11. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 이벤트 Service Test
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AdminEventServiceTests {

	@Autowired
	private AdminEventService service;
	
	@Autowired
	private AdminEventMapper mapper;
	
	SimpleDateFormat transFormat  = new SimpleDateFormat("yyyyy-MM-dd HH:mm:ss");
	
	String from1 = "2013-04-08 10:10:10";
	
	String from2 = "2013-04-08 10:10:10";
	
	String from3 = "2013-04-08 10:10:10";
	
	Calendar cal = new GregorianCalendar();

	

//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
	
//	@Test
//	public void AdmintestGetList() {
//
//		//service.getListWithPaging(new Criteria(1, 10)).forEach(board -> log.info(board));
//		service.getList().forEach(board -> log.info(board));
//	}
	
//	@Test
//	public void AdmintestGet() {
//
//		log.info(service.read(1L));
//	}
	
	@Test
	public void AdmintestInsertSelectKey() throws ParseException {
		
		java.util.Date to1 = transFormat.parse(from1);
		
		java.util.Date to2 = transFormat.parse(from2);
		
		java.util.Date to3 = transFormat.parse(from3);
		
		Date date = new Date(cal.getTimeInMillis());
		
		EventVO event = new EventVO();
		event.setTitle("미잉나 타노시미 다네!");
		event.setEvent_start_date(date);
		event.setEvent_end_date(date);
		event.setContents("할로아로하로하");
		event.setUserid("user01");
		event.setImage("이미지 경로~~");
		event.setBanner_image("배너 경로~~~~");
		
		log.info("생성된 게시물의 번호 : " + event.getEvent_num());

		service.register(event);

		log.info(event);
	}
	
//	@Test
//	public void testGet() {
//
//		log.info(service.read(1L));
//	}

}
