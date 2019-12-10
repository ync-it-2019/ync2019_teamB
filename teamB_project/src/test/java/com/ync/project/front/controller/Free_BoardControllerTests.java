package com.ync.project.front.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

// Test for Controller
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
// Java Config
// @ContextConfiguration(classes = {
// org.zerock.config.RootConfig.class,
// org.zerock.config.ServletConfig.class} )
@Log4j
public class Free_BoardControllerTests {

	//@Setter(onMethod_ = { @Autowired })
	@Autowired
	private WebApplicationContext ctx; // 객체를 주입받음

	private MockMvc mockMvc; // 필드 선언  
	
	// @Befores는 모든 test 전에 실행되는 method
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}

//	@Test
//	public void testList() throws Exception {
//
//		log.info(
//				mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}

	@Test
	public void testRegister() throws Exception {   //null오류, type과 keyword??

		String resultPage = mockMvc
				.perform(MockMvcRequestBuilders.post("/board/register")
				.param("userid", "user01")
				.param("free_board_num", "99")
				.param("meeting_num", "1")
				.param("title", "테스트 새글 제목")
//				.param("write_date", "2019-10-30")
				.param("contents", "테스트 새글 내용")
				.param("category", "자유")
				.param("files", "파일A")
				.param("views", "0"))
				.andReturn()
				.getModelAndView()
				.getViewName();    //에러?

		log.info("resultPage: " + resultPage);

	}

//	@Test
//	public void tetGet() throws Exception {  //되긴한데 값이 안 나옴?
//
//		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/front/meeting/board/get")
//				.param("meeting_num", "1")       //추가함
//				.param("free_board_num", "1"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}

//	@Test
//	public void testModify() throws Exception {  //에러
//
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/front/meeting/board/modify")
//						.param("free_board_num", "1")
//						.param("title", "수정된 테스트 새글 제목")
//						.param("contents", "수정된 테스트 새글 내용")
//						.param("userid", "user01"))
//						.andReturn()
//						.getModelAndView()
//						.getViewName();
//
//		log.info(resultPage);
//
//	}

//	@Test
//	public void testRemove() throws Exception {  //위에꺼 안되니 보류
//		// 삭제전 데이터베이스에 게시물 번호 확인할 것
//		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/front/meeting/board/get")
//				.param("free_board_num", "59"))
//				.andReturn()
//				.getModelAndView()
//				.getViewName();
//
//		log.info(resultPage);
//	}

//	@Test
//	public void testListPaging() throws Exception {
//		
//		
//		log.info(mockMvc.perform(
//				MockMvcRequestBuilders.get("/board/list")
//				.param("pageNum", "2")
//				.param("amount", "50"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}

}


