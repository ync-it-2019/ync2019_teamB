package com.ync.project.front.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;
import com.ync.project.domain.MemberVO;


 /**
  * @FileName   : MeetingMapper.java
  * @Date      : 2019. 11. 27. 
  * @Author      : 조중현
  * @프로그램 설명 : 모임 Mapper
  */
public interface MeetingMapper {

   public List<MeetingVO> getList();
   
   //모임 생성
   public void insert(MeetingVO meeting);
   //모임 페이징
   public List<MeetingVO> getListWithPaging(Criteria cri);
   //모임 상세보기
   public MeetingVO read(Long meeting_num);
   //내가 가입한 모임
   public List<MeetingVO> getMyList(@Param("cri") Criteria cri, @Param("userid") String userid);
   //모임 가입
   public void insertMember(Meeting_MemberVO mMember);
   //모임 인원수 카운트
   public int getTotalCount(Criteria cri);
   //내가 가입한 모임의 수
   public int getMyTotalCount(String userid);
   //내가 가입한 모임 가입자 수
   public List<MeetingVO> MeetingMemberCount();
   //메인 페이지 회원 수 순 모임 목록
   public List<MeetingVO> mainMeetingList();
   //추천 모임
   public List<MeetingVO> recommendedMeeting(@Param("hobby") String hobby, @Param("adress") String adress);


}