package com.ync.project.domain;

import java.util.Date;

public class Free_Board_CommentsVO {
	
	private int meeting_Num;		//모임 번호
	private int free_Board_Num;		//게시글 번호
	private int free_Comments_Num;	//댓글 번호
	
	private String contents;		//게시글 내용
	
	private Date write_Date;		//게시글 작성일
	private String userid;			//작성자 아이디
}
