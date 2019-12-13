package com.ync.project.admin.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.admin.mapper.AdminMeetingMapper;
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
public class AdminMeetingServiceTests {

	@Autowired
	private AdminMeetingService service;
	
	@Autowired
	private AdminMeetingMapper mapper;

	
//	@Test
//	public void testAdminEventGetList() {
//
//		service.getListWithPaging(new Criteria(1, 10)).forEach(meeting -> log.info(meeting));
//	}
	
//	@Test
//	public void testAdminManagerGet() {
//
//		log.info(service.read(59L));
//	}
	
//	@Test
//	public void testAdminMemberInfoPaging() {
//		//기존의 Criteria도 사용해야 하기 때문에 새로운 Criteria를 만들었습니다.
//		MeetingMemberCriteria mcri = new MeetingMemberCriteria();
//		
//	    //10개씩 3페이지
//	    mcri.setMemberpageNum(1);
//	    mcri.setMemberamount(5);
//
//		List<Meeting_Member_InfoVO> list = service.getMemberInfo(mcri, 1L);
//
//		list.forEach(meeting -> log.info(meeting));
//
//	}

}
