package com.ync.project.front.mapper;

import java.util.List;

//import org.apache.ibatis.annotations.Param;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_BoardVO;

public interface Free_BoardMapper {
	
	// @Select("SELECT * FROM tbl_board WHERE bno > 0")
	public List<Free_BoardVO> getList();

	public List<Free_BoardVO> getListWithPaging(Criteria cri); //글 목록 페이징

	public void insert(Free_BoardVO board);

	public Integer insertSelectKey(Free_BoardVO board);

	public Free_BoardVO read(Long free_board_num);

	public int delete(Long free_board_num);

	public int update(Free_BoardVO board);

	public int getTotalCount(Criteria cri);  //글 목록 갯수 카운트?

	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
//	public void updateReplyCnt(@Param("free_board_num") Long bno, @Param("amount") int amount); //리플 갯수 새는 테이블이 없음
}
