package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;

 /**
  * @FileName	: NoticeService.java
  * @Date		: 2019. 10. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 공지사항 Service
  */
public interface NoticeService {
	// 글 상세보기
	public NoticeVO read(Long notice_num);
	
	// 전체 글 목록
	public List<NoticeVO> getList();
	
	// 글 목록 페이징 
	public List<NoticeVO> getListWithPaging(Criteria cri);
}
