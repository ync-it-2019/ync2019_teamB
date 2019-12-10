package com.ync.project.domain;

import java.util.Date;

import lombok.Data;

 /**
  * @FileName	: Meeting_MemberVO.java
  * @Date		: 2019. 10. 25. 
  * @Author		: 이주현
  * @프로그램 설명 : 모임 회원VO
  */

@Data
public class Meeting_MemberVO {
	
	
	private String join_code;		//모임 맴버 코드
	private int meeting_num;		//모임 번호
	
	private String userid;			//회원 아이디
	private Date join_date;			//가입일

}
