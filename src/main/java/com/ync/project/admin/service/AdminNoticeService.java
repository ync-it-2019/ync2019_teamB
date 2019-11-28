package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;

 /**
  * @FileName	: AdminEventService.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 이벤트 Service
  */
public interface AdminNoticeService {
	// 글 상세보기
	public NoticeVO read(Long notice_num);
	
	// 전체 글 목록
	public List<NoticeVO> getList();
	
	// 글 목록 페이징 
	public List<NoticeVO> getListWithPaging(Criteria cri);
	
	// 이벤트 글 쓰기
	public void register(NoticeVO notice);
	
	//추가(전체 글 개수)
	public int getTotal(Criteria cri);
}