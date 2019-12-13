package com.ync.project.admin.mapper;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ync.project.domain.Criteria;
import com.ync.project.domain.EventVO;
import com.ync.project.domain.NoticeVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AdminNoticeMapperTests {
	
	@Autowired
	private AdminNoticeMapper mapper;
	
	Calendar cal = new GregorianCalendar();
	
	NoticeVO notice = new NoticeVO();	
	
	Criteria cri = new Criteria();
	
//	@Test
//	public void testAdminEventInsertSelectKey(){
//		
//		Date date = new Date(cal.getTimeInMillis());
//		
//		notice.setTitle("등록된 테스트 이벤트 게시글");
//		notice.setPopup("N");
//		notice.setWrite_date(date);
//		notice.setContents("이벤트 등록 테스트");
//		notice.setUserid("user01");
//		notice.setFiles("이미지 경로~~");
//		
//		mapper.insertSelectKey(notice);
//
//		log.info(notice);
//	}
	
//	@Test
//	public void testAdminNoticeRead() {
//
//		// 존재하는 게시물 번호로 테스트
//		notice = mapper.read(393L);
//
//		log.info(notice);
//
//	}

//	@Test
//	public void testAdminNoticeDelete() {
//
//		log.info("DELETE COUNT: " + mapper.delete(393L));
//	}

//	@Test
//	public void testAdminNoticeUpdate() {
//		
//		// 실행전 존재하는 번호인지 확인할것
//		notice.setNotice_num(387L);
//		notice.setTitle("수정된 제목");
//		notice.setContents("수정된 내용");
//		notice.setPopup("user00");
//		notice.setFiles("수정된 첨부 파일");
//		
//		int count = mapper.update(notice);
//		log.info("UPDATE COUNT: " + count);
//
//	}

//	@Test
//	public void testAdminNoticePaging() {
//		
//	    //10개씩 3페이지
//	    cri.setPageNum(1);
//	    cri.setAmount(10);
//
//
//		List<NoticeVO> list = mapper.getListWithPaging(cri);
//
//		list.forEach(notice -> log.info(notice));
//
//	}

}
