package com.ync.project.admin.mapper;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.AnswerVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.QuestionVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AdminQuestionMapperTests {
	
	@Autowired
	private AdminQuestionMapper mapper;
	
	Calendar cal = new GregorianCalendar();
	
	QuestionVO question = new QuestionVO();	
	
	AnswerVO answer = new AnswerVO();
	
	Criteria cri = new Criteria();
	
//	@Test
//	public void testAdminQuestionAnswer(){
//		
//		Date date = new Date(cal.getTimeInMillis());
//		
//		answer.setQuestion_num(91L);
//		answer.setAnswer("답변 등록 테스트");
//		answer.setAnswer_date(date);
//		answer.setAnswer_writer("admin02");
//		
//		mapper.insertSelectKey(answer);
//
//		log.info(answer);
//	}
	
//	@Test
//	public void testAdminQuestionRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		question = mapper.read(91L);
//
//		log.info(question);
//
//	}
	

//	@Test
//	public void testAdminNoticePaging() {
//		
//	    //10개씩 3페이지
//	    cri.setPageNum(1);
//	    cri.setAmount(10);
//
//
//		List<QuestionVO> list = mapper.getListWithPaging(cri);
//
//		list.forEach(question -> log.info(question));
//
//	}

}
