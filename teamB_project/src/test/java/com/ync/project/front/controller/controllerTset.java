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

@WebAppConfiguration

@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
public class controllerTset {
	
	@Autowired
	
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
//	@Test
//	public void tetGet() throws Exception {
//
//		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/front/myPage/info")
//				.param("userid", "user01"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}
	
//	@Test
//	public void testUpdate() throws Exception {
//		
//		String resultPage = mockMvc
//				.perform(MockMvcRequestBuilders.post("/front/myPage/modify")
//				.param("userid", "user01")
//				.param("userpw", "12345")
//				.param("phone", "010-4944-6748")
//				.param("adress", "대구 광역시")
//				.param("hobby", "게임")
//				.param("profile", ""))
//			.andReturn().getModelAndView().getViewName();
//		
//		
//		log.info(resultPage);
//	}
	
//	@Test
//	public void testregister() throws Exception {
//		
//		String resultPage = mockMvc
//				.perform(MockMvcRequestBuilders.post("/register")
//				.param("userid", "user10")
//				.param("userpw", "123410")
//				.param("phone", "010-")
//				.param("adress", "대구 광역시")
//				.param("email", "user10@ync.ac.kr")
//				.param("name", "테스트")
//				.param("hobby", "게임")
//				.param("profile", ""))
//			.andReturn().getModelAndView().getViewName();
//		
//		
//		log.info(resultPage);
//	}
	
//	@Test
//	public void testList() throws Exception {
//
//		log.info(
//				mockMvc.perform(MockMvcRequestBuilders.get("/front/myPage/info"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}
}
