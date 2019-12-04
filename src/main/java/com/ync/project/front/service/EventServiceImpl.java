package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;
import com.ync.project.front.mapper.EventMapper;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: EventServiceImpl.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 이벤트 ServiceImpl
  */
@Log4j
@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventMapper mapper;

	@Override
	public EventVO read(Long event_num) {

		log.info("get......" + event_num);

		return mapper.read(event_num);

	}
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
}
