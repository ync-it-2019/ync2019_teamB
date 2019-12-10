package com.ync.project.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.MeetingVO;
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
	
//	@Test
//	public void testExist() {
//
//		log.info(service);
//		assertNotNull(service);
//	}
//	
//	@Test
//	public void testGetIntroduce() {
//		log.info(service.getInfo(1L));
//	}
//	
//	@Test
//	public void testGetAppointment() {
//		log.info(service.getAppointment(1L));
//	}
//
//	@Test
//	public void testGetMemberList() {
//		service.getMemberList(1L).forEach(board -> log.info(board));
//	}
//	
//	@Test
//	public void testMeetingCreate() {
//
//		MeetingVO meeting = new MeetingVO();
//		
//		meeting.setIntroduce("모임소개입니다.");
//		meeting.setUserid("user03");
//		meeting.setMeeting_Profile("image.jpg");
//		meeting.setMeeting_Name("모임이름");
//		meeting.setMeeting_Adress("대구광역시");
//		meeting.setMeeting_Hobby("게임/오락");
//
//		log.info(meeting);
//		
//		service.meetingCreate(meeting);
//	}
//	
//	@Test
//	public void testGetMeetingNum() {
//		
//		log.info(service);
//		
//		service.getMeetingNum();
//	}
//	
//	@Test
//	public void testGetCount() {
//		
//		log.info(service);
//		
//		service.getCount(1L);
//	}

	@Test
	public void testMeetingModify() {

		MeetingVO meeting = new MeetingVO();
		
		meeting.setIntroduce("수정 444");
		meeting.setMeeting_Profile("");
		meeting.setMeeting_Name("모임이름 수정 444");
		meeting.setMeeting_Adress("대구광역시");
		meeting.setMeeting_Hobby("게임/오락");
		
		meeting.setMeeting_Num(50L);

		log.info(meeting);
		
		service.meetingModify(meeting);
	}

}
