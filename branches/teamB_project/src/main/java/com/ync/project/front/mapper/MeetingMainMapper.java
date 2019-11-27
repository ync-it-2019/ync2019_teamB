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
	public MeetingVO meeting_Read(int meeting_Num);
	
	//최근 정모
	public AppointmentVO appointment_Read(int meeting_Num);
	
	//모임 멤버
	public List<Meeting_MemberVO> getList(int meeting_Num);

}
