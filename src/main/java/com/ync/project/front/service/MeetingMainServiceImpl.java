package com.ync.project.front.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.AppointmentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;
import com.ync.project.domain.ParticipantsVO;
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
	public MeetingVO getInfo(Long meeting_Num) {
		
		log.info("getInfo......" + meeting_Num);
		
		return mapper.meeting_Read(meeting_Num);
	}
	
	@Override
	public AppointmentVO getAppointment(Long meeting_Num) {
		
		log.info("getAppointment......" + meeting_Num);
		
		return mapper.appointment_Read(meeting_Num);
		
	}
	
	@Override
	public List<Meeting_MemberVO> getMemberList(Long meeting_Num) {
		
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
	public int getCount(Long meeting_Num) {
		
		log.info("getCount......");
		
		return mapper.getCount(meeting_Num);
	}
	
	@Override
	public void meetingModify(MeetingVO meeting) {
		
		log.info("meetingModify......" + meeting);
		
		mapper.meetingModify(meeting);
	}
	
	@Override
	public List<AppointmentVO> getAppointmentList(Long meeting_num) {
		
		log.info("getAppointmentList......");
		
		return mapper.appointmentList(meeting_num);
	}
	
	@Override
	public void writeAppointment(AppointmentVO appo) {
		
		log.info("writeAppointment......");
		
		mapper.writeAppointment(appo);
	}
	
	@Override
	public AppointmentVO getAppointmentNum() {
		
		log.info("getAppointmentNum......");
		
		return mapper.getAppointmentNum();
		
	}
	
	@Override
	public AppointmentVO getAppointmentRead(Long appointment_num) {
		
		log.info("getAppointmentRead......");
		
		return mapper.getAppointmentRead(appointment_num);
	}
	
	@Override
	public void appointmentModify(AppointmentVO appo) {
		
		log.info("appointmentModify......");
		
		mapper.appointmentModify(appo);
	}
	
	@Override
	public void appointmentDelete(Long appointment_num) {
		
		log.info("appointmentDelete......");
		
		mapper.appointmentDelete(appointment_num);
	}
	
	@Override
	public void appointmentParticipation(ParticipantsVO parti) {
		
		log.info("appointmentParticipation......");
		
		mapper.appointmentParticipation(parti);
	}
	
	@Override
	public List<ParticipantsVO> getParticipantsInfo(Long appointment_num) {
		
		log.info("getParticipantsInfo......");
		
		return mapper.getParticipantsInfo(appointment_num);
	}
	
	@Override
	public ParticipantsVO getParticipantsNum() {
		
		log.info("getParticipantsNum......");
		
		return mapper.getParticipantsNum();
		
	}
	
	@Override
	public int getParticipantsCount(Long appointment_num) {
		
		log.info("getParticipantsCount......");
		
		return mapper.getParticipantsCount(appointment_num);
	}
	
	@Override
	public List<AppointmentVO> getListWithPaging(@Param("cri") Criteria cri, @Param("meeting_num") Long meeting_num) {
		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri, meeting_num);
	}
	
	@Override
	public int getTotal(@Param("cri") Criteria cri, @Param("meeting_num") Long meeting_num) {
		
		log.info("get total count");
		return mapper.getTotalCount(cri, meeting_num);
	}
	
	
}
