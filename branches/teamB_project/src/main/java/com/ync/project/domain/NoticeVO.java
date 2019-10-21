package com.ync.project.domain;


import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: NoticeVO.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 김상훈
  * @프로그램 설명 : 공지사항 VO
  */
@Data
public class NoticeVO {
	private Long notice_no;  	//모임번호
	private String title;  	 	//제목
	private String contents; 	//내용
	private Date write_date;	//작성일자
	private String files;		//첨부파일
	private String userid;		//글쓴이 아이디
	private String popup;		//상단 고정 여부
}
