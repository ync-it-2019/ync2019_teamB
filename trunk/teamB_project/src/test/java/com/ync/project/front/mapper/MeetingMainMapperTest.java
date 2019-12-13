package com.ync.project.front.mapper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.ParticipantsVO;

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
//		MeetingVO meeting = mapper.meeting_Read(1L);
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
//		AppointmentVO appointment = mapper.appointment_Read(1L);
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
//		List<Meeting_MemberVO> meeting_Member = mapper.getList(1L);
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
//	@Test
//	public void testMeetingCreate() {
//
//		MeetingVO meeting = new MeetingVO();
//		
//		meeting.setIntroduce("모임소개입니다.");
//		meeting.setUserid("lee02");
//		meeting.setMeeting_Profile("image.jpg");
//		meeting.setMeeting_Name("모임이름");
//		meeting.setMeeting_Adress("대구광역시");
//		meeting.setMeeting_Hobby("게임/오락");
//
//		log.info(meeting);
//		
//		mapper.meetingCreate(meeting);
//
//	}
	
	 /**
	  * @Method 설명 : 가장 큰 모임 번호 테스트
	  * @Method Name : getMeetingNum
	  * @Date : 2019. 12. 4.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testGetMeetingNum() {
//		
//		MeetingVO meeting = mapper.getMeetingNum();
//		log.info(meeting);
//	}
	
	 /**
	  * @Method 설명 : 모임인원수 테스트
	  * @Method Name : testGetCount
	  * @Date : 2019. 12. 4.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testGetCount() {
//		
//		int memberCount = mapper.getCount(1L);
//		log.info(memberCount);
//	}
	
	 /**
	  * @Method 설명 : 모임정보수정 테스트
	  * @Method Name : testMeetingModify
	  * @Date : 2019. 12. 10.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testMeetingModify() {
//		
//		MeetingVO meeting = new MeetingVO();
//		
//		meeting.setIntroduce("모임소개입니다.");
//		meeting.setMeeting_Profile("image.jpg");
//		meeting.setMeeting_Name("모임 이름 수정2");
//		meeting.setMeeting_Adress("대구광역시");
//		meeting.setMeeting_Hobby("게임/오락");
//		meeting.setMeeting_Num(50L);
//
//		log.info(meeting);
//		
//		mapper.meetingModify(meeting);
//	}
	
	 /**
	  * @throws ParseException 
	 * @Method 설명 : 정모 목록 테스트
	  * @Method Name : testAppointmentlist
	  * @Date : 2019. 12. 12.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testAppointmentlist() {
//		
//		List<AppointmentVO> appo = mapper.appointmentList(1L);
//		
//		for(AppointmentVO a: appo) {
//			log.info(a);
//		}
//		
//	}
	
	 /**
	  * @Method 설명 : 정모 작성 테스트
	  * @Method Name : testWriteAppointment
	  * @Date : 2019. 12. 12.
	  * @작성자 : 이주현
	  * @throws ParseException
	  */
	SimpleDateFormat transFormat  = new SimpleDateFormat("yyyyy-MM-dd HH:mm:ss");
	
	String from1 = "1019-12-25 15:00:00";
	Calendar cal = new GregorianCalendar();
//	
//	@Test
//	public void testWriteAppointment() throws ParseException {
//		
//		AppointmentVO appo = new AppointmentVO();
//		
//		java.util.Date to1 = transFormat.parse(from1);
//		
//		Date date = new Date(cal.getTimeInMillis());
//		
//		appo.setAppointment_num(6L);
//		appo.setTitle("mapperTest1");
//		appo.setAppointment_date(date);
//		appo.setAppointment_place("대구광역시");
//		appo.setContents("정모 내용");
//		appo.setMax_people(10L);
//		appo.setUserid("a1");
//		appo.setMeeting_num(1L);
//
//		log.info(appo);
//		
//		mapper.writeAppointment(appo);
//
//	}
	
	 /**
	  * @Method 설명 : 가장 큰 정모 번호 테스트
	  * @Method Name : testGetAppointmentNum
	  * @Date : 2019. 12. 12.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testGetAppointmentNum() {
//		
//		AppointmentVO appo = mapper.getAppointmentNum();
//		log.info(appo);
//	}
	
	 /**
	  * @Method 설명 : 정모 상세 테스트
	  * @Method Name : testGetAppointment
	  * @Date : 2019. 12. 12.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testGetAppointment() {
//		
//		AppointmentVO appo = mapper.getAppointmentRead(1L);
//		log.info(appo);
//	}
	
	 /**
	  * @Method 설명 : 정모 수정 테스트
	  * @Method Name : testAppointmentModify
	  * @Date : 2019. 12. 12.
	  * @작성자 : 이주현
	  * @throws ParseException
	  */
