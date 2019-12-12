package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;
import com.ync.project.domain.NoticeVO;

 /**
  * @FileName	: NoticeService.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 공지사항 Service
  */
public interface NoticeService {
	// 전체 글 목록
	public List<NoticeVO> getList();
	// 글 상세보기
	public NoticeVO read(Long notice_num);
	// 글 목록 페이징 
	public List<NoticeVO> getListWithPaging(Criteria cri);
	// 글 전체 개수
	public int getTotal(Criteria cri);
}
