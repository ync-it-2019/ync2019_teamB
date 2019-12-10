package com.ync.project.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.QuestionVO;
import com.ync.project.front.mapper.QuestionMapper;

import lombok.extern.log4j.Log4j;


 /**
  * @FileName	: QuestionServiceImpl.java
  * @Date		: 2019. 10. 28. 
  * @Author		: 김상훈
  * @프로그램 설명 : 고객센터 ServiceImpl
  */
@Log4j
@Service
public class QuestionServiceImpl implements QuestionService {

	@Autowired
	private QuestionMapper mapper;

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
	public void register(QuestionVO question) {
		log.info("register......" + question);

		mapper.insertSelectKey(question);
	}

	@Override
	public boolean modify(QuestionVO question) {

		log.info("modify......" + question);
		return mapper.update(question) == 1;
	}

	@Override
	public int getTotal(Criteria cri) {
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
}
