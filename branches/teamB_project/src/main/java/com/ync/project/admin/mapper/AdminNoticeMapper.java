package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.NoticeVO;

 /**
  * @FileName	: AdminNoticeMapper.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 공지사항 Mapper interface
  */
public interface AdminNoticeMapper {
	//전체 게시 글 목록
	public List<NoticeVO> getList();
	//게시 글 상세보기
	public NoticeVO read(Long notice_num);
	//목록 페이징
	public List<NoticeVO> getListWithPaging(Criteria cri);
	//게시 글 등록
	public Integer insertSelectKey(NoticeVO notice);
	//게시 글 삭제
	public int delete(Long notice_num);
	//게시 글 수정
	public int update(NoticeVO notice);
	
	public int getTotalCount(Criteria cri);
}
