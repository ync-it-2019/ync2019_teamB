package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AdminEventMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: AdminEventServiceImpl.java
  * @Date		: 2019. 11. 11. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 이벤트 ServiceImpl
  */
@Log4j
@Service
public class AdminEventServiceImpl implements AdminEventService {

	@Autowired
	private AdminEventMapper mapper;

	@Override
	public EventVO read(Long event_num) {

		log.info("get......" + event_num);

		return mapper.read(event_num);

	}

	 @Override
	 public List<EventVO> getList() {
	
		 log.info("getList..........");
		
		 return mapper.getList();
	 }

	@Override
	public List<EventVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public void register(EventVO event) {
		
		log.info("register......." + event);
		
		mapper.insertSelectKey(event);
	}
}