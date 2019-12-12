package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
	public List<QuestionVO> getListWithPaging(@Param("cri") Criteria cri, @Param("userid") String userid);
	// 글 전체 개수 + 유저 아이디 데이터 전달
	public int getTotalCount(@Param("cri") Criteria cri, @Param("userid") String userid);
}
