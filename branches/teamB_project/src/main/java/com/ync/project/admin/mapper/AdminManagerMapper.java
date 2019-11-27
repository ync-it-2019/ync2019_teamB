package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

 /**
  * @FileName	: AdminManagerMapper.java
  * @Date		: 2019. 11. 11. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 관리자계정 Mapper interface
  */
public interface AdminManagerMapper {
	// 전체 글 목록
	public List<EventVO> getList();
	// 글 상세보기
	public EventVO read(Long event_num);
	// 목록 페이징
	public List<EventVO> getListWithPaging(Criteria cri);
	//관리자 등록
	public Integer insertSelectKey(EventVO event);
	//관리자 계정 삭제
	public int delete(Long event_num);
	//관리자 계정 수정
	public int update(EventVO event);
	
	public int getTotalCount(Criteria cri);
}
