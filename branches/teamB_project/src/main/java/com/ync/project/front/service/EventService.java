package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

 /**
  * @FileName	: EventService.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 이벤트 Service
  */
public interface EventService {
	// 전체 글 목록
	public List<EventVO> getList();
	// 글 상세보기
	public EventVO read(Long event_num);
	// 글 목록 페이징 
	public List<EventVO> getListWithPaging(Criteria cri);
	//추가
	public int getTotal(Criteria cri);
}
