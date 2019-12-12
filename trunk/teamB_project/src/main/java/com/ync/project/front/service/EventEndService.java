package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

 /**
  * @FileName	: EventEndService.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 종료된 이벤트 Service
  */
public interface EventEndService {
	// 전체 글 목록
	public List<EventVO> getList();
	// 글 상세보기
	public EventVO read(Long event_num);
	// 글 목록 페이징 
	public List<EventVO> getListWithPaging(Criteria cri);
	// 글 전체 개수
	public int getTotal(Criteria cri);
}
