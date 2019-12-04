package com.ync.project.front.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.MeetingVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: MeetingMainMapperTest.java
  * @Date		: 2019. 11. 25. 
  * @Author		: 이주현
  * @프로그램 설명 : 모임 메인 Mapper Test
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MeetingMainMapperTest {
	
	@Autowired
	private MeetingMainMapper mapper;
	
	
	 /**
	  * @Method 설명 : 모임 정보 테스트
	  * @Method Name : testMeetingRead
	  * @Date : 2019. 11. 25.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testMeetingRead() {
//
//		MeetingVO meeting = mapper.meeting_Read(1);
//
//		log.info(meeting);
//
//	}
	
	 /**
	  * @Method 설명 : 최근 정모 테스트
	  * @Method Name : testAppointmentRead
	  * @Date : 2019. 11. 25.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testAppointmentRead() {
//
//		AppointmentVO appointment = mapper.appointment_Read(1);
//
//		log.info(appointment);
//
//	}
	
	 /**
	  * @Method 설명 : 모임 멤버 테스트
	  * @Method Name : testGetList
	  * @Date : 2019. 11. 25.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testGetList() {
//		
//		List<Meeting_MemberVO> meeting_Member = mapper.getList(1);
//		
//		for(Meeting_MemberVO m: meeting_Member) {
//			log.info(m);
//		}
//
//	}
	
	 /**
	  * @Method 설명 : 모임 생성 테스트
	  * @Method Name : testMeetingCreate
	  * @Date : 2019. 11. 27.
	  * @작성자 : 이주현
	  */
	@Test
	public void testMeetingCreate() {

		MeetingVO meeting = new MeetingVO();
		
		meeting.setIntroduce("모임소개입니다.");
		meeting.setUserid("lee02");
		meeting.setMeeting_Profile("image.jpg");
		meeting.setMeeting_Name("모임이름");
		meeting.setMeeting_Adress("대구광역시");
		meeting.setMeeting_Hobby("게임/오락");

		log.info(meeting);
		
		mapper.meetingCreate(meeting);

	}
	
	 /**
	  * @Method 설명 : 가장 큰 모임 번호 테스트
	  * @Method Name : getMeetingNum
	  * @Date : 2019. 12. 4.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void getMeetingNum() {
//		
//		MeetingVO meeting = mapper.getMeetingNum();
//		log.info(meeting);
//	}
}
