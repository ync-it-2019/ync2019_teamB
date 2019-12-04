package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_MemberVO;
import com.ync.project.front.mapper.MeetingMapper;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: MeetingServiceImpl.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 조중현
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
	public void insertMember(Meeting_MemberVO mMember) {
		log.info("insert Member");
		mapper.insertMember(mMember);
	}
	
}
