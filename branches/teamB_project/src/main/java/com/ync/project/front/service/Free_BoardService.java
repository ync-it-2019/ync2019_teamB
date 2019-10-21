package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.Free_BoardVO;
import com.ync.project.domain.Criteria;

public interface Free_BoardService {
	// 글 등록
	public void register(Free_BoardVO board);  //board ??
	
	// 글 상세보기
	public Free_BoardVO get(Long free_board_num);
	
	// 글 수정
	public boolean modify(Free_BoardVO board);
	
	// 글 삭제
	public boolean remove(Long free_board_num);
	
	// 전체 글 목록
	public List<Free_BoardVO> getList();
	
	// 글 목록 페이징 
	public List<Free_BoardVO> getListWithPaging(Criteria cri);

	//추가
	 public int getTotal(Criteria cri);

}
