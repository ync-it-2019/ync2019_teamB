package com.ync.project.domain;

import java.sql.Date;

import lombok.Data;

/**
  * @FileName	: Meeting_Member_InfoVO.java
  * @Date		: 2019. 12. 10. 
  * @Author		: 서영준
  * @프로그램 설명 : 모임 회원VO
  */

@Data
public class Meeting_Member_InfoVO {
	
	private Date join_date;
	private String name;
	private String userid;
	
}
