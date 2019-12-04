package com.ync.project.domain;


import java.util.List;

import lombok.Data;

@Data
/**

  * @FileName	: MeetingVO.java
  * @Date		: 2019. 10. 25. 
  * @Author		: 이주현
  * @프로그램 설명 : 모임 VO
  */
public class MeetingVO {
	
	private int meeting_Num;			//모임 번호
	
	private String meeting_Name;		//모임 이름
	private String introduce;			//모임 소개
	private String userid;				//모임장 아이디
	private String meeting_Profile;		//모임 이미지
	
	private String meeting_Adress;		//모임 활동지역
	private String meeting_Hobby;		//모임 관심사
	
}
