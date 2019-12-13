package com.ync.project.front.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.AppointmentVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_BoardVO;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;
import com.ync.project.domain.ParticipantsVO;

/**
  * @FileName	: MeetingMainService.java
  * @Date		: 2019. 11. 26. 
  * @Author		: 이주현
  * @프로그램 설명 : 모임 메인 Service
  */
public interface MeetingMainService {
	
	//모임 정보 출력
	public MeetingVO getInfo(Long meeting_Num);
	
	//최근 정모 출력
	public AppointmentVO getAppointment(Long meeting_Num);
	
	//모임 멤버 출력
	public List<Meeting_MemberVO> getMemberList(Long meeting_Num);
	
	//모임 생성
	public void meetingCreate(MeetingVO meeting);
	
	//가장 큰 모임번호
	public MeetingVO getMeetingNum();
	
	//모임인원수
	public int getCount(Long meeting_Num);
	
	//모임 수정
	public void meetingModify(MeetingVO meeting);
	
	//정모 목록
	public List<AppointmentVO> getAppointmentList(Long meeting_num);
	
	//정모 작성
	public void writeAppointment(AppointmentVO appo);
	
	//가장 큰 정모번호
	public AppointmentVO getAppointmentNum();
	
	//정모 상세
	public AppointmentVO getAppointmentRead(Long appointment_num);
	
	//정모 수정
	public void appointmentModify(AppointmentVO appo);
	
	//정모 삭제
	public void appointmentDelete(Long appointment_num);
	
	//정모 참가
	public void appointmentParticipation(ParticipantsVO parti);
	
	//정모 참가자 명단
	public List<ParticipantsVO> getParticipantsInfo(Long appointment_num);
	
	//가장 큰 정모 참가자 번호
	public ParticipantsVO getParticipantsNum();
	
	//모임인원수
	public int getParticipantsCount(Long appointment_num);
	
	//정모 목록 페이징 
	public List<AppointmentVO> getListWithPaging(@Param("cri") Criteria cri, @Param("meeting_num") Long meeting_num);
	
	//정모 갯수
	public int getTotal(@Param("cri") Criteria cri, @Param("meeting_num") Long meeting_num);
	
	//모임장 확인
	public Meeting_MemberVO meetingLeaderCheck(Long meeting_num);
	

}
