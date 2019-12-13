<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>牛모임 :: 정모 게시판 리스트</title>

<jsp:include page="/WEB-INF/views/front/include/cssLink.jsp" flush="true" />

<script type="text/javascript">
	function meetingJoin() {
		
		if(confirm("가입하시겠습니까?")) {
			alert("가입되었습니다.");
			document.getElementById('frm').submit();
		}
	}
	
	function appointmentWriteBtn() {
		
		var checkLeader = document.getElementById("meetingLeaderCheck");
		var chackUserid = document.getElementById("useridCheck");
		
		//모임장인지 아닌지를 확인principal.username == 
		if(checkLeader.value == chackUserid.value) {		//모임장일 경우 작성 페이지로 이동
			location.href = "./write?meeting_num=${getInfo.meeting_Num}";
		} else {	//모임장이 아닐 경우
			alert("정모는 모임장만 만들 수 있습니다.");
		}${meetingLeaderCheck.userid}
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
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/main?meeting_num=${getInfo.meeting_Num}">메인</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3"><a href="/front/meeting/board/list?meeting_num=${getInfo.meeting_Num}">게시판</a></li>
          <li class="mr-3 ml-3 mt-3 mb-3 active"><a href="/front/meeting/appointment/list?meeting_num=${getInfo.meeting_Num}">정모</a></li>
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

<!-- 소모임 정모 게시판 리스트 -->
<section class="container">
	<div class="container meeting-board-css">
		<table class="table-board table-hover" >
			<thead>
				<tr>
					<th class="board-number-css">글번호</th>
					<th class="board-title-css pl-4">제목</th>
					<th class="board-date-css">작성일</th>
					<th class="board-appointment-css">정모장소</th>
					<th class="board-date-css">정모일</th>
				</tr>
			</thead>
			<c:forEach items="${getAppointmentList}" var="appointmentList" varStatus="status">
				<tr>
					<td class="board-number-css"><c:out value="${appointmentList.appointment_num}" /></td>
					<td class="pl-4"><a href="./get?meeting_num=${getInfo.meeting_Num}&appointment_num=<c:out value='${appointmentList.appointment_num}' />" style="color:black"><c:out value="${appointmentList.title}" /></a></td>
					<td class="board-date-css"><fmt:formatDate pattern="yyyy-MM-dd" value="${appointmentList.write_date}" /></td>
					<td class="board-writer-css"><c:out value="${appointmentList.appointment_place}" /></td>
					<td class="board-date-css"><fmt:formatDate pattern="yyyy-MM-dd" value="${appointmentList.appointment_date}" /></td>
				</tr>
			</c:forEach>
		</table>
		<hr>
	</div>
</section>
<!-- //소모임 정모 게시판 리스트 -->

<!-- 게시글 검색/글쓰기 -->
<section class="mx-5 px-5">
	<div class="input-group-css">
		<!-- 글쓰기 버튼 -->
		<div class="input-group-btn" style="position: absolute; right: 0;">
			<a href="#" onclick="appointmentWriteBtn();" style="color:white"><button class="btn btn-secondary" type="button" >정모 만들기</button></a>
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
               <a class="page-link" href="/front/meeting/appointment/list?type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}&meeting_num=${param.meeting_num}&pageNum=${pageMaker.startPage -1}"> Previous </a>
            </li>
         </c:if>
         <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
            <li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
               <a class="page-link"  href="/front/meeting/appointment/list?type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}&meeting_num=${param.meeting_num}&pageNum=${num}">${num}</a>
            </li>
         </c:forEach>
      <c:if test="${pageMaker.next}">
         <li class="paginate_button next">
        	 <a class="page-link" href="/front/meeting/appointment/list?type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}&meeting_num=${param.meeting_num}&pageNum=${pageMaker.endPage +1 }"> Next </a>
         </li>
      </c:if>
      </ul>
   </div>
   <!-- Form 시작 -->
         <form id='actionForm' action="/front/meeting/appointment/list" method='get'>
        	<input type='hidden' name='type'      value='<c:out value="${pageMaker.cri.type}"/>'>
            <input type='hidden' name='keyword'   value='<c:out value="${pageMaker.cri.keyword}"/>'>
            <input type='hidden' name='pageNum'   value='${pageMaker.cri.pageNum}'>
            <input type='hidden' name='amount'    value='${pageMaker.cri.amount}'>
         </form>
   <!-- Form 끝 -->
	<sec:authorize access="isAuthenticated()">
		<input type='hidden' id='meetingLeaderCheck' value='${meetingLeaderCheck.userid}'>
		<input type='hidden' id='useridCheck' value="<sec:authentication property="principal.username"/>">
	</sec:authorize>
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
</html>