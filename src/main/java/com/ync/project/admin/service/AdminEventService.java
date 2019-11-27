package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

 /**
  * @FileName	: AdminEventService.java
  * @Date		: 2019. 11. 11. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 이벤트 Service
  */
public interface AdminEventService {
	// 글 상세보기
	public EventVO read(Long event_num);
	
	// 전체 글 목록
	public List<EventVO> getList();
	
	// 글 목록 페이징 
	public List<EventVO> getListWithPaging(Criteria cri);
	
	// 이벤트 글 쓰기
	public void register(EventVO event);
	
////추가(전체 글 개수)
	public int getTotal(Criteria cri);
}
