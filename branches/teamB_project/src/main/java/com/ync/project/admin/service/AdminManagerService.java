package com.ync.project.admin.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;

 /**
  * @FileName	: AdminManagerService.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 관리자 계정 Service
  */
public interface AdminManagerService {
	// 글 상세보기
	public MemberVO read(String userid);
	
	// 글 목록 페이징 
	public List<MemberVO> getListWithPaging(Criteria cri);
	
	// 관리자 계정 등록
	public void register(MemberVO member);
	
	//글 수정
	public boolean modify(MemberVO member);
		
	//글 삭제
	public boolean remove(String userid);
	
	//추가(전체 글 개수)
	public int getTotal(Criteria cri);
}
