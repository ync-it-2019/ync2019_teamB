package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;

 /**
  * @FileName	: AdminEventService.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 이벤트 Service
  */
public interface AdminMemberService {
	// 회원 정보 상세보기
	public MemberVO read(String userid);
	
	// 회원 목록 페이징 
	public List<MemberVO> getListWithPaging(Criteria cri);
	
	//추가(전체 회원 수)
	public int getTotal(Criteria cri);
}
