package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AdminQuestionMapper;
import com.ync.project.domain.AnswerVO;
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
public class AdminQuestionServiceImpl implements AdminQuestionService {

	@Autowired
	private AdminQuestionMapper mapper;

	@Override
	public QuestionVO read(Long question_num) {

		log.info("get......" + question_num);

		return mapper.read(question_num);

	}

	@Override
	public List<QuestionVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public void register(AnswerVO answer) {
		
		log.info("register......." + answer);
		
		mapper.insertSelectKey(answer);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
}
