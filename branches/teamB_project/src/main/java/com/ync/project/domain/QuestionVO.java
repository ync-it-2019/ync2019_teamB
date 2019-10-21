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
	private Long question_no;
	private String userid;
	private String title;
	private String contents;
	private String files;
	private Date write_date;
	private String answer_whther;
}
