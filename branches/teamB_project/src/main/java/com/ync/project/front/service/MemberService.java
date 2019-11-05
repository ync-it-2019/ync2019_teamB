package com.ync.project.front.service;

import java.util.List;

import com.ync.project.domain.MemberVO;

 /**
  * @FileName	: MemberService.java
  * @Date		: 2019. 10. 30. 
  * @Author		: 조중현
  * @프로그램 설명 : 회원 서비스
  */
public interface MemberService {
	
//	public void register(MemberVO member);
	
	public MemberVO info(String userid);
	
//	public boolean modify(MemberVO member);

	public List<MemberVO> getUserList();
//	

//	
//	public int updateUser(MemberVO MemberVO);
}
