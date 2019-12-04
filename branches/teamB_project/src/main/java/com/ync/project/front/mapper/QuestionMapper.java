package com.ync.project.front.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.QuestionVO;

 /**
  * @FileName	: QuestionMapper.java
  * @Date		: 2019. 10. 23. 
  * @Author		: 김상훈
  * @프로그램 설명 : 고객센터 Mapper interface
  */
public interface QuestionMapper {
	//글작성
	public Integer insertSelectKey(QuestionVO board);
	// 글 상세보기
	public QuestionVO read(Long question_num);
	// 수정
	public int update(QuestionVO board);
	// 글 목록 페이징 
	public List<QuestionVO> getListWithPaging(Criteria cri);

	public int getTotalCount(Criteria cri);
}
