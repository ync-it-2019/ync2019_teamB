<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>牛모임 :: 정모 게시글 보기</title>

<jsp:include page="/WEB-INF/views/front/include/cssLink.jsp" flush="true" />

<script type="text/javascript">
	function meetingJoin() {
		
		if(confirm("가입하시겠습니까?")) {
			alert("가입되었습니다.");
			document.getElementById('frm').submit();
		}
	}
</script>

<meta charset="UTF-8">
</head>
<body>

<!-- 소모임 페이지 상단 이미지 / 이름 -->
<Header class="meeting-page-name-space" style="background: url(/resources/upload/<c:out value="${getInfo.meeting_Profile}" />) no-repeat center; background-size: cover;">
	<div class="meeting-overlay py-5">
		<div class="container py-lg-5">
			<div class="text-center py-5">
        <div class="meeting-name-style">
					${getInfo.meeting_Name}
				</div>
			</div>
		</div>
	</div>
</Header>
<!-- //소모임 페이지 상단 이미지 / 이름 -->

<!-- 소모임 메뉴 -->
<section>
  <div class="container">
    <div id="meeting-menu">
      <ul class="menu info-row">
        <div class="meeting-menu1">
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./main?meeting_num=${getInfo.meeting_Num}">메인</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="./board/list?meeting_num=${getInfo.meeting_Num}">게시판</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href="./appointment/list?meeting_num=${getInfo.meeting_Num}">정모</a></li>
        </div>
        <div class="meeting-menu2">
          <li class="mr-3 ml-3 mt-3 mb-3"><a href=".">수정하기</a>
          </li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="#" onclick="meetingJoin();">가입하기</a></li>
        </div>
      </ul>
    </div>
  </div>
</section>
<!-- //소모임 메뉴 -->

<!-- 정모 게시글 제목 -->
<section>
  <div class="container">
    <h2 style="font-weight:bold; text-align:center;" class="my-3">대구 어디 소고기 먹으러</h2>
  </div>
</section>
<!-- //정모 게시글 제목 -->

<!-- 정모 게시글 -->
<section class="container">
	<div class="mx-3">
		<div style="display: flex; flex-wrap: wrap;">
			<div style="width: 25%;" class="ml-3">
				<!-- 정모 상세 -->
				<div class="mb-3">
					<table>
						<tr><td>2019/10/31 오후 3시 0분</td></tr>
						<tr><td>영남이공대학교 정문</td></tr>
						<tr><td>최대인원 30명</td></tr>
					</table>
				</div>
				<!-- //정모 상세 -->
				
				<!-- 정모 참여 인원 -->
				<div>
					참여 인원 : 5명
					<table class="table table-striped">
						<tr style="text-align: center;"><td>이주현</td></tr>
						<tr style="text-align: center;"><td>서영준</td></tr>
						<tr style="text-align: center;"><td>장윤석</td></tr>
						<tr style="text-align: center;"><td>조중현</td></tr>
						<tr style="text-align: center;"><td>김상훈</td></tr>
					</table>
				</div>
				<!-- //정모 참여 인원 -->
			</div>
			<!-- 정모 안내글 -->
			<div style="width: 65%; border-left: 1px solid #eee;" class="mx-3">
				<div class="mx-3">
					정모를 합니다.<br>
					꼭 참석해주세요.
				</div>
			</div>
      		<!-- //정모 안내글 -->
		</div>
	</div>
</section>
<!-- //정모 게시글 -->

<!-- 정모 참석 / 수정 / 삭제 버튼 -->
<section>
	<div class="container" style="text-align: center;">
		<button type="submit" id="submit" name="submit" class="btn btn-secondary mb-3" style="margin-left:100px;"><a href="#" style="color:white">정모 참가 신청하기</a></button>
		<button type="submit" id="submit" name="submit" class="btn btn-danger pull-right">삭제</button>
		<button type="submit" id="submit" name="submit" class="btn btn-primary pull-right mr-2">수정</button>
	</div>
</section>
<!-- //정모 참석 버튼 -->

<!-- 소모임 정모 게시판 리스트 -->
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
				<td class="board-number-css">5</td>
				<td class="board-category-css">일반</td>
				<td class="pl-4"><a href="./get.html" style="color:black">대구 어디 소고기 먹으러</a><a style="color:#5C88FD"> 1</a></td>
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
<!-- //소모임 정모 게시판 리스트 -->

<!-- 게시글 검색/글쓰기 -->
<section class="mx-5 px-5">
	<div class="input-group-css">		
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