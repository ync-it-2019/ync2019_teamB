package com.ync.project.admin.service;

import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.admin.mapper.AdminQuestionMapper;
import com.ync.project.domain.AnswerVO;
import com.ync.project.domain.NoticeVO;

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
public class AdminQuestionServiceTests {

	@Autowired
	private AdminQuestionService service;
	
	@Autowired
	private AdminQuestionMapper mapper;
	
	Calendar cal = new GregorianCalendar();
	
//	@Test
//	public void testAdminNoticeGetList() {
//
//		service.getListWithPaging(new Criteria(1, 10)).forEach(question -> log.info(question));
//	}
	
//	@Test
//	public void testAdminNoticeGet() {
//
//		log.info(service.read(92L));
//	}

//	@Test
//	public void testAdminNoticeInsertSelectKey(){
//		AnswerVO answer = new AnswerVO();
//		
//		Date date = new Date(cal.getTimeInMillis());
//		
//		NoticeVO notice = new NoticeVO();
//		answer.setQuestion_num(92L);
//		answer.setAnswer("답변 등록 테스트");
//		answer.setAnswer_date(date);
//		answer.setAnswer_writer("admin02");
//
//		service.register(answer);
//
//		log.info(answer);
//	}

}
