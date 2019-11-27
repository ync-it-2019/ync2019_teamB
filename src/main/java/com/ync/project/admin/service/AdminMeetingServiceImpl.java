package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AdminMeetingMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: AdminMeetingServiceImpl.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 모임 ServiceImpl
  */
@Log4j
@Service
public class AdminMeetingServiceImpl implements AdminMeetingService {

	@Autowired
	private AdminMeetingMapper mapper;

	@Override
	public MeetingVO read(int meeting_Num) {

		log.info("get......" + meeting_Num);

		return mapper.read(meeting_Num);

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
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
}
