package com.ync.project.domain;


import java.sql.Date;

import lombok.Data;

 /**
  * @FileName	: EventVO.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 김상훈
  * @프로그램 설명 : 이벤트 VO
  */
@Data
public class EventVO {
	  private Long event_num;		//글번호
	  private String title;			//제목
	  private Date event_start_date;//이벤트 시작일
	  private Date event_end_date;  //이벤트 종료일
	  private String contents;		//내용
	  private Date write_date;		//작성일자
	  private String image;			//사진
	  private String userid;		//글쓴이 아이디
	  private String banner_image;  //배너 이미지
	  private String event_progress;  //배너 이미지
}
