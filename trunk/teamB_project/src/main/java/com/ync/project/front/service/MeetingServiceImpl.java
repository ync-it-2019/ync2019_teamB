package com.ync.project.front.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;
import com.ync.project.front.mapper.MeetingMapper;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName   : MeetingServiceImpl.java
  * @Date      : 2019. 11. 27. 
  * @Author      : 조중현
  * @프로그램 설명 : 모임 서비스 implements
  */
@Log4j
@Service
public class MeetingServiceImpl implements MeetingService {

   @Autowired
   private MeetingMapper mapper;

   @Override
   public MeetingVO read(Long meeting_num) {

      log.info("get......" + meeting_num);
      

      return mapper.read(meeting_num);

   }

    @Override
    public List<MeetingVO> getList() {
   
       log.info("getList..........");
      
       return mapper.getList();
    }

   @Override
   public List<MeetingVO> getListWithPaging(Criteria cri) {

      log.info("get List with criteria: " + cri);

      return mapper.getListWithPaging(cri);
   }

   @Override
   public List<MeetingVO> getMyList(Criteria cri, String userid) {
      
      log.info("get my List: " + cri);
      return mapper.getMyList(cri, userid);
   }

   @Override
   public int getTotal(Criteria cri) {
      log.info("get total count");
      return mapper.getTotalCount(cri);
   }

   @Override
   public int getMyTotal(String userid) {
      log.info("get My Meeting List total count");
      return mapper.getMyTotalCount(userid);
   }

   @Override
   public List<MeetingVO> MeetingMemberCount() {
      log.info("get My Meeting List Member total count");
      return mapper.MeetingMemberCount();
   }

   
   @Override
   public void insertMember(Meeting_MemberVO mMember) {
      log.info("insert Member");
      mapper.insertMember(mMember);
   }

   @Override
   public List<MeetingVO> mainMeetingList() {
      log.info("get mainMeetingList!");
      return mapper.mainMeetingList();
   }
   
   @Override
	public List<MeetingVO> recommendedMeeting(String hobby, String adress) {
		log.info("get recommendedMeeting!");
		return mapper.recommendedMeeting(hobby, adress);
	}
   
   @Override
   public boolean outMeeting (@Param("meeting_num") int meeting_num, @Param("userid") String userid) {
	   log.info("get out of here!" + meeting_num + userid);
	   return mapper.outMeeting(meeting_num, userid) == 1;
   }
   
   @Override
   public List<MeetingVO> memberConfirm(@Param("meeting_num") Long meeting_num){
	   
	   return mapper.memberConfirm(meeting_num);
   }
   
}