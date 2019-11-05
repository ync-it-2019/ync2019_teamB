package com.ync.project.admin.mapper;

import java.util.List;

import com.ync.project.domain.MemberVO;


/**
 * @FileName	: MemberMapper.java
 * @Date		: 2019. 11. 05. 
 * @Author		: 서영준
 * @프로그램 설명 : 회원 관리 Mapper
 */
public interface MemberMapper {
	
	public List<MemberVO> getList();
	
}
