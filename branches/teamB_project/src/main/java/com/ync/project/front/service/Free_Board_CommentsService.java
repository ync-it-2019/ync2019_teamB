package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.Free_Board_CommentsVO;


public interface Free_Board_CommentsService {

	public int register(Free_Board_CommentsVO vo);

	public Free_Board_CommentsVO get(Long free_comments_num);

	public int modify(Free_Board_CommentsVO vo);

	public int remove(Long free_comments_num);

	public List<Free_Board_CommentsVO> getList(Criteria cri, Long free_board_num);
	
//	public ReplyPageDTO getListPage(Criteria cri, Long free_board_num);

}
