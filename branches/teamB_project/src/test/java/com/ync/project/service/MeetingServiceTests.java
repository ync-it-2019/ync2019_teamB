package com.ync.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Meeting_MemberVO;
import com.ync.project.front.service.MeetingService;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: MeetingServiceTests.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 조중현
  * @프로그램 설명 : 모임 서비스 테스트
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MeetingServiceTests {

	@Autowired
	private MeetingService service;

//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
	
//	@Test
//	public void testGetList() {
//
//		service.getListWithPaging(new Criteria(1, 10)).forEach(board -> log.info(board));
//	}
	
//	@Test
//	public void testGet() {
//
//		log.info(service.read(1L));
//	}
	
//	@Test
//	public void testmyList() {
//		service.getMyList(new Criteria(1, 10),"user01").forEach(board -> log.info(board));
//	}
	
	@Test
	public void testInsertMember() {
		
		Meeting_MemberVO mMember = new Meeting_MemberVO();
		
		mMember.setUserid("lee02");
		mMember.setMeeting_num(33);

		log.info(mMember);
		
		service.insertMember(mMember);
	}

}
