package com.ync.project.domain;

import java.sql.Date;

import lombok.Data;

/**
  * @FileName	: AppointmentVO.java
  * @Date		: 2019. 10. 25. 
  * @Author		: 이주현
  * @프로그램 설명 : 정모 VO
  */

@Data
public class AppointmentVO {

	private Long appointment_num;		//정모 번호
	private Long meeting_num;			//모임 번호
	
	private Date appointment_date;		//정모 날짜
	private String appointment_place;	//정모 장소
	private Long max_people;			//정모 최대 인원
	
	private String title;				//정모 제목
	private String contents;			//글 내용
	private String userid;				//작성자 아이디
	private Date write_date;			//작성일
	
	
	
	
	
	
}
