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

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

 /**
  * @FileName	: NoticeControllerTests.java
  * @Date		: 2019. 11. 5. 
  * @Author		: 김상훈
  * @프로그램 설명 : 공지사항 controller test
  */
@RunWith(SpringJUnit4ClassRunner.class)

@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
      "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })

@Log4j
public class NoticeControllerTests {

   @Autowired
   private WebApplicationContext ctx; // 객체를 주입받음

   private MockMvc mockMvc; // 필드 선언

   // @Befores는모든 test 전에 실행되는 method
   @Before
   public void setup() {
      this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
   }

   @Test
   public void testList() throws Exception {

      log.info(
            mockMvc.perform(MockMvcRequestBuilders.get("/front/notice/list"))
            .andReturn()
            .getModelAndView()
            .getModelMap());
   }

   @Test
   public void testRead() throws Exception {

      log.info(mockMvc.perform(MockMvcRequestBuilders
            .get("/front/notice/get")
            .param("notice_num", "1"))
            .andReturn()
            .getModelAndView()
            .getModelMap());
   }
   
   	@Test
 	public void testListPaging() throws Exception {

  		log.info(mockMvc.perform(
  				MockMvcRequestBuilders.get("/front/notice/list")
  				.param("pageNum", "1")
  				.param("amount", "10"))
  				.andReturn()
  				.getModelAndView()
  				.getModelMap());
 }

}
