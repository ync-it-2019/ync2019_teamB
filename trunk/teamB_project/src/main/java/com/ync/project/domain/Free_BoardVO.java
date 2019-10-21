package com.ync.project.domain;

import java.util.Date;

public class Free_BoardVO {
	
	private int meeting_Num;		//모임 번호
	private int free_Board_Num;		//게시글 번호
	
	private String title;			//게시글 제목
	private String category;		//글 분류
	private String contents;		//게시글 내용
	private String files;			//파일
	
	private Date write_Date;		//게시글 작성일
	private int views;				//조회수
	private String userid;			//작성자 아이디
	
}
