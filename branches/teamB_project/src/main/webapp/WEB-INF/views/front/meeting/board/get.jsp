<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!-- 
 /**
  * @FileName	: MeetingController.java
  * @Date		: 2019. 11. 27. 
  * @Author		: 장윤석
  * @프로그램 설명 : 소모임 게시판 상세보기
  */
 -->
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>牛모임 :: 모임 게시글 보기</title>

<jsp:include page="/WEB-INF/views/front/include/cssLink.jsp" flush="true" />

<meta charset="UTF-8">
</head>
<body>

<jsp:include page="/WEB-INF/views/front/include/meetingBoardHead.jsp" flush="true" />

<!-- 소모임 게시글 -->
<section>
	<div class="container mb-5">
       	<!-- 게시글 제목 -->
		<tr>
			<h2 style="font-weight:bold">${board.title}</h2><br>
		</tr>
		<!-- //게시글 제목 -->
		
		<!-- 작성자 / 작성일 / 조회수 -->
		<div style="background:#C2CAC7" class="mb-4">
			<thead>
	            <tr>${board.userid} &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</tr>
	            <tr><fmt:formatDate pattern="yyyy-MM-dd" value="${board.write_Date}" /> &nbsp&nbsp&nbsp&nbsp</tr>
	            <tr>조회수 : ${board.views}</tr>	            
			</thead>
		</div>
		
		<!-- //작성자 / 작성일 / 조회수 -->
		
		<!-- 게시글 내용 -->
		<img src="/resources/img/hello.png"><br><br>
			${board.contents}
        </div>
		<!-- //게시글 내용 -->
</section>
<!-- //소모임 게시글 -->

<!-- 게시글 댓글 -->
<section>
	<div class="container">
		<div style="background:#C6D0C7; padding:2px">
			<tr>장윤석</tr>
          	<!--class="btn btn-danger" 때문에 버튼이 빨간색-->
          	<tr><button type="button" class="btn btn-danger btn-sm" style="float:right; font-size:8px; margin-left:5px; margin-right:3px">x</button></tr>
          	<tr><a style="float:right; color:gray">5분전</a></tr>
        </div>
        <div style="margin:15px 5px">
          	<tr>알겠습니다 조장</tr>
        </div>
        <div style="background:#C6D0C7; padding:2px">
			<tr>장윤석</tr>
          	<!--class="btn btn-danger" 때문에 버튼이 빨간색-->
          	<tr><button type="button" class="btn btn-danger btn-sm" style="float:right; font-size:8px; margin-left:5px; margin-right:3px">x</button></tr>
          	<tr><a style="float:right; color:gray">5분전</a></tr>
        </div>
        <div style="margin:15px 5px">
          	<tr>알겠습니다 조장</tr>
        </div>
	</div>
</section>
<!-- //게시글 댓글 -->

<!-- 댓글 작성 -->
<section>
	<div class="container">
		<div style="border: 1px solid #C6D0C7; margin-bottom:10px">
			<table style=""class="table">
				<tr>
				    <th>댓글<br>쓰기</th>
				    <td><textarea cols="110" placeholder="내용을 입력하세요." name="content"></textarea>
				        <button type="submit" id="submit" name="submit" class="btn btn-secondary pull-right my-2">댓글등록</button>
				    </td>
				</tr>
			</table>
		</div>
	</div>
</section>
<!-- //댓글 작성 -->

<!-- 목록 / 수정 / 삭제 버튼 -->
<section>
	<div class="container">
		<button type="submit" id="submit" name="submit" class="btn btn-secondary pull-left mb-3"><a href="meeting_board.html" style="color:white">목록</a></button>
		<button type="submit" id="submit" name="submit" class="btn btn-danger pull-right">삭제</button>
		<button type="submit" id="submit" name="submit" class="btn btn-primary pull-right mr-2">수정</button>
	</div>
</section>
<!-- //목록 / 수정 / 삭제 버튼 -->

<!-- 소모임 게시판 리스트 -->
<section class="container">
	<div class="container meeting-board-css">
		<table class="table-board table-hover" >
			<thead>
				<tr>
					<th class="board-number-css">글번호</th>
		            <th class="board-category-css">분류</th>
		            <th class="board-title-css pl-4">제목</th>
		            <th class="board-writer-css">작성자</th>
		            <th class="board-date-css">날짜</th>
		            <th class="board-hits-css">조회수</th>
         			</tr>
       		</thead>
	        
	        <c:forEach items="${list}" var="board">
	        <tr>
				<td class="board-number-css"><c:out value="${board.free_board_num}"/></td>
				<td class="board-category-css"><c:out value="${board.category}" /></td>
				<td class="pl-4"><a href="./get" style="color:black"><c:out value="${board.title}" /></a>
					<!--  <a style="color:#5C88FD">  댓글 수    </a> -->
				</td>
				<td class="board-writer-css"><c:out value="${board.userid}" /></td>
				<td><fmt:formatDate  value="${board.write_Date}" /></td>
				<td class="board-hits-css"><c:out value="${board.views}" /></td>
	        </tr>
			</c:forEach>

		</table>

		<hr>
	</div>
</section>
<!-- //소모임 게시판 리스트 -->

<!-- 게시글 검색/글쓰기 -->
<section class="mx-5 px-5">
	<div class="input-group-css">
		<!-- 분류 선택 -->
		<select>
			<option value="">카테고리</option>
			<option>일반</option>
			<option>공지사항</option>
			<option>정모 후기</option>
			<option>건의</option>
		</select>
		<!-- //분류 선택 -->
		
		<!-- 검색 키워드 입력창 -->
		<input type="text" class="form-control" placeholder="검색 키워드를 입력하세요!" style="width:20%">
		<span class="input-group-btn">
			<button class="btn btn-secondary" type="button" >찾기</button>
		</span>
		<!-- //검색 키워드 입력창 -->
		
		<!-- 글쓰기 버튼 -->
		<div class="input-group-btn" style="position: absolute; right: 0;">
			<a href="./write" style="color:white"><button class="btn btn-secondary" type="button" >글쓰기</button></a>
		</div>
		<!-- //글쓰기 버튼 -->
	</div>
</section>
<!-- //게시글 검색/글쓰기 -->

<!-- 페이지 버튼 -->
<section>
	<div class="text-center" style="margin-bottom:100px;">
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#"> < </a></li>
			<li class="page-item active"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#"> > </a></li>
		</ul>
	</div>
</section>
<!-- //페이지 버튼 -->
</body>
</html>