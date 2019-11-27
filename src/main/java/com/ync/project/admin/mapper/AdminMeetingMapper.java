package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;

 /**
  * @FileName	: AdminMeetingMapper.java
  * @Date		: 2019. 11. 11. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 모임 Mapper interface
  */
public interface AdminMeetingMapper {
	//전체 게시 글 목록
	public List<MeetingVO> getList();
	//게시 글 상세보기
	public MeetingVO read(int meeting_num);
	//목록 페이징
	public List<MeetingVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
