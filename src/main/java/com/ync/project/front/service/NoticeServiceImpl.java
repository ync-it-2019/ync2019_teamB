package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;
import com.ync.project.front.mapper.NoticeMapper;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: NoticeServiceImpl.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 공지사항 ServiceImpl
  */
@Log4j
@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeMapper mapper;

	@Override
	public NoticeVO read(Long notice_num) {

		log.info("get......" + notice_num);

		return mapper.read(notice_num);

	}

	@Override
	public List<NoticeVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}
	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
	public List<NoticeVO> getList() {
		log.info("getList..........");
		 return mapper.getList();
	}
}
