package com.ync.project.front.service;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.MemberVO;
import com.ync.project.front.service.MemberService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Log4j
public class MemberServiceTests {


	@Autowired
	private PasswordEncoder pwencoder;

	@Autowired
	private DataSource ds;
	
	@Autowired
	private MemberService service;
	
//	@Test
//	public void testExist() {
//		log.info(service);
//		
//		assertNotNull(service);
//	}
	
	@Test
	public void testRegister() {
		
		MemberVO member = new MemberVO();
		
		member.setName("테스트");
		member.setUserid("user12");
		member.setUserpw("1234");
		member.setPhone("010-2020-2222");
		member.setEmail("user03@ync.ac.kr");
		member.setAdress("서울특별시");
		member.setHobby("등산");
		member.setProfile("");
		
		service.register(member);
		
		log.info("생성된 회원의 아이디" + member.getUserid());
	}

//	@Test
//	public void testList() {
//		log.info(service.getUserList());
//	}
//	
//	@Test
//	public void testGet() {
//		log.info(service.info("user01"));
//	}
	
//	@Test
//	public void testInsertMember() {
//
//		String sql = "insert into teamb_member(userid, userpw, name, phone, email, adress, hobby) values (?,?,?,?,?,?,?)";
//
//		for (int i = 6; i < 10; i++) {
//
//			Connection con = null;
//			PreparedStatement pstmt = null;
//
//			try {
//				con = ds.getConnection();
//				pstmt = con.prepareStatement(sql);
//
//				
//					pstmt.setString(1, "user" + i);
//					pstmt.setString(2, pwencoder.encode("pw"));
//					pstmt.setString(3, "일반사용자" + i);
//					pstmt.setString(4, "010-0000-000" + i);
//					pstmt.setString(5, "user" + i + "@ync.ac.kr");
//					pstmt.setString(6, "대구광역시");
//					pstmt.setString(7, "등산");
//
//				pstmt.executeUpdate();
//
//			} catch (Exception e) {
//				e.printStackTrace();
//			} finally {
//				if (pstmt != null) {
//					try {
//						pstmt.close();
//					} catch (Exception e) {
//					}
//				}
//				if (con != null) {
//					try {
//						con.close();
//					} catch (Exception e) {
//					}
//				}
//
//			}
//		} // end for
//	}

	
//	@Test
//	public void testUpdate() {
//		MemberVO member = service.info("user01");
//		
//		if (member == null) {
//			return;
//		}
//		
//		member.setUserid("user01");
//		member.setUserpw("1234");
//		member.setPhone("010-4944-6748");
//		member.setAdress("대구광역시");
//		member.setHobby("유흥");
//		member.setProfile("");
//		
//		log.info("MODIFY RESULT: " + service.updateUser(member));
//	}
	
}
