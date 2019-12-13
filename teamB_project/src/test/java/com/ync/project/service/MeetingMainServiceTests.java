package com.ync.project.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.ParticipantsVO;
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

//	@Test
//	public void testMeetingModify() {
//
//		MeetingVO meeting = new MeetingVO();
//		
//		meeting.setIntroduce("수정 444");
//		meeting.setMeeting_Profile("");
//		meeting.setMeeting_Name("모임이름 수정 444");
//		meeting.setMeeting_Adress("대구광역시");
//		meeting.setMeeting_Hobby("게임/오락");
//		
//		meeting.setMeeting_Num(50L);
//
//		log.info(meeting);
//		
//		service.meetingModify(meeting);
//	}
	
//	@Test
//	public void testGetAppointmentList() {
//		service.getAppointmentList(1L).forEach(board -> log.info(board));
//	}
	
	SimpleDateFormat transFormat  = new SimpleDateFormat("yyyyy-MM-dd HH:mm:ss");
	String from1 = "2019-12-25 15:00:00";
	Calendar cal = new GregorianCalendar();
//	
//	@Test
//	public void testWriteAppoinment() throws ParseException {
//		
//		AppointmentVO appo = new AppointmentVO();
//		java.util.Date to1 = transFormat.parse(from1);
//		Date date = new Date(cal.getTimeInMillis());
//		
//		appo.setAppointment_num(11L);
//		appo.setTitle("serviceTest");
//		appo.setAppointment_date(date);
//		appo.setAppointment_place("대구광역시");
//		appo.setContents("정모 내용");
//		appo.setMax_people(10L);
//		appo.setUserid("a1");
//		appo.setMeeting_num(1L);
//		
//		service.writeAppointment(appo);
//	}
	
//	@Test
//	public void testGetAppointmentRead() {
//		
//		log.info(service.getAppointmentRead(1L));
//	}
	
//	@Test
//	public void testAppointmentModify() throws ParseException {
//		
//		AppointmentVO appo = new AppointmentVO();
//		java.util.Date to1 = transFormat.parse(from1);
//		Date date = new Date(cal.getTimeInMillis());
//		
//		appo.setTitle("수정되었습니다.222222");
//		appo.setAppointment_date(date);
//		appo.setAppointment_place("서울");
//		appo.setContents("수정된 내용입니다.222222");
//		appo.setMax_people(333L);
//		
//		appo.setAppointment_num(1L);
//		
//		service.appointmentModify(appo);
//	}
	
//	@Test
//	public void testAppointmentDelete() {
//		
//		service.appointmentDelete(4L);
//	}
	
//	@Test
//	public void testAppointmentParticipation() {
//		
//		ParticipantsVO parti = new ParticipantsVO();
//		
//		parti.setMeeting_num(1L);
//		parti.setAppointment_num(15L);
//		parti.setParticipants_num(20L);
//		parti.setUserid("user9");
//		
//		log.info(parti);
//		
//		service.appointmentParticipation(parti);
//		
//	}
	
//	@Test
//	public void testGetParticipantsInfo() {
//		
//		log.info(service.getParticipantsInfo(1L));
//		
//	}
	
//	@Test
//	public void testGetParticipantsNum() {
//		
//		log.info(service.getParticipantsNum());
//	}
	
//	@Test
//	public void testGetParticipantsCount() {
//		
//		log.info(service.getParticipantsCount(1L));
//	}
	
//	@Test
//	public void testGetList() {
//
//		service.getListWithPaging(new Criteria(2, 10), 1L).forEach(board -> log.info(board));
//	}
	
//	@Test
//	public void testGetTotal() {
//		
//		log.info(service.getTotal(new Criteria(1, 10), 1L));
//	}
	
//	@Test
//	public void testMeetingLeaderCheck() {
//		
//		log.info(service.meetingLeaderCheck(1L));
//	}
	
	@Test
	public void testParticipantsCheck() {
		
		ParticipantsVO parti = new ParticipantsVO();
		
		parti.setUserid("user6");
		parti.setAppointment_num(1L);
		
		log.info(parti);
		
		service.participantsCheck(parti);
		
	}
	
}
