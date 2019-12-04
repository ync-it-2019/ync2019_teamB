package com.ync.project.front.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;


 /**
  * @FileName	: MeetingService.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 조중현
  * @프로그램 설명 : 모임 서비스 인터페이스
  */
public interface MeetingService {
	
	// 글 상세보기
	public MeetingVO read(Long meeting_num);
	
	// 전체 글 목록
	public List<MeetingVO> getList();
	
	// 글 목록 페이징 
	public List<MeetingVO> getListWithPaging(Criteria cri);
	
	// 내 모임 목록 보기
	public List<MeetingVO> getMyList(@Param("cri") Criteria cri, @Param("userid") String userid);
	
	//모임 수
	public int getTotal(Criteria cri);
	
}
