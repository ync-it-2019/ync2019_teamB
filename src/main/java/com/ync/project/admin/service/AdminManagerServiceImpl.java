package com.ync.project.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.admin.mapper.AdminManagerMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: AdminManagerServiceImpl.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 관리자 계정 ServiceImpl
  */
@Log4j
@Service
public class AdminManagerServiceImpl implements AdminManagerService {

	@Autowired
	private AdminManagerMapper mapper;

	@Override
	public MemberVO read(String userid) {

		log.info("get......" + userid);

		return mapper.read(userid);

	}

	@Override
	public List<MemberVO> getListWithPaging(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public boolean modify(MemberVO member) {
		
		log.info("modify......." + member);
		
		return mapper.update(member) == 1;
	}
	
	@Override
	public boolean remove(String userid) {
		
		log.info("remove......" + userid);
		
		return mapper.delete(userid) == 1;
	}
	
	@Override
	public void register(MemberVO member) {
		
		log.info("register......." + member);
		
		mapper.insertSelectKey(member);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		
		return mapper.getTotalCount(cri);
	}
}
