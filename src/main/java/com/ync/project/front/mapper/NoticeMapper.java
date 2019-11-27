package com.ync.project.front.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;

 /**
  * @FileName	: noticeMapper.java
  * @Date		: 2019. 10. 23. 
  * @Author		: 김상훈
  * @프로그램 설명 : 공지사항 Mapper interface
  */
public interface NoticeMapper {
	// 전체 글 목록
	public List<NoticeVO> getList();
	// 글 상세보기
	public NoticeVO read(Long notice_num);
	// 검색
	public void insert(NoticeVO board);
	// 글 목록 페이징 
	public List<NoticeVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
