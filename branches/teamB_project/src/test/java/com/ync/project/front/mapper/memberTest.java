package com.ync.project.front.mapper;



import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })

@Log4j
public class memberTest {

	@Autowired
	
	private MemberMapper mapper;
	
//	@Test
//	public void testGetList() {
//		mapper.getUserList().forEach(member -> log.info(member));
//	}
	
//	@Test
//	public void testRege() {
//		
//		MemberVO member = new MemberVO();
//		member.setName("김상훈");
//		member.setUserid("user01");
//		member.setUserpw("1234");
//		member.setPhone("010-4944-6748");
//		member.setEmail("user01@ync.ac.kr");
//		member.setAdress("대구광역시");
//		member.setHobby("메이플");
//		
//		mapper.insert(member);
//		log.info(member);
//		
//	}
	
//	@Test
//	public void testRead() {
//		MemberVO member = mapper.read("user01");
//		
//		log.info(member);
//	}
	
//	@Test
//	public void testRead2() {
//		log.info(mapper.checkPw("user01", "1234"));
//		
//	}
	
	@Test
	public void testUpdate() {
		MemberVO member = new MemberVO();
		
		member.setUserid("user01");
		member.setUserpw("12345");
		member.setPhone("010-4944-6748");
		member.setAdress("대구광역시");
		member.setHobby("메이플스토리");
		member.setProfile("");
		
		mapper.update(member);
	}
}
