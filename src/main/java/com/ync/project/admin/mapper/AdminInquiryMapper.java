package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

 /**
  * @FileName	: AdminInquiryMapper.java
  * @Date		: 2019. 11. 11. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 1:1문의 Mapper interface
  */
public interface AdminInquiryMapper {
	//전체 게시 글 목록
	public List<EventVO> getList();
	//게시 글 상세보기
	public EventVO read(Long event_num);
	//목록 페이징
	public List<EventVO> getListWithPaging(Criteria cri);
	//게시 글 쓰기
	public Integer insertSelectKey(EventVO event);
	
	public int getTotalCount(Criteria cri);
}
