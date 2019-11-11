package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

 /**
  * @FileName	: AdminEventMapper.java
  * @Date		: 2019. 11. 11. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 이벤트 Mapper interface
  */
public interface AdminEventMapper {
	// 전체 글 목록
	public List<EventVO> getList();
	// 글 상세보기
	public EventVO read(Long event_num);
	// 목록 페이징
	public List<EventVO> getListWithPaging(Criteria cri);
}
