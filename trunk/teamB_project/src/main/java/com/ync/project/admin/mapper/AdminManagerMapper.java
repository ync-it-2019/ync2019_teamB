package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;

 /**
  * @FileName	: AdminManagerMapper.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 관리자 계정 Mapper interface
  */
public interface AdminManagerMapper {
	// 전체 글 목록
	public List<MemberVO> getList();
	// 글 상세보기
	public MemberVO read(String userid);
	// 목록 페이징
	public List<MemberVO> getListWithPaging(Criteria cri);
	//관리자 등록
	public Integer insertSelectKey(MemberVO member);
	//관리자 계정 삭제
	public int delete(String userid);
	//관리자 계정 수정
	public int update(MemberVO member);
	
	public int getTotalCount(Criteria cri);
}
