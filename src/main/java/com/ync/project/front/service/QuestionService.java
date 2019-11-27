package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.QuestionVO;


 /**
  * @FileName	: QuestionService.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 고객센터 Service
  */
public interface QuestionService {
	
	// 글 등록
	public void register(QuestionVO board);
		
	// 글 상세보기
	public QuestionVO read(Long question_num);
	
	// 글 수정
	public boolean modify(QuestionVO board);
	
	// 전체 글 목록
	public List<QuestionVO> getList();
	
	// 글 목록 페이징 
	public List<QuestionVO> getListWithPaging(Criteria cri);

	public int getTotal(Criteria cri);
}
