package com.ync.project.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.front.service.MeetingMainService;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: MeetingMainServiceTests.java
  * @Date		: 2019. 11. 26. 
  * @Author		: 이주현
  * @프로그램 설명 : 모임 메인 Service Test
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MeetingMainServiceTests {
	
	@Autowired
	private MeetingMainService service;
	
	@Test
	public void testExist() {

		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testGetIntroduce() {
		log.info(service.getInfo(1));
	}
	
	@Test
	public void testGetAppointment() {
		log.info(service.getAppointment(1));
	}

	@Test
	public void testGetMemberList() {
		service.getMemberList(1).forEach(board -> log.info(board));
	}


}
