package com.ync.project.domain;


import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: EventVO.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 김상훈
  * @프로그램 설명 : 이벤트 VO
  */
@Data
public class EventVO {
	  private Long event_no;
	  private String title;
	  private Date event_start_date;
	  private Date event_end_date;
	  private String contents;
	  private Date write_Date;
	  private String image;
	  private String userid;
	  private String banner_image;
}
