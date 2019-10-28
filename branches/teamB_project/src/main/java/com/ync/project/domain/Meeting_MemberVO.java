package com.ync.project.domain;

import java.util.Date;

 /**
  * @FileName	: Meeting_MemberVO.java
  * @Date		: 2019. 10. 25. 
  * @Author		: 이주현
  * @프로그램 설명 : 모임 회원VO
  */
public class Meeting_MemberVO {
	
	private int meeting_Num;		//모임 번호
	
	private String userid;			//회원 아이디
	private Date join_Date;			//가입일
	private Date fire_whether;		//강퇴 여부
}
