<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>牛모임 :: 모임 게시판 리스트</title>

<jsp:include page="/WEB-INF/views/front/include/cssLink.jsp" flush="true" />

<meta charset="UTF-8">
</head>
<body>

<jsp:include page="/WEB-INF/views/front/include/meetingBoardHead.jsp" flush="true" />

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
	        <tr>
				<td class="board-number-css">10</td>
				<td class="board-category-css">일반</td>
				<td class="pl-4"><a href="./get.html" style="color:black">자유 게시글입니다</a><a style="color:#5C88FD"> 2</a></td>
				<td class="board-writer-css">이주현</td>
				<td class="board-date-css">2019. 10. 01</td>
				<td class="board-hits-css">0</td>
	        </tr>
	        <tr>
				<td class="board-number-css">9</td>
				<td class="board-category-css">공지사항</td>
				<td class="pl-4">일반글</td>
				<td class="board-writer-css">이주현</td>
				<td class="board-date-css">2019. 10. 01</td>
				<td class="board-hits-css">0</td>
	        </tr>
	        <tr>
				<td class="board-number-css">8</td>
				<td class="board-category-css">일반</td>
				<td class="pl-4">일반글</td>
				<td class="board-writer-css">이주현</td>
				<td class="board-date-css">2019. 10. 01</td>
				<td class="board-hits-css">0</td>
	        </tr>
	        <tr>
				<td class="board-number-css">7</td>
				<td class="board-category-css">일반</td>
				<td class="pl-4">일반글</td>
				<td class="board-writer-css">이주현</td>
				<td class="board-date-css">2019. 10. 01</td>
				<td class="board-hits-css">0</td>
	        </tr>
	        <tr>
				<td class="board-number-css">6</td>
				<td class="board-category-css">일반</td>
				<td class="pl-4">일반글</td>
				<td class="board-writer-css">이주현</td>
				<td class="board-date-css">2019. 10. 01</td>
				<td class="board-hits-css">0</td>
	        </tr>
	        <tr>
				<td class="board-number-css">5</td>
				<td class="board-category-css">일반</td>
				<td class="pl-4">일반글</td>
				<td class="board-writer-css">이주현</td>
				<td class="board-date-css">2019. 10. 01</td>
				<td class="board-hits-css">0</td>
	        </tr>
	        <tr>
				<td class="board-number-css">4</td>
				<td class="board-category-css">일반</td>
				<td class="pl-4">일반글</td>
				<td class="board-writer-css">이주현</td>
				<td class="board-date-css">2019. 10. 01</td>
				<td class="board-hits-css">0</td>
	        </tr>
	        <tr>
				<td class="board-number-css">3</td>
				<td class="board-category-css">일반</td>
				<td class="pl-4">일반글</td>
				<td class="board-writer-css">이주현</td>
				<td class="board-date-css">2019. 10. 01</td>
				<td class="board-hits-css">0</td>
	        </tr>
	        <tr>
				<td class="board-number-css">2</td>
				<td class="board-category-css">일반</td>
				<td class="pl-4">일반글</td>
				<td class="board-writer-css">이주현</td>
				<td class="board-date-css">2019. 10. 01</td>
				<td class="board-hits-css">0</td>
	        </tr>
	        <tr>
				<td class="board-number-css">1</td>
				<td class="board-category-css">일반</td>
				<td class="pl-4">일반글</td>
				<td class="board-writer-css">이주현</td>
				<td class="board-date-css">2019. 10. 01</td>
				<td class="board-hits-css">0</td>
	        </tr>
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