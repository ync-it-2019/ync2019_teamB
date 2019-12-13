package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AdminNoticeMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;
import com.ync.project.domain.NoticeVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: AdminNoticeServiceImpl.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 공지사항 ServiceImpl
  */
@Log4j
@Service
public class AdminNoticeServiceImpl implements AdminNoticeService {

	@Autowired
	private AdminNoticeMapper mapper;

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
	public boolean modify(NoticeVO notice) {
		
		log.info("modify......." + notice);
		
		return mapper.update(notice) == 1;
	}
	
	@Override
	public boolean remove(Long notice_num) {
		
		log.info("remove......" + notice_num);
		
		return mapper.delete(notice_num) == 1;
	}
	
	@Override
	public void register(NoticeVO notice) {
		
		log.info("register......." + notice);
		
		mapper.insertSelectKey(notice);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
}
