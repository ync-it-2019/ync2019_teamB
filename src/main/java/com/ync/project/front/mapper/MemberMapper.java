package com.ync.project.front.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ync.project.domain.MemberVO;

/**
  * @FileName	: MemberMapper.java
  * @Date		: 2019. 10. 16. 
  * @Author		: 정진우
  * @프로그램 설명 : 회원 정보 처리용 Mapper interface
  */
public interface MemberMapper {
	
	public List<MemberVO> getUserList();
//	
	public void insert(MemberVO member);
	
	public MemberVO read(String userid);
	
//	public boolean checkPw(@Param("userid") String userid, @Param("userpw") String userpw);
	
	public int update(MemberVO member);
	
	//회원탈퇴 기능 없음!
//	public int deleteUser(String userid);


}
