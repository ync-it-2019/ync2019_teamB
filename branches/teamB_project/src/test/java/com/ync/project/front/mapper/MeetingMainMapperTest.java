package com.ync.project.front.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.AppointmentVO;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;

import lombok.extern.log4j.Log4j;

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
	@Test
	public void testMeetingRead() {

		MeetingVO meeting = mapper.meeting_Read(1);

		log.info(meeting);

	}
	
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
//	
}
