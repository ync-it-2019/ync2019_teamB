package com.ync.project.admin.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.admin.mapper.AdminManagerMapper;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: AdminManagerServiceTests.java
  * @Date		: 2019. 11. 11. 
  * @Author		: 서영준
  * @프로그램 설명 : 관리자용 이벤트 Service Test
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AdminManagerServiceTests {

	@Autowired
	private AdminManagerService service;
	
	@Autowired
	private AdminManagerMapper mapper;
	
	SimpleDateFormat transFormat  = new SimpleDateFormat("yyyyy-MM-dd HH:mm:ss");
	
	String from1 = "2013-04-08 10:10:10";
	
	String from2 = "2013-04-08 10:10:10";
	
	String from3 = "2013-04-08 10:10:10";
	
	Calendar cal = new GregorianCalendar();
	
//	@Test
//	public void testAdminEventInsertSelectKey(){
//		
//		MemberVO manager = new MemberVO();
//		
//		AuthVO auth = new AuthVO();
//		
//		auth.setAuth("ROLE_ADMIN");
//		auth.setUserid("test_admin");
//		
//		List<AuthVO> list = new ArrayList<AuthVO>();
//		
//		list.add(auth);
//		
//		// 실행전 존재하는 번호인지 확인할것
//		manager.setUserid("test_admin1");
//		manager.setUserpw("1234");
//		manager.setName("관리자 계정 수정 테스트");
//		manager.setPhone("010-1111-1112");
//		manager.setEmail("ay9564@naver.com");
//		manager.setProfile("");
//		manager.setAdress(" ");
//		manager.setHobby(" ");
//		manager.setAuthList(list);
//		
//		log.info("생성된 게시물의 번호 : " + manager.getUserid());
//
//		service.register(manager);
//
//		log.info(manager);
//	}

	
//	@Test
//	public void testAdminEventGetList() {
//
//		service.getListWithPaging(new Criteria(1, 10)).forEach(manager -> log.info(manager));
//	}
	
//	@Test
//	public void testAdminManagerGet() {
//
//		log.info(service.read("admin01"));
//	}
	
	
//	@Test
//	public void testAdminEventDelete() {
//		
//		//게시물 번호의 존재 여부를 확인하고 테스트 할 것
//		log.info("REMOVE RESULT: " + service.remove("test_admin1"));
//		
//	}

}