//	@Test
//	public void testAppointmentModify() throws ParseException {
//		
//		AppointmentVO appo = new AppointmentVO();
//		
//		java.util.Date to1 = transFormat.parse(from1);
//		
//		Date date = new Date(cal.getTimeInMillis());
//		
//		appo.setTitle("수정되었습니다.");
//		appo.setAppointment_date(date);
//		appo.setAppointment_place("서울");
//		appo.setContents("수정된 내용입니다.");
//		appo.setMax_people(333L);
//		
//		appo.setAppointment_num(1L);
//		
//		log.info(appo);
//		
//		mapper.appointmentModify(appo);
//	}
	
	 /**
	  * @Method 설명 : 정모 삭제 테스트
	  * @Method Name : testAppointmentDelete
	  * @Date : 2019. 12. 12.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testAppointmentDelete() {
//		
//		mapper.appointmentDelete(3L);
//		
//	}
	
	 /**
	  * @Method 설명 : 정모 참가 테스트
	  * @Method Name : testAppointmentParticipation
	  * @Date : 2019. 12. 12.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testAppointmentParticipation() {
//		
//		ParticipantsVO partipants = new ParticipantsVO();
//		
//		partipants.setMeeting_num(1L);
//		partipants.setAppointment_num(16L);
//		partipants.setParticipants_num(19L);
//		partipants.setUserid("user6");
//		
//		log.info(partipants);
//		
//		mapper.appointmentParticipation(partipants);
//	}
	
	 /**
	  * @Method 설명 : 정모 참가자 명단 테스트
	  * @Method Name : testGetParticipantsInfo
	  * @Date : 2019. 12. 12.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testGetParticipantsInfo() {
//		
//		ParticipantsVO parti = mapper.getParticipantsInfo(1L);
//		
//		log.info(parti);
//		
//	}
	
	 /**
	  * @Method 설명 : 가장 큰 정모 참가자 번호 테스트
	  * @Method Name : testGetParticipantsNum
	  * @Date : 2019. 12. 12.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testGetParticipantsNum() {
//		
//		ParticipantsVO parti = mapper.getParticipantsNum();
//		log.info(parti);
//		
//	}
	
	
	 /**
	  * @Method 설명 : 정모 참가자 인원 수 테스트
	  * @Method Name : testGetParticipantsCount
	  * @Date : 2019. 12. 13.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testGetParticipantsCount() {
//		
//		int participantsCount = mapper.getParticipantsCount(1L);
//		log.info(participantsCount);
//	}
	
	 /**
	  * @Method 설명 : 페이징 테스트
	  * @Method Name : testPaging
	  * @Date : 2019. 12. 13.
	  * @작성자 : 이주현
	  */
//	@Test 
//	public void testPaging() { 
//
//		Criteria cri = new Criteria();
//		
//	    //10개씩 3페이지 
//	    cri.setPageNum(1);
//	    cri.setAmount(10);
//	    
//		List<AppointmentVO> list = mapper.getListWithPaging(cri, 1L);
//		list.forEach(board -> log.info(board));
//
//	}
	

	 /**
	  * @Method 설명 : 정모 갯수 테스트
	  * @Method Name : testTotal
	  * @Date : 2019. 12. 13.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testTotal() {
//
//		Criteria cri = new Criteria();
//		int total = mapper.getTotalCount(cri, 1L);
//		log.info("total:" + total);
//	}
	
	 /**
	  * @Method 설명 : 모임장 확인 테스트
	  * @Method Name : testMeetingLeaderCheck
	  * @Date : 2019. 12. 13.
	  * @작성자 : 이주현
	  */
//	@Test
//	public void testMeetingLeaderCheck() {
//		
//		Meeting_MemberVO mMember = mapper.meetingLeaderCheck(1L);
//		
//		log.info(mMember);
//	}
	
	 /**
	  * @Method 설명 : 정모 참가자 확인 테스트
	  * @Method Name : testParticipantsCheck
	  * @Date : 2019. 12. 13.
	  * @작성자 : 이주현
	  */
	@Test
	public void testParticipantsCheck() {
		
		ParticipantsVO parti = new ParticipantsVO();
		
		parti.setAppointment_num(1L);
		parti.setParticipants_num(3L);
		
		mapper.participantsCheck(parti);
	}
	
}