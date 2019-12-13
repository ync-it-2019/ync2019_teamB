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
	//이벤트 상세보기
	public EventVO read(Long event_num);
	//이벤트 목록 페이징
	public List<EventVO> getListWithPaging(Criteria cri);
	//이벤트 등록
	public Integer insertSelectKey(EventVO event);
	//이벤트 삭제
	public int delete(Long event_num);
	//이벤트 수정
	public int update(EventVO event);
	
	public int getTotalCount(Criteria cri);
}
