package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;
import com.ync.project.front.mapper.EventEndMapper;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: EventEndServiceImpl.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 종료된 이벤트 implements
  */
@Log4j
@Service
public class EventEndServiceImpl implements EventEndService {

	@Autowired
	private EventEndMapper mapper;

	@Override
	public List<EventVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
	public List<EventVO> getList() {
		log.info("getList..........");
		 return mapper.getEndList();
	}

	@Override
	public EventVO read(Long event_num) {
		log.info("get......" + event_num);

		return mapper.read(event_num);
	}
}
