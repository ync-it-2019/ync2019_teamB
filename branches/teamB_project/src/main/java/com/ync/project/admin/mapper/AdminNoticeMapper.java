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
	// 공지사항 상세보기
	public NoticeVO read(Long notice_num);
	// 공지사항 목록 페이징
	public List<NoticeVO> getListWithPaging(Criteria cri);
	// 공지사항 등록
	public Integer insertSelectKey(NoticeVO notice);
	// 공지사항 삭제
	public int delete(Long notice_num);
	// 공지사항 수정
	public int update(NoticeVO notice);
	
	public int getTotalCount(Criteria cri);
}
