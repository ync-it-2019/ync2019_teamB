package com.ync.project.admin.mapper;

import java.util.List;

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
public class AdminManagerMapperTests {
	
	@Autowired
	private AdminManagerMapper mapper;
	
	MemberVO manager = new MemberVO();
	
	Criteria cri = new Criteria();
	
//	@Test
//	public void testAdminManagerInsertSelectKey() {
//	
//		manager.setUserid("test_admin");
//		manager.setUserpw("1234");
//		manager.setName("테스트 관리자");
//		manager.setPhone("010-1111-1111");
//		manager.setEmail("test@naver.com");
//		manager.setProfile("");
//		manager.setAdress(" ");
//		manager.setHobby(" ");
//		mapper.insertSelectKey(manager);
//
//		log.info(manager);
//	}
	
//	@Test
//	public void testAdminManagerRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		mapper.read("test_admin");
//
//		log.info(manager);
//
//	}

//	@Test
//	public void testAdminManagerDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete("test_admin"));
//	}

//	@Test
//	public void testAdminManagerUpdate() {
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
//		manager.setUserid("test_admin");
//		manager.setUserpw("1234");
//		manager.setName("관리자 계정 수정 테스트");
//		manager.setPhone("010-1111-1112");
//		manager.setEmail("ay9564@naver.com");
//		manager.setProfile("");
//		manager.setAdress(" ");
//		manager.setHobby(" ");
//		manager.setAuthList(list);
//		
//		int count = mapper.update(manager);
//		log.info("UPDATE COUNT: " + count);
//
//	}

	@Test
	public void testAdminManagerPaging() {
		
	    //10개씩 3페이지
	    cri.setPageNum(1);
	    cri.setAmount(10);


		List<MemberVO> list = mapper.getListWithPaging(cri);

		list.forEach(member -> log.info(member));

	}

}
