package com.ync.project.admin.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.admin.mapper.AdminMemberMapper;
import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingMemberCriteria;
import com.ync.project.domain.Meeting_Member_InfoVO;

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
public class AdminMemberServiceTests {

	@Autowired
	private AdminMemberService service;
	
	@Autowired
	private AdminMemberMapper mapper;

	
//	@Test
//	public void testAdminEventGetList() {
//
//		service.getListWithPaging(new Criteria(1, 10)).forEach(member -> log.info(member));
//	}
	
//	@Test
//	public void testAdminManagerGet() {
//
//		log.info(service.read("uuuu2"));
//	}

}
