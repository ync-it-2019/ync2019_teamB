package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_BoardVO;

/**
 * @FileName	: MeetingController.java
 * @Date		: 2019. 11. 27. 
 * @Author		: 장윤석
 * @프로그램 설명     : free_board_mapper
 */

public interface Free_BoardMapper {
	
	public List<Free_BoardVO> getList(Long meeting_num); //글목록

	public List<Free_BoardVO> getListWithPaging(@Param("cri") Criteria cri, @Param("meeting_num") Long meeting_num); //글 목록 페이징

	public void insert(Free_BoardVO board);

	public Integer insertSelectKey(Free_BoardVO board);

	public Free_BoardVO read(Long free_board_num);  //글 상세보기   모임 번호 필요?

	public int delete(Long free_board_num);

	public int update(Free_BoardVO board);

	public int getTotalCount(@Param("cri") Criteria cri, @Param("meeting_num") Long meeting_num);  //글 목록 갯수 카운트

	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("free_board_num") Long bno, @Param("amount") int amount); //리플 갯수 새는 테이블이 없음
}
