package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;
import com.ync.project.domain.NoticeVO;

 /**
  * @FileName	: AdminNoticeService.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 공지사항 Service
  */
public interface AdminNoticeService {
	// 공지사항 상세보기
	public NoticeVO read(Long notice_num);
	
	// 공지사항 목록 페이징 
	public List<NoticeVO> getListWithPaging(Criteria cri);
	
	// 공지사항 쓰기
	public void register(NoticeVO notice);
	
	// 공지사항 수정
	public boolean modify(NoticeVO notice);
	
	// 공지사항 삭제
	public boolean remove(Long notice_num);
	
	//추가(전체 글 개수)
	public int getTotal(Criteria cri);
}
