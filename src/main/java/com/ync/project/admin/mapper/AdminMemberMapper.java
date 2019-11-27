package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;

 /**
  * @FileName	: AdminMemberMapper.java
  * @Date		: 2019. 11. 11. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 회원 Mapper interface
  */
public interface AdminMemberMapper {
	//전체 게시 글 목록
	public List<MemberVO> getList();
	//게시 글 상세보기
	public MemberVO read(String userid);
	//목록 페이징
	public List<MemberVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
