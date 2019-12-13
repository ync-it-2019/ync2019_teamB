package com.ync.project.admin.service;

import java.util.Calendar;
import java.util.GregorianCalendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.admin.mapper.AdminNoticeMapper;
import com.ync.project.domain.Criteria;

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
public class AdminNoticeServiceTests {

	@Autowired
	private AdminNoticeService service;
	
	@Autowired
	private AdminNoticeMapper mapper;
	
	Calendar cal = new GregorianCalendar();

//	@Test
//	public void testAdminNoticeInsertSelectKey(){
//		
//		Date date = new Date(cal.getTimeInMillis());
//		
//		NoticeVO notice = new NoticeVO();
//		notice.setTitle("등록된 테스트 공지사항 게시글");
//		notice.setPopup("N");
//		notice.setWrite_date(date);
//		notice.setContents("이벤트 등록 테스트");
//		notice.setUserid("user01");
//		notice.setFiles("이미지 경로~~");
//		
//		log.info("생성된 게시물의 번호 : " + notice.getTitle());
//
//		service.register(notice);
//
//		log.info(notice);
//	}
	
//	@Test
//	public void testAdminNoticeGetList() {
//
//		service.getListWithPaging(new Criteria(1, 10)).forEach(notice -> log.info(notice));
//	}
	
//	@Test
//	public void testAdminNoticeGet() {
//
//		log.info(service.read(394L));
//	}
	
	
//	@Test
//	public void testAdminNoticeDelete() {
//		
//		//게시물 번호의 존재 여부를 확인하고 테스트 할 것
//		log.info("REMOVE RESULT: " + service.remove(394L));
//		
//	}

}
