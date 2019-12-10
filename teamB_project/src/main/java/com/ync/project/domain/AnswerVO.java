package com.ync.project.domain;

import java.sql.Date;

import lombok.Data;

/**
  * @FileName	: AnswerVO.java
  * @Date		: 2019. 12. 09. 
  * @Author		: 서영준
  * @프로그램 설명 : 1:1문의 답변 VO
  */
@Data
public class AnswerVO {
	private Long question_num;	  //문의 번호
	private String answer;		  //답변내용
	private Date answer_date;	  //답변날짜
	private String answer_writer; //답변자 아이디
}
