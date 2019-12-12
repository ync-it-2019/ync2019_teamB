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
  <!-- //$(document).ready를 사용하려면 필요함 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<meta charset="UTF-8">
</head>
  <script type="text/javascript">
	function meetingJoin() {
		
		if(confirm("가입하시겠습니까?")) {
			alert("가입되었습니다.");
			document.getElementById('frm').submit();
		}
	}
</script>

<!-- 링크 색깔 -->
<style type="text/css">
 a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}
 a:active {color: black; text-decoration: none;}
</style>
<!-- //링크 색깔 -->

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
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/main?meeting_num=${getInfo.meeting_Num}">메인</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href="/front/meeting/board/list?meeting_num=${getInfo.meeting_Num}&pageNum=1">게시판</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/appointment/list?meeting_num=${getInfo.meeting_Num}&pageNum=1">정모</a></li>
        </div>
        <div class="meeting-menu2">
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/meetingModify?meeting_num=${getInfo.meeting_Num}">수정하기</a>
          </li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="#" onclick="meetingJoin();">가입하기</a></li>
        </div>
      </ul>
    </div>
  </div>
</section>
<!-- //소모임 메뉴 -->

<!-- 소모임 게시글 -->
<section>
	<div class="container mb-5">
       	<!-- 게시글 제목 -->
		<tr>
			<h2 style="font-weight:bold">${param.title}</h2><br>
		</tr>
		<!-- //게시글 제목 -->
		
		<!-- 작성자 / 작성일 / 조회수 -->
		<div style="background:#C2CAC7" class="mb-4">
			<thead>
	            <tr>${board.userid} &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</tr>
	            <tr><fmt:formatDate pattern="yyyy-MM-dd" value="${board.write_Date}" /> &nbsp&nbsp&nbsp&nbsp</tr>
	            <tr>조회수 : ${board.views+1}</tr>	            
			</thead>
		</div>
		
		<!-- //작성자 / 작성일 / 조회수 -->
		
		<!-- 게시글 내용 -->
		<c:if test="${not empty board.files}">
			<div class="form-group">
				<a href="/resources/upload/${board.files}" target="_blank"><img src="/resources/upload/${board.files}"></a>
			</div>
		</c:if>
		<br>
			${board.contents}
    </div>
	<!-- //게시글 내용 -->
</section>
<!-- //소모임 게시글 -->

<%-- <!-- 게시글 댓글 -->
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
	</div>
</section>
<!-- //게시글 댓글 --> --%>

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
		<a href="/front/meeting/board/list?meeting_num=${param.meeting_num}&pageNum=1" style="color:white"><button type="submit" id="submit" name="submit" class="btn btn-secondary pull-left mb-3">목록</button></a>
		<sec:authentication property="principal" var="pinfo"/>
		<sec:authorize access="isAuthenticated()">
				<c:if test="${pinfo.username eq board.userid}">
					<button data-oper='remove' id="remove" name="remove" class="btn btn-danger pull-right">삭제</button>		
					<a href="/front/meeting/board/modify?meeting_num=${param.meeting_num}&free_board_num=${param.free_board_num}" style="color:white"><button data-oper='modify' class="btn btn-primary pull-right mr-2">수정</button></a>
				</c:if>
		</sec:authorize>
		
		<form id='operForm' action="/front/meeting/board/modify" method="get">
			<input type="hidden" id="token" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  			<input type='hidden' name='free_board_num' value='<c:out value="${board.free_board_num}"/>'>
			<input type='hidden' name ='meeting_num' value='<c:out value="${board.meeting_num}"/>'>
			<input type='hidden' name ='userid' value='<c:out value="${board.userid}"/>'>
			<input type='hidden' name ='category' value='<c:out value="${board.category}"/>'>
			<input type='hidden' name ='title' value='<c:out value="${board.title}"/>'>
			<input type='hidden' name ='contents' value='<c:out value="${board.contents}"/>'>
			<input type='hidden' name ='files' value='<c:out value="${board.files}"/>'>
			<input type='hidden' name ='write_Date' value='<c:out value="${board.write_Date}"/>'>
			<input type='hidden' name ='views' value='<c:out value="${board.views}"/>'>
			<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
			<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
  			<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
  			<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>  
		</form>
		
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
         	<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
         	<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
         	<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
         	<option value="G" <c:out value="${pageMaker.cri.type eq 'G'?'selected':''}"/>>카테고리</option>
      	 </select>
        	 <input type='text'   name='keyword'     value='<c:out value="${pageMaker.cri.keyword}"/>' placeholder="검색 내용을 입력하세요!" />
        	 <input type='hidden' name='pageNum'     value='<c:out value="1"/>' />
        	 <input type='hidden' name='meeting_num' value='<c:out value="${param.meeting_num}"/>' />
        	 <input type='hidden' name='amount'      value='<c:out value="${pageMaker.cri.amount}"/>' />
         <button class="btn btn-secondary" value=""><span class="fa fa-search"></span></button>
      </form>
      <!-- //검색 키워드 입력창 -->
      
      <!-- 글쓰기 버튼 -->
      <div class="input-group-btn" style="position: absolute; right: 0;">
         <a href="/front/meeting/board/write?meeting_num=${param.meeting_num}" style="color:white"><button class="btn btn-secondary" type="button" >글쓰기</button></a>
      </div>
      <!-- //글쓰기 버튼 -->
   </div>
