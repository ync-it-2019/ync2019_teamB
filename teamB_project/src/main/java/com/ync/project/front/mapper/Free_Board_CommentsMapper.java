package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_Board_CommentsVO;

public interface Free_Board_CommentsMapper {     
	//bno->free_Board_Num, rno->free_Comments_Num, reply->contents

	public int insert(Free_Board_CommentsVO vo);

	public Free_Board_CommentsVO read(Long free_board_num);

	public int delete(Long free_board_num);

	public int update(Free_Board_CommentsVO contents);

	public List<Free_Board_CommentsVO> getListWithPaging(@Param("cri") Criteria cri,
											@Param("free_Board_Num") Long free_Board_Num);

	public int getCountByBno(Long free_Board_Num);
}
