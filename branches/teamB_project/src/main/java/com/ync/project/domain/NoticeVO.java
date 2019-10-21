package com.ync.project.domain;


import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: NoticeVO.java
  * @Date		: 2019. 10. 21. 
  * @Author		: 김상훈
  * @프로그램 설명 :
  */
@Data
public class NoticeVO {
	private Long notice_no;
	private String title;
	private String contents;
	private Date write_date;
	private String files;
	private String userid;
	private String popup;
}
