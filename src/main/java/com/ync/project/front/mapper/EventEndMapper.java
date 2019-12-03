package com.ync.project.front.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;

 /**
  * @FileName	: EventEndMapper.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 김상훈
  * @프로그램 설명 : 종료된 이벤트 Mapper
  */
public interface EventEndMapper {
	// 전체 글 목록
	public List<EventVO> getEndList();
	// 목록 페이징
	public List<EventVO> getListWithPaging(Criteria cri);
	//글 전체 개수
	public int getTotalCount(Criteria cri);
}
