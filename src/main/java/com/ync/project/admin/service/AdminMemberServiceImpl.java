package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AdminMemberMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: AdminMemberServiceImpl.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 회원 ServiceImpl
  */
@Log4j
@Service
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	private AdminMemberMapper mapper;

	@Override
	public MemberVO read(String userid) {

		log.info("get......" + userid);

		return mapper.read(userid);

	}

	 @Override
	 public List<MemberVO> getList() {
	
		 log.info("getList..........");
		
		 return mapper.getList();
	 }

	@Override
	public List<MemberVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
}