</section>
<!-- //게시글 검색/글쓰기 -->

<!-- 페이지 버튼 -->
<section>
   <div class="text-center" style="margin-bottom:100px;" >
      <ul class="pagination justify-content-center">
         <c:if test="${pageMaker.prev}">
            <li class="paginate_button previous">
               <a class="page-link" href="/front/meeting/board/list?type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}&meeting_num=${param.meeting_num}&pageNum=${pageMaker.startPage -1}"> Previous </a>
            </li>
         </c:if>
         <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
            <li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
               <a class="page-link"  href="/front/meeting/board/list?type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}&meeting_num=${param.meeting_num}&pageNum=${num}">${num}</a>
            </li>
         </c:forEach>
      <c:if test="${pageMaker.next}">
         <li class="paginate_button next">
        	 <a class="page-link" href="/front/meeting/board/list?type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}&meeting_num=${param.meeting_num}&pageNum=${pageMaker.endPage +1 }"> Next </a>
         </li>
      </c:if>
      </ul>
   </div>
   <!-- Form 시작 -->
         <form id='actionForm' action="/front/meeting/board/list" method='get'>
        	<input type='hidden' name='type'      value='<c:out value="${pageMaker.cri.type}"/>'>
            <input type='hidden' name='keyword'   value='<c:out value="${pageMaker.cri.keyword}"/>'>
            <input type='hidden' name='pageNum'   value='${pageMaker.cri.pageNum}'>
            <input type='hidden' name='amount'    value='${pageMaker.cri.amount}'>
         </form>
   <!-- Form 끝 -->      
</section>
<!-- //페이지 버튼 -->

<!-- 모임 가입 히든 폼 -->
<form id="frm" action="/front/meeting/main?meeting_num=${getInfo.meeting_Num}" method="post" enctype="multipart/form-data">
	<input type="hidden" name="userid" value="<sec:authentication property="principal.username"/>">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type="hidden" name="meeting_num" value="${getInfo.meeting_Num}">
</form>
<!-- //모임 가입 히든 폼 -->

</body>
<script type="text/javascript">
	$(document).ready(function() {
		var result = '<c:out value="${result}"/>';

		var operForm = $("#operForm");
		
		$("button[data-oper='remove']").on("click", function(e){
			
			if (confirm('정말 삭제 하시겠습니까?')) {
				operForm.attr('method', 'post');
				operForm.attr("action","/front/meeting/board/remove").submit();
			}
		});
		
		$("button[data-oper='list']").on("click", function(e){
			$("input[id='token']").remove();
			$("input[name='event_num']").remove();
			$("input[name='ck_code']").remove();
			operForm.attr("action","/front/meeting/board/list").submit();
		});
		
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