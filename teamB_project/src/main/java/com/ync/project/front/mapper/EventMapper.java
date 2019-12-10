package com.ync.project.front.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

 /**
  * @FileName	: EventMapper.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 김상훈
  * @프로그램 설명 : 이벤트 Mapper interface
  */
public interface EventMapper {
	// 전체 글 목록
	public List<EventVO> getList();
	// 글 상세보기
	public EventVO read(Long event_num);
	// 목록 페이징
	public List<EventVO> getListWithPaging(Criteria cri);
	//글 전체 개수
	public int getTotalCount(Criteria cri);
}
