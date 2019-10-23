package com.ync.project.front.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

 /**
  * @FileName	: EventMapper.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 김상훈
  * @프로그램 설명 : 이벤트 mapper
  */
public interface EventMapper {
	//전체 글 목록
	public List<EventVO> getList();
	// 글 상세보기
	public EventVO get(Long event_num);
	// 글 목록 페이징 
	public List<EventVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
