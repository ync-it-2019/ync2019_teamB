package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.QuestionVO;

 /**
  * @FileName	: AdminInquiryService.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 1:1문의 Service
  */
public interface AdminInquiryService {
	// 글 상세보기
	public QuestionVO read(Long question_num);
	
	// 전체 글 목록
	public List<QuestionVO> getList();
	
	// 글 목록 페이징 
	public List<QuestionVO> getListWithPaging(Criteria cri);
	
	// 이벤트 글 쓰기
	public void register(QuestionVO question);
	
////추가(전체 글 개수)
	public int getTotal(Criteria cri);
}
