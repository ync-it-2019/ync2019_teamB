package com.ync.project.admin.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: EventServiceTests.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 이벤트 Service Test
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AdminEventServiceTests {

	@Autowired
	private AdminEventService service;

//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
//	
	@Test
	public void AdmintestGetList() {

		//service.getListWithPaging(new Criteria(1, 10)).forEach(board -> log.info(board));
		service.getList().forEach(board -> log.info(board));
	}
	
//	@Test
//	public void testGet() {
//
//		log.info(service.read(1L));
//	}

}
