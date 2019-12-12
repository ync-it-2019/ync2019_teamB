package com.ync.project.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingMemberCriteria;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_Member_InfoVO;

 /**
  * @FileName	: AdminMeetingMapper.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 모임 Mapper interface
  */
public interface AdminMeetingMapper {
	//전체 게시 글 목록
	public List<MeetingVO> getList();
	//게시 글 상세보기
	public MeetingVO read(Long meeting_num);
	//목록 페이징
	public List<MeetingVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	public List<Meeting_Member_InfoVO> getMemberInfo(@Param("mcri") MeetingMemberCriteria mcri, @Param("meeting_num") Long meeting_num);
	
	public int getMemberCnt(Long meeting_num);
}
