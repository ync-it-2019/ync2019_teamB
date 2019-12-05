<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!-- 
 /**
  * @FileName	: MeetingController.java
  * @Date		: 2019. 11. 24. 
  * @Author		: 장윤석
  * @프로그램 설명 : 소모임 게시판 리스트
  */
 -->
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
  <script type="application/x-javascript">
    addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
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
	        
	        <c:forEach items="${list}" var="board">
	        <tr>
				<td class="board-number-css"><c:out value="${board.free_board_num}"/></td>
				<td class="board-category-css"><c:out value="${board.category}" /></td>
				<td><a class="move" onClick="location.href='/front/meeting/board/get?meeting_num=${param.meeting_num}&free_board_num=<c:out value="${board.free_board_num}" />'">
					<c:out value="${board.title}" /></a>
				</td>
					<!--  <a style="color:#5C88FD">  댓글 수    </a> -->
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
  		<form id='searchForm' action="/front/meeting/board/list" method='get'>
		<select name='type'>
			<option value="">카테고리</option>
			<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
			<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
			<option value="W" <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>작성자</option>
		</select>
			<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>' />
			<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' />
			<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
			<button value=""><span class="fa fa-search"></span></button>
		</form>
		<!-- //검색 키워드 입력창 -->
		
		<!-- 글쓰기 버튼 -->
		<div class="input-group-btn" style="position: absolute; right: 0;">
			<a href="/front/meeting/board/write" style="color:white"><button class="btn btn-secondary" type="button" >글쓰기</button></a>
		</div>
		<!-- //글쓰기 버튼 -->
	</div>
</section>
<!-- //게시글 검색/글쓰기 -->

<!-- 페이지 버튼 -->
<section>
	<div class="text-center" style="margin-bottom:100px;">

		<ul class="pagination justify-content-center">
			<c:if test="${pageMaker.prev}">
				<li class="paginate_button previous">
					<a href="/front/meeting/board/list?page=${pageMaker.startPage -1}">Previous</a>
				</li>
			</c:if>

			<c:forEach var="num" begin="${pageMaker.startPage}"	end="${pageMaker.endPage}">
				<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
					<a href="/front/meeting/board/list?meeting_num=${param.meeting_num}&pageNum=${num}">${num}</a>
				</li>
			</c:forEach>

		<c:if test="${pageMaker.next}">
			<li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
		</c:if>
		</ul>
	</div>
	<!-- Form 시작 -->
			<form id='actionForm' action="/front/meeting/board/list" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
 				<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'>
				<input type='hidden' name='keyword'	value='<c:out value="${ pageMaker.cri.keyword }"/>'>
			</form>
	<!-- Form 끝 -->
				
</section>
<!-- //페이지 버튼 -->

</body>
<script type="text/javascript">
	$(document).ready(function() {
		var result = '<c:out value="${result}"/>';
		
		checkModal(result);

		history.replaceState({}, null, null);
		
		$("#regBtn").on("click", function() {
			self.location = "/board/register";
		});
		
		var actionForm = $("#actionForm");

		// 페이지 번호 클릭 이벤트
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			 console.log('click'); //
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		// 상세보기 클릭 이벤트
		$(".move").on("click",function(e) {
			e.preventDefault();
			actionForm.append("<input type='hidden' name='free_board_num' value='" + $(this).attr("href") + "'>");
			actionForm.attr("action", "/front/meeting/board/get");
			actionForm.submit();
		});
		
		// 검색 버튼 클릭 이벤트
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click",	function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				return false;
			}

			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}
			
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			searchForm.submit();
		});
	});
</script>

</html>