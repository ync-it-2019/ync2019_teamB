package com.ync.project.front.mapper;

import java.util.List;

import com.ync.project.domain.AppointmentVO;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;

/**
  * @FileName	: MeetingMainMapper.java
  * @Date		: 2019. 11. 25. 
  * @Author		: 이주현
  * @프로그램 설명 : 모임 메인  Mapper interface
  */
public interface MeetingMainMapper {
	
	//모임 정보(모임 이름, 이미지, 소개)
	public MeetingVO meeting_Read(Long meeting_Num);
	
	//최근 정모
	public AppointmentVO appointment_Read(Long meeting_Num);
	
	//모임 멤버
	public List<Meeting_MemberVO> getList(Long meeting_Num);
	
	//모임 생성
	public void meetingCreate(MeetingVO meeting);
	
	//가장 큰 모임 번호
	public MeetingVO getMeetingNum();
	
	//모임인원수
	public Meeting_MemberVO getCount(Long meeting_Num);
	
	//모임 수정
	public void meetingModify(MeetingVO meeting);
	
}
