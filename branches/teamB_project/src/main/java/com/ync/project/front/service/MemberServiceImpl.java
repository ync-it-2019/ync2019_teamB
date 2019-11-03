package com.ync.project.front.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ync.project.domain.MemberVO;
import com.ync.project.front.mapper.MemberMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;


	@Override
	public void register(MemberVO member) {
		log.info("register...." + member);
		
		mapper.insert(member);
		
	}


	@Override
	public MemberVO info(String userid) {
		// TODO Auto-generated method stub
		
		log.info("get....." + userid);
		return mapper.read(userid);
	}


	@Override
	public boolean modify(MemberVO member) {
		// TODO Auto-generated method stub
		
		log.info("modify....." + member);

		return mapper.updateUser(member) == 1;
	}


	@Override
	public List<MemberVO> getUserList() {
		
		log.info("get..." );
		return mapper.getUserList();
	}


}
