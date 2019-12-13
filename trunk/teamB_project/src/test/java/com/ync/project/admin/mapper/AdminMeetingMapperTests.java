package com.ync.project.admin.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingMemberCriteria;
import com.ync.project.domain.MeetingVO;
import com.ync.project.domain.Meeting_Member_InfoVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AdminMeetingMapperTests {
	
	@Autowired
	private AdminMeetingMapper mapper;
	
	MeetingVO meeting = new MeetingVO();
	
	Criteria cri = new Criteria();
	
//	@Test
//	public void testAdminMeetingRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		meeting = mapper.read(1L);
//
//		log.info(meeting);
//
//	}

//	@Test
//	public void testAdminMeetingPaging() {
//	    //10개씩 3페이지
//	    cri.setPageNum(2);
//	    cri.setAmount(10);
//
//
//		List<MeetingVO> list = mapper.getListWithPaging(cri);
//
//		list.forEach(meeting -> log.info(meeting));
//
//	}
	
	@Test
	public void testAdminMemberInfoPaging() {
		//기존의 Criteria도 사용해야 하기 때문에 새로운 Criteria를 만들었습니다.
		MeetingMemberCriteria mcri = new MeetingMemberCriteria();
		
	    //10개씩 3페이지
	    mcri.setMemberpageNum(1);
	    mcri.setMemberamount(5);


		List<Meeting_Member_InfoVO> list = mapper.getMemberInfo(mcri, 1L);

		list.forEach(meeting -> log.info(meeting));

	}

}
