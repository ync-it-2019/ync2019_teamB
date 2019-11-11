package com.ync.project.domain;

import java.util.Date;
import lombok.Data;

 /**
  * @FileName	: Free_BoardVO.java
  * @Date		: 2019. 10. 25. 
  * @Author		: 이주현
  * @프로그램 설명 : 게시판VO
  */

 /**
  * @FileName	: Free_BoardVO.java
  * @Date		: 2019. 11. 11. 
  * @Author		: 장윤석
  * @프로그램 설명 : 게시판VO
  * 
  * @Data추가, meeting_Num->meeting_num,  free_Board_Num -> free_board_num
  */
@Data
public class Free_BoardVO {
	
	private int meeting_num;		//모임 번호
	private int free_board_num;		//게시글 번호
	
	private String title;			//게시글 제목
	private String category;		//글 분류
	private String contents;		//게시글 내용
	private String files;			//파일
	
	private Date write_Date;		//게시글 작성일
	private int views;				//조회수
	private String userid;			//작성자 아이디
	
}
