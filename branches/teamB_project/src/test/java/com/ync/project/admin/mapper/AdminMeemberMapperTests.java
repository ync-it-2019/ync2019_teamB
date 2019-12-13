package com.ync.project.admin.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AdminMeemberMapperTests {
	
	@Autowired
	private AdminMemberMapper mapper;
	
	MemberVO member = new MemberVO();	
	
	Criteria cri = new Criteria();
	
	@Test
	public void testAdminMemberRead() {

		// 존재하는 게시물 번호로 테스트
		member = mapper.read("uuuu2");

		log.info(member);

	}

//	@Test
//	public void testAdminMemberPaging() {
//		
//	    //10개씩 3페이지
//	    cri.setPageNum(1);
//	    cri.setAmount(10);
//
//
//		List<MemberVO> list = mapper.getListWithPaging(cri);
//
//		list.forEach(notice -> log.info(notice));
//
//	}

}
