package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.AppointmentVO;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;

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
	
	//모임
	public void meetingModify(MeetingVO meeting);

}
