package com.ync.project.admin.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.MemberVO;

import lombok.extern.log4j.Log4j;

@Log4j
public class MemberMapperTests {
	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void testGetList() {
//		//람다식 코드
//		mapper.getList().forEach((board) -> {
//		log.info("=================");
//		log.info(board);
//		});
	}
}
