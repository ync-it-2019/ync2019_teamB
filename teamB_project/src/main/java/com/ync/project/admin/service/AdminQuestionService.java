package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.AnswerVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.QuestionVO;

 /**
  * @FileName	: AdminQuestionService.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 1:1문의 Service
  */
public interface AdminQuestionService {
	// 문의 글 상세보기
	public QuestionVO read(Long question_num);
	
	// 문의 글 목록 페이징 
	public List<QuestionVO> getListWithPaging(Criteria cri);
	
	// 답변 글 쓰기
	public void register(AnswerVO answer);
	
	//추가(전체 글 개수)
	public int getTotal(Criteria cri);
}
