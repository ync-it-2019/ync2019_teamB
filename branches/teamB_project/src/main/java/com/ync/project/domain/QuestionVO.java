package com.ync.project.domain;


import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: QuestionVO.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 김상훈
  * @프로그램 설명 : 고객센터 VO
  */
@Data
public class QuestionVO {
	private Long question_num;	 //글번호
	private String userid;		 //글쓴이 아이디
	private String title;		 //제목
	private String contents;	 //내용
	private String files;		 //첨부파일
	private Date write_date;	 //작성일자
	private String answer_whether;//답변여부
}
