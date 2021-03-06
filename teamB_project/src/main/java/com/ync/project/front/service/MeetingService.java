package com.ync.project.front.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;


 /**
  * @FileName   : MeetingService.java
  * @Date      : 2019. 11. 27. 
  * @Author      : 조중현
  * @프로그램 설명 : 모임 서비스 인터페이스
  */
public interface MeetingService {
   
   // 글 상세보기
   public MeetingVO read(Long meeting_num);
   
   // 전체 글 목록
   public List<MeetingVO> getList();
   
   // 글 목록 페이징 
   public List<MeetingVO> getListWithPaging(Criteria cri);
   
   // 내 모임 목록 보기
   public List<MeetingVO> getMyList(@Param("cri") Criteria cri, @Param("userid") String userid);
   
   //모임 수
   public int getTotal(Criteria cri);
   
   // 내가 가입한 모임 수
   public int getMyTotal(String userid);

   //모임 가입
   public void insertMember(Meeting_MemberVO mMember);
   
   //모임 회원 수
   public List<MeetingVO> MeetingMemberCount();

   //메인 페이지 회원 수 순 모임 목록
   public List<MeetingVO> mainMeetingList();
   
   //회원별 모임 추천
   public List<MeetingVO> recommendedMeeting(@Param("hobby") String hobby, @Param("adress") String adress);
   
   //모임 탈퇴
   public boolean outMeeting(@Param("meeting_num") int meeting_num, @Param("userid") String userid);
   
   //모임 멤버 확인
   public List<MeetingVO> memberConfirm(@Param("meeting_num") Long meeting_num);
}