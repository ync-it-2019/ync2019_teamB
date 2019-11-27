package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_BoardVO;
/**
 * @FileName	: MeetingController.java
 * @Date		: 2019. 11. 27. 
 * @Author		: 장윤석
 * @프로그램 설명     : free_board_service
 */
public interface Free_BoardService {

	// 글 상세보기
	public Free_BoardVO read(Long free_board_num);
	
	// 전체 글 목록
	public List<Free_BoardVO> getList();
	
	// 글 목록 페이징 
	public List<Free_BoardVO> getListWithPaging(Criteria cri);
	
	// 글 등록
	public void register(Free_BoardVO board); 
		
	// 글 수정
	public boolean modify(Free_BoardVO board);
	
	// 글 삭제
	public boolean remove(Long free_board_num);
	
	//추가
	 public int getTotal(Criteria cri);

}
