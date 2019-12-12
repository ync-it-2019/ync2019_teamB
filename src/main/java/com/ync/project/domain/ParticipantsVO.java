package com.ync.project.domain;

import lombok.Data;

/**
  * @FileName	: ParticipantsVO.java
  * @Date		: 2019. 10. 25. 
  * @Author		: 이주현
  * @프로그램 설명 : 정모 참가자 VO
  */

@Data
public class ParticipantsVO {
	
	private Long meeting_num;		//모임 번호
	private Long appointment_num;	//정모 번호
	private Long participants_num;	//참가자 번호
	
	private String userid;			//참가자 아이디
}
