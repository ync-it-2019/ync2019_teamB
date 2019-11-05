package com.ync.project.service;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.MemberService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
@Log4j
public class MemberServiceTests {

	@Autowired
	private MemberService service;
	
//	@Test
//	public void testExist() {
//		log.info(service);
//		
//		assertNotNull(service);
//	}
	
//	@Test
//	public void testRegister() {
//		
//		MemberVO member = new MemberVO();
//		
//		member.setName("이주현");
//		member.setUserid("user03");
//		member.setUserpw("1234");
//		member.setPhone("010-2020-2222");
//		member.setEmail("user03@ync.ac.kr");
//		member.setAdress("서울특별시");
//		member.setHobby("등산");
//		
//		service.register(member);
//		
//		log.info("생성된 회원의 아이디" + member.getUserid());
//	}

	@Test
	public void testList() {
		log.info(service.getUserList());
	}
	
	@Test
	public void testGet() {
		log.info(service.info("user01"));
	}
	
//	@Test
//	public void testUpdate() {
//		MemberVO member = service.get("service");
//		
//		if (member == null) {
//			return;
//		}
//		
//		member.setUserid("user01");
//		member.setUserpw("12345");
//		member.setPhone("010-1111-2222");
//		member.setAdress("대구 광역시");
//		member.setHobby("슈우미");
//		member.setProfile("샤신01");
//		
//		log.info("MODIFY RESULT: " + service.modify(member));
//	}
	
}
