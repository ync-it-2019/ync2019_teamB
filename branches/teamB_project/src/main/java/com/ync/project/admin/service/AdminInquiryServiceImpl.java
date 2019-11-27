package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AdminInquiryMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.QuestionVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: AdminInquiryServiceImpl.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 1:1문의 ServiceImpl
  */
@Log4j
@Service
public class AdminInquiryServiceImpl implements AdminInquiryService {

	@Autowired
	private AdminInquiryMapper mapper;

	@Override
	public QuestionVO read(Long question_num) {

		log.info("get......" + question_num);

		return mapper.read(question_num);

	}

	 @Override
	 public List<QuestionVO> getList() {
	
		 log.info("getList..........");
		
		 return mapper.getList();
	 }

	@Override
	public List<QuestionVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public void register(QuestionVO question) {
		
		log.info("register......." + question);
		
		mapper.insertSelectKey(question);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
}
