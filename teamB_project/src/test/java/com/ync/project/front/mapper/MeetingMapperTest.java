package com.ync.project.front.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MeetingVO;

import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: MeetingMapperTest.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 조중현
  * @프로그램 설명 :
  */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml" })

@Log4j
public class MeetingMapperTest {

	@Autowired
	
	private MeetingMapper mapper;
	
	//모임 생성
	 /**
	  * @Method 설명 : 모임생성테스트 메소드
	  * @Method Name : testinsert
	  * @Date : 2019. 11. 27.
	  * @작성자 : 조중현
	  */
//	@Test
//	public void testinsert() {
//		MeetingVO meeting = new MeetingVO();
//		meeting.setIntroduce("모임소개글");
//		meeting.setMeeting_Adress("대구 광역시");
//		meeting.setMeeting_Hobby("만화/애니");
//		meeting.setMeeting_Name("상훈이와 미미쨩");
//		meeting.setMeeting_Profile("");
//		meeting.setUserid("user01");
//		
//		
//		mapper.insert(meeting);
//	}
	//모임 가입
//	@Test
//	public void testinsert2() {
//		Meeting_MemberVO mMember = new Meeting_MemberVO();
//		mMember.setMeeting_num(2);
//		mMember.setUserid("user02");
//		
//		
//		mapper.insertMember(mMember);
//	}
	
	// 리스트
	 /**
	  * @Method 설명 : 모임 목록 테스트
	  * @Method Name : testGetList
	  * @Date : 2019. 11. 27.
	  * @작성자 : 조중현
	  */
//	@Test
//	public void testGetList() {
//		
//		mapper.getList().forEach((board) -> {
//			log.info("==================");
//			log.info(board);
//			});
//	}
	
	// 페이징
	 /**
	  * @Method 설명 : 모임 목록 페이징 테스트
	  * @Method Name : testPaging
	  * @Date : 2019. 11. 27.
	  * @작성자 : 조중현
	  */
//	@Test
//	public void testPaging() {
//
//		Criteria cri = new Criteria();
//		
//	    //10개씩 3페이지 
//	    cri.setPageNum(1);
//	    cri.setAmount(10);
//
//
//		List<MeetingVO> list = mapper.getListWithPaging(cri);
//
//		list.forEach(board -> log.info(board));
//
//	}
	
	 /**
	  * @Method 설명 : 모임 상세보기
	  * @Method Name : testRead
	  * @Date : 2019. 11. 27.
	  * @작성자 : 조중현
	  */
//	@Test
//	public void testRead() {
//		MeetingVO member = mapper.read(1L);
//		
//		log.info(member);
//	}
	
	
	//내가 가입한 모임
	@Test
	public void testPaging2() {

		Criteria cri = new Criteria();
		
	    //10개씩 3페이지 
	    cri.setPageNum(1);
	    cri.setAmount(10);

		List<MeetingVO> list = mapper.getMyList(cri, "user02");

		list.forEach(board -> log.info(board));

	}
	
//	@Test
//	  public void testTotal() {
//
//	    Criteria cri = new Criteria();
//	    cri.setKeyword("상");
//	    cri.setType("N");
//
//	    int total = mapper.getTotalCount(cri);
//
//	    log.info("total:" + total);
//	  }
	
	
//	@Test
//	public void testMyTotal() {
//		
//		Criteria cri = new Criteria();
//		cri.setKeyword("상");
//		cri.setType("N");
//
//		int total = mapper.getMyTotalCount("user02");
//
//		log.info("total:" + total);
//	}

	@Test
	public void testmembertotal() {
		mapper.MeetingMemberCount().forEach((board) -> {
			log.info("==================");
			log.info(board);
		});
	}
	
	
}
