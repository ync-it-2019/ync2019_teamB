package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;
import com.ync.project.domain.Meeting_Member_InfoVO;

 /**
  * @FileName	: AdminMeetingService.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 모임 Service
  */
public interface AdminMeetingService {
	// 글 상세보기
	public MeetingVO read(Long meeting_Num);
	
	// 전체 글 목록
	public List<MeetingVO> getList();
	
	// 글 목록 페이징 
	public List<MeetingVO> getListWithPaging(Criteria cri);
	
	//추가(전체 글 개수)
	public int getTotal(Criteria cri);
	
	//모임 회원 정보
	public List<Meeting_Member_InfoVO> getMemberInfo(Long meeting_num);
	
	//모임 회원 수
	public int getMemberCnt(Long meeting_num);
}