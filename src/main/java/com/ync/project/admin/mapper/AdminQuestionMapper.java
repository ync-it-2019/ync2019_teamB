package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.AnswerVO;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.QuestionVO;

 /**
  * @FileName	: AdminInquiryMapper.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 1:1문의 Mapper interface
  */
public interface AdminQuestionMapper {
	//문의 글 상세보기
	public QuestionVO read(Long question_num);
	//문의 목록 페이징
	public List<QuestionVO> getListWithPaging(Criteria cri);
	//답변 글 쓰기
	public Integer insertSelectKey(AnswerVO answer);
	
	public int getTotalCount(Criteria cri);
}
