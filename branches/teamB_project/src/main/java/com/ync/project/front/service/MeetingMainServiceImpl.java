package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.AppointmentVO;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;
import com.ync.project.front.mapper.MeetingMainMapper;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: MeetingMainServiceImpl.java
  * @Date		: 2019. 11. 26. 
  * @Author		: 이주현
  * @프로그램 설명 : 모임 메인 ServiceImpl
  */
@Log4j
@Service
public class MeetingMainServiceImpl implements MeetingMainService {
	
	@Autowired
	private MeetingMainMapper mapper;
	
	@Override
	public MeetingVO getInfo(int meeting_Num) {
		
		log.info("getInfo......" + meeting_Num);
		
		return mapper.meeting_Read(meeting_Num);
	}
	
	@Override
	public AppointmentVO getAppointment(int meeting_Num) {
		
		log.info("getAppointment......" + meeting_Num);
		
		return mapper.appointment_Read(meeting_Num);
		
	}
	
	@Override
	public List<Meeting_MemberVO> getMemberList(int meeting_Num) {
		
		log.info("getMemberList......" + meeting_Num);
		
		return mapper.getList(meeting_Num);
	}
	
	@Override
	public void meetingCreate(MeetingVO meeting) {
		
		log.info("meetingCreate......" + meeting);
		
		mapper.meetingCreate(meeting);
	}
	
	@Override
	public MeetingVO getMeetingNum() {
		
		log.info("getMeetingNum......");
		
		return mapper.getMeetingNum();
	}
	
	@Override
	public Meeting_MemberVO getCount(int meeting_Num) {
		
		log.info("getCount......");
		
		return mapper.getCount(meeting_Num);
	}
}